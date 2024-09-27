CREATE TABLE `u_role_tmpl` (
   `id` int NOT NULL AUTO_INCREMENT,
   `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
   `rkey` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
   `app_ids` varchar(498) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
   `deleted` bit(1) NOT NULL,
   `create_by` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
   `date_created` datetime(6) NOT NULL,
   `last_updated` datetime(6) NOT NULL,
   `update_by` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
   `version` int NOT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `u_role_tmpl` (`id`, `name`, `rkey`, `app_ids`, `deleted`, `create_by`, `date_created`, `last_updated`, `update_by`, `version`) VALUES ('1','充电桩-管理员','R_ADM','2,3,9,15',0,'1:admin','2022-08-11 12:11:57.490000','2024-05-27 15:12:20.127000','68:jinxiufeng','52');
INSERT INTO `u_role_tmpl` (`id`, `name`, `rkey`, `app_ids`, `deleted`, `create_by`, `date_created`, `last_updated`, `update_by`, `version`) VALUES ('2','充电桩-合作商','R_AGT','3',0,'1:admin','2022-08-11 18:41:45.884000','2024-07-18 16:23:52.612000','68:jinxiufeng','78');
INSERT INTO `u_role_tmpl` (`id`, `name`, `rkey`, `app_ids`, `deleted`, `create_by`, `date_created`, `last_updated`, `update_by`, `version`) VALUES ('3','充电桩-合伙人','R_PMC','3',0,'1:admin','2022-08-11 18:47:48.202000','2023-08-08 19:11:58.207000','SYSTEM','22');
INSERT INTO `u_role_tmpl` (`id`, `name`, `rkey`, `app_ids`, `deleted`, `create_by`, `date_created`, `last_updated`, `update_by`, `version`) VALUES ('4','充电桩-运维账号','R_OPT','3',0,'1:admin','2022-09-20 12:05:48.968000','2023-12-12 11:59:22.586000','68:jinxiufeng','17');
INSERT INTO `u_role_tmpl` (`id`, `name`, `rkey`, `app_ids`, `deleted`, `create_by`, `date_created`, `last_updated`, `update_by`, `version`) VALUES ('5','合伙人','R_PMC','',1,'1:zhouxu','2023-05-18 21:02:56.939000','2023-05-18 21:02:56.939000','1:zhouxu','0');
INSERT INTO `u_role_tmpl` (`id`, `name`, `rkey`, `app_ids`, `deleted`, `create_by`, `date_created`, `last_updated`, `update_by`, `version`) VALUES ('6','合作商（有活动权限）','R_AGT_HD','',1,'68:jinxiufeng','2023-05-23 15:24:44.905000','2023-05-23 15:24:44.905000','68:jinxiufeng','0');
INSERT INTO `u_role_tmpl` (`id`, `name`, `rkey`, `app_ids`, `deleted`, `create_by`, `date_created`, `last_updated`, `update_by`, `version`) VALUES ('7','物联网平台-管理员','R_EDEVICE_ADM','14',0,'66:yuxiang','2023-08-02 10:24:00.794000','2024-02-26 14:06:52.572000','66:yuxiang','4');
INSERT INTO `u_role_tmpl` (`id`, `name`, `rkey`, `app_ids`, `deleted`, `create_by`, `date_created`, `last_updated`, `update_by`, `version`) VALUES ('8','物联网平台-维保公司','R_EDEVICE_MCMP','14',0,'66:yuxiang','2023-08-02 10:24:26.782000','2023-11-10 16:34:51.018000','77:muhaitang','2');
INSERT INTO `u_role_tmpl` (`id`, `name`, `rkey`, `app_ids`, `deleted`, `create_by`, `date_created`, `last_updated`, `update_by`, `version`) VALUES ('9','物联网平台-维保人员','R_EDEVICE_MPERS','14',0,'66:yuxiang','2023-08-02 10:24:54.762000','2023-11-10 16:34:56.723000','77:muhaitang','2');
INSERT INTO `u_role_tmpl` (`id`, `name`, `rkey`, `app_ids`, `deleted`, `create_by`, `date_created`, `last_updated`, `update_by`, `version`) VALUES ('10','社区物联网合作商','R_AGT_G','22,23,24,25,27,28,29,30,32',0,'86:liruan','2024-05-06 11:44:34.711000','2024-09-26 16:38:42.404000','86:liruan','32');
INSERT INTO `u_role_tmpl` (`id`, `name`, `rkey`, `app_ids`, `deleted`, `create_by`, `date_created`, `last_updated`, `update_by`, `version`) VALUES ('11','社区物联网运营商','R_ADM_G','2,22,23,24,25,26,27,28,29,30,32',0,'86:liruan','2024-05-06 11:47:27.532000','2024-09-20 15:00:02.045000','87:tanglm','27');
INSERT INTO `u_role_tmpl` (`id`, `name`, `rkey`, `app_ids`, `deleted`, `create_by`, `date_created`, `last_updated`, `update_by`, `version`) VALUES ('12','换电柜-管理员','R_BATTERY_ADM','33',0,'84:guolei','2024-08-23 20:18:19.577000','2024-08-23 20:20:06.296000','84:guolei','1');
INSERT INTO `u_role_tmpl` (`id`, `name`, `rkey`, `app_ids`, `deleted`, `create_by`, `date_created`, `last_updated`, `update_by`, `version`) VALUES ('13','换电柜-合作商','R_BATTERY_AGT','33',0,'84:guolei','2024-08-23 20:18:56.438000','2024-08-23 20:20:28.790000','84:guolei','1');
INSERT INTO `u_role_tmpl` (`id`, `name`, `rkey`, `app_ids`, `deleted`, `create_by`, `date_created`, `last_updated`, `update_by`, `version`) VALUES ('14','换电柜-合伙人','R_BATTERY_PMC','',0,'84:guolei','2024-08-23 20:19:19.015000','2024-08-23 20:19:19.015000','84:guolei','0');
INSERT INTO `u_role_tmpl` (`id`, `name`, `rkey`, `app_ids`, `deleted`, `create_by`, `date_created`, `last_updated`, `update_by`, `version`) VALUES ('15','换电柜-运维人员','R_BATTERY_OPT','',0,'84:guolei','2024-08-23 20:19:36.023000','2024-08-23 20:19:36.023000','84:guolei','0');
INSERT INTO `u_role_tmpl` (`id`, `name`, `rkey`, `app_ids`, `deleted`, `create_by`, `date_created`, `last_updated`, `update_by`, `version`) VALUES ('16','社区物联网合作商基础权限','R_ADN','22,24,30,23',1,'86:liruan','2024-09-26 16:41:00.860000','2024-09-26 16:49:34.676000','86:liruan','6');
