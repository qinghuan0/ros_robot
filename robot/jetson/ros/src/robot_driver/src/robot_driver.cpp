#include "../include/robot_driver/robot_driver.h"

//构造：变量初始化
RobotDriver::RobotDriver()::msg_seq_(0),start_flag_(true),state_(waitingForHand1),first_init_(false){}
//析构函数
RobotDriver::~RobotDriver()
{
    boost::mutex::scoped_lock look(mutex_);//局部锁---上锁，在析构函数执行完后会自动释放
    recv_flag = false
    //串口对象的处理
    if(sp_) //sp(serial port)用户串口
    {
        sp_->cancel();
        sp_->close();
        sp_.reset();
    }
    //IO服务的停止处理
    io_service_.stop();
    io_service_.reset();
}

/*dynamic_reconfig的回调函数，用来在不停止ROS node的情况下进行对参数的修改*/
void RobotDriver::dynamic_reconfig_callback(robot_driver::PID_reconfigConfig &config,uint32_t level)
{
    if(first_init_)
    {
        ROS_INFO("Set PID P:[%d],I:[%d],D:[%d]",config.kp,config.ki,config.kd);
        SetPID(config.kp,config.ki,config.kd);
        ros::Duration(0.02).sleep();
    }
    else
    {
        first_init_=true;
        ROS_INFO("Set PID P:[%d],I:[%d],D:[%d]",kp_,ki_,kd_);
    }
}

void RobotDriver::main_loop()
{
    uint8_t stop_buf[13];
    ros::NodeHandle nh_;
    ros::NodeHandle nh_p_("~");

    //从配置文件中获取机器人参数
    nh_p_.param<std::string>("port_name",port_name_,std::string("/dev/ttyUSB0"));
    nh_p_.param<std::string>("odom_frame",odom_frame_,std::string("odom"));
    nh_p_.param<std::string>("base_frame",base_frame_,std::string("base_footprint"));
    nh_p_.param<std::string>("imu_frame",imu_frame_,std::string("base_imu_link"));

    nh_p_.param<int>("baud_rate",baud_rate_,115200);
    nh_p_.param<int>("control_rate",control_rate_,50);

    bh_p_.param<double>("linear_correction_factor",linear_correction_factor_,1.0);
    nh_p_.param<double>("angular_correction_factor",angular_correction_factor_,1.0);

    nh_p_.param<bool>("publish_odom_transform",publish_odom_transform_,true);
    nh_p_.param<int>("kp",kp_,300);
    nh_p_.param<int>("ki",ki_,0);
    nh_p_.param<int>("Kd",kd_,200);

    odom_list_.resize(6,0.0);
    imu_list_.resize(9,0.0);
    wheelspeedSet_list_.resize(4,0);
    wheelspeedGet_list_.resize(4,0);
    /*初始化机器人硬件串口以及publisher发布器和定时器与动态配置参数服务器等回调函数，然后进入ros::spin()循环*/
    if(initRobot()) //初始化串口，设置串口的参数
    {
        odom_pub_    = nh_.advertise<nav_msgs::Odometry>("odom",10);
        battery_pub_ = nh_.advertise<std_msgs::Float32>("voltage",1);
        imu_pub_     = nh_.advertise<sensor_msgs::Imu>("imu",10);
        avel_pub_    = nh_.advertise<std_msgs::Int32>("robot/avel",10);
        bvel_pub_    = nh_.advertise<std_msgs::Int32>("robot/bvel",10);
        cvel_pub_    = nh_.advertise<std_msgs::Int32>("robot/cvel",10);
        dvel_pub_    = nh_.advertise<std_msgs::Int32>("robot/dvel",10);

        aset_pub_    = nh_.advertise<std_msgs::Int32>("robot/aset",10);
        bset_pub_    = nh_.advertise<std_msgs::Int32>("robot/bset",10);
        cset_pub_    = nh_.advertise<std_msgs::Int32>("robot/cset",10);
        dset_pub_    = nh_.advertise<std_msgs::Int32>("robot/dset",10);

        cmd_sub_     = nh_.subscribe<geometry_msgs::Twist>("cmd_vel",10,&RobotDriver::cmd_vel_callback,this);
    }

}