
"use strict";

let ListWorlds = require('./ListWorlds.js')
let ListMaps = require('./ListMaps.js')
let SetKeyword = require('./SetKeyword.js')
let SaveAnnotationsData = require('./SaveAnnotationsData.js')
let PublishMap = require('./PublishMap.js')
let GetAnnotations = require('./GetAnnotations.js')
let DeleteAnnotations = require('./DeleteAnnotations.js')
let SaveMap = require('./SaveMap.js')
let SetRelationship = require('./SetRelationship.js')
let EditAnnotationsData = require('./EditAnnotationsData.js')
let PubAnnotationsData = require('./PubAnnotationsData.js')
let DeleteMap = require('./DeleteMap.js')
let GetAnnotationsData = require('./GetAnnotationsData.js')
let YAMLImport = require('./YAMLImport.js')
let YAMLExport = require('./YAMLExport.js')
let ResetDatabase = require('./ResetDatabase.js')
let RenameMap = require('./RenameMap.js')

module.exports = {
  ListWorlds: ListWorlds,
  ListMaps: ListMaps,
  SetKeyword: SetKeyword,
  SaveAnnotationsData: SaveAnnotationsData,
  PublishMap: PublishMap,
  GetAnnotations: GetAnnotations,
  DeleteAnnotations: DeleteAnnotations,
  SaveMap: SaveMap,
  SetRelationship: SetRelationship,
  EditAnnotationsData: EditAnnotationsData,
  PubAnnotationsData: PubAnnotationsData,
  DeleteMap: DeleteMap,
  GetAnnotationsData: GetAnnotationsData,
  YAMLImport: YAMLImport,
  YAMLExport: YAMLExport,
  ResetDatabase: ResetDatabase,
  RenameMap: RenameMap,
};
