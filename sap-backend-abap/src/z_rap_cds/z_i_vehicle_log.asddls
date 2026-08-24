@AbapCatalog.sqlViewName: 'ZIVEHLOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vue CDS - Suivi Kilométrique'
define view Z_I_VEHICLE_LOG as select from zvehicle_log {
    key log_id as LogId,
    vehicle_id as VehicleId,
    rec_date as RecDate,
    mileage as Mileage,
    driver_id as DriverId
}
