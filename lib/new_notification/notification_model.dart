import 'package:isar/isar.dart';
import 'package:flutter/material.dart';

//part 'notification_model.g.dart';

@Collection()
class NotificationModel {
  Id id = Isar.autoIncrement;

  late String notificationId;

  late String notificationType;
  late String notificationTitle;
  late DateTime notificationDate;
  late TimeOfDay notificationTime;

  bool isLifeTime = false;
  bool isActive = false;
  String? customMessage;
  String? notificationSound;
  bool vibrationEnabled = true;
  late DateTime createdDate;
  late DateTime updatedDate;
  int? recurrenceDetailId;

  String? iconPath;
  String? imagePath;

  NotificationModel(
      {required this.notificationId,
      required this.notificationType,
      required this.notificationTitle,
      required this.notificationDate,
      required this.notificationTime,
      required this.createdDate,
      required this.updatedDate,
      this.isLifeTime = false,
      this.isActive = false,
      this.customMessage,
      this.notificationSound,
      this.vibrationEnabled = true,
      this.recurrenceDetailId,
      this.iconPath,
      this.imagePath});


}
