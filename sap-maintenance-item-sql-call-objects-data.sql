CREATE TABLE `sap_maintenance_item_call_objects_data`
(
  `MaintenancePlan`                   varchar(12) NOT NULL,
  `MaintenanceItem`                   varchar(16) NOT NULL,
  `MaintenancePlanCallNumber`         int(32) NOT NULL,
  `MaintenanceOrder`                  varchar(12) DEFAULT NULL,
  `MaintenanceNotification`           varchar(12) DEFAULT NULL,
  `ServiceOrder`                      varchar(10) DEFAULT NULL,
  `MaintCallHorizonIsNotReached`      tinyint(1) DEFAULT NULL,
  `SchedulingStatus`                  varchar(1) DEFAULT NULL,
  `PlannedStartDate`                  varchar(80) DEFAULT NULL,
    PRIMARY KEY (`MaintenancePlan`, `MaintenanceItem`, `MaintenancePlanCallNumber`),
    CONSTRAINT `MaintenanceItemCallObjectsData_fk` FOREIGN KEY (`MaintenancePlan`, `MaintenanceItem`) REFERENCES `sap_maintenance_item_item_data` (`MaintenancePlan`, `MaintenanceItem`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
