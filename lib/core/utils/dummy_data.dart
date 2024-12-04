import 'package:audio_diaries_flutter/screens/diary/data/option.dart';
import 'package:audio_diaries_flutter/screens/home/data/incentive.dart';
import 'package:audio_diaries_flutter/theme/custom_colors.dart';
import 'package:flutter/material.dart';

import '../../screens/diary/data/diary.dart';
import '../../screens/diary/data/prompt.dart';
import '../../screens/diary/data/tag.dart';
import 'types.dart';

final List<DiaryModel> dummyDiaries = [];

List<DiaryModel> exampleDiaries = [];

final Map<int, List<PromptModel>> fakePrompts = {
  // Day One
  0: [],
};

final List<Option> multipleOptions = [
  Option(id: 0, option: "At home or in my dorm room"),
  Option(id: 1, option: "In someone else's home or dorm room"),
  Option(id: 2, option: "In a car, bus, or other form of transportation"),
  Option(id: 3, option: "Outside"),
  Option(id: 4, option: "In a public place(eg., library, restaurant airport)"),
];

final List<Option> radioOptions = [
  Option(id: 0, option: "0"),
  Option(id: 1, option: "1"),
  Option(id: 2, option: "2"),
  Option(id: 3, option: "3"),
  Option(id: 4, option: "4 or more"),
];

List<Tag> fakeTags = const [
  Tag(text: "60 seconds", type: TagType.time),
  Tag(text: "Multiple questions", type: TagType.questions),
];

const Tag missedTag = Tag(text: "Missed", type: TagType.time);
const Tag onGoingTag = Tag(text: "Ongoing", type: TagType.time);
const Tag doneTag = Tag(text: "Done", type: TagType.time);

const TimeOfDay fixedTime = TimeOfDay(hour: 18, minute: 0);

final List<Incentive> dummyIncentives = [
  Incentive(amount: 5, bonus: 10, currency: '\$', threshold: 50),
  Incentive(amount: 20, bonus: 100, currency: '\$', threshold: 80),
];

final List<Color> studyColors = [
  CustomColors.productNormal,
  CustomColors.teal,
  CustomColors.purpleNormal,
]; 

final List<int> participantCodes = [
  0001,
  0002,
  0003,
  0004,
  0005,
  0006,
  0007,
  0008,
  0009,
  0010,
  0011,
  0012,
  0013,
  0014,
  0015,
  0016,
  0017,
  0018,
  0019,
  0020,
  0021,
  0022,
  0023,
  0024,
  0025,
  0026,
  0027,
  0028,
  0029,
  0030,
  0031,
  0032,
  0033,
  0034,
  0035,
  0036,
  0037,
  0038,
  0039,
  0040,
  0041,
  0042,
  0043,
  0044,
  0045,
  0046,
  0047,
  0048,
  0049,
  0050,
  0051,
  0052,
  0053,
  0054,
  0055,
  0056,
  0057,
  0058,
  0059,
  0060,
  0061,
  0062,
  0063,
  0064,
  0065,
  0066,
  0067,
  0068,
  0069,
  0070,
  0071,
  0072,
  0073,
  0074,
  0075,
  0076,
  0077,
  0078,
  0079,
  0080,
  0081,
  0082,
  0083,
  0084,
  0085,
  0086,
  0087,
  0088,
  0089,
  0090,
  0091,
  0092,
  0093,
  0094,
  0095,
  0096,
  0097,
  0098,
  0099,
  0100,
  1010,
  1011,
  1012,
  1013,
  1014,
  1015,
  1016,
  1017,
  1018,
  1019,
  1020,
  1021,
  1022,
  1023,
  1024,
  1025,
  1026,
  1027,
  1028,
  1029,
  1030,
  1031,
  1032,
  1033,
  1034,
  1035,
  1036,
  1037,
  1038,
  1039,
  1040,
  1041,
  1042,
  1043,
  1044,
  1045,
  1046,
  1047,
  1048,
  1049,
  1050,
  1051,
  1052,
  1053,
  1054,
  1055,
  1056,
  1057,
  1058,
  1059,
  1060,
  1061,
  1062,
  1063,
  1064,
  1065,
  1066,
  1067,
  1068,
  1069,
  1070,
  1071,
  1072,
  1073,
  1074,
  1075,
  1076,
  1077,
  1078,
  1079,
  1080,
  1081,
  1082,
  1083,
  1084,
  1085,
  1086,
  1087,
  1088,
  1089,
  1090,
  1091,
  1092,
  1093,
  1094,
  1095,
  1096,
  1097,
  1098,
  1099,
  1100,
  1101,
  1102,
  1103,
  1104,
  1105,
  1106,
  1107,
  1108,
  1109,
  1110,
  1111,
  1112,
  1113,
  1114,
  1115,
  1116,
  1117,
  1118,
  1119,
  1120,
  1121,
  1122,
  1123,
  1124,
  1125,
  1126,
  1127,
  1128,
  1129,
  1130,
  1131,
  1132,
  1133,
  1134,
  1135,
  1136,
  1137,
  1138,
  1139,
  1140,
  1141,
  1142,
  1143,
  1144,
  1145,
  1146,
  1147,
  1148,
  1149,
  1150,
  1151,
  1152,
  1153,
  1154,
  1155,
  1156,
  1157,
  1158,
  1159,
  1160,
  1161,
  1162,
  1163,
  1164,
  1165,
  1166,
  1167,
  1168,
  1169,
  1170,
  1171,
  1172,
  1173,
  1174,
  1175,
  1176,
  1177,
  1178,
  1179,
  1180,
  1181,
  1182,
  1183,
  1184,
  1185,
  1186,
  1187,
  1188,
  1189,
  1190,
  1191,
  1192,
  1193,
  1194,
  1195,
  1196,
  1197,
  1198,
  1199,
  1200,
  1201,
  1202,
  1203,
  1204,
  1205,
  1206,
  1207,
  1208,
  1209,
  1210,
  1211,
  1212,
  1213,
  1214,
  1215,
  1216,
  1217,
  1218,
  1219,
  1220,
  1221,
  1222,
  1223,
  1224,
  1225,
  1226,
  1227,
  1228,
  1229,
  1230,
  1231,
  1232,
  1233,
  1234,
  1235,
  1236,
  1237,
  1238,
  1239,
  1240,
  1241,
  1242,
  1243,
  1244,
  1245,
  1246,
  1247,
  1248,
  1249,
  1250,
  1251,
  1252,
  1253,
  1254,
  1255,
  1256,
  1257,
  1258,
];
