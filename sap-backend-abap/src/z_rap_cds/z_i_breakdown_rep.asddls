@AbapCatalog.sqlViewName: 'ZIBRKDWNEREP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vue CDS - Pannes'
define root view Z_I_BREAKDOWN_REP as select from zbreakdown_rep {
    key rep_id as RepId,
    vehicle_id as VehicleId,
    rep_date as RepDate,
    descr as Description,
    status as Status
}
