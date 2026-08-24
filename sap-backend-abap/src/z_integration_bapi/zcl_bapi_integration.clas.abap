CLASS zcl_bapi_integration DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    " Method to create a Purchase Order via BAPI
    CLASS-METHODS create_purchase_order
      IMPORTING
        iv_vendor      TYPE elifn
        iv_material    TYPE matnr
        iv_plant       TYPE werks_d
        iv_quantity    TYPE bstmg
      EXPORTING
        ev_po_number   TYPE ebeln
        et_return      TYPE bapiret2_t.

    " Method to post financial document (e.g. invoice posting)
    CLASS-METHODS post_financial_doc
      IMPORTING
        iv_company_code TYPE bukrs
        iv_doc_date     TYPE bldat
        iv_pst_date     TYPE budat
        iv_amount       TYPE wrbtr
        iv_currency     TYPE waers
      EXPORTING
        ev_obj_type     TYPE awtyp
        ev_obj_key      TYPE awkey
        ev_obj_sys      TYPE awsys
        et_return       TYPE bapiret2_t.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_bapi_integration IMPLEMENTATION.

  METHOD create_purchase_order.
    " Implementation for BAPI_PO_CREATE1
    " 1. Map header data
    " 2. Map item data
    " 3. Call Function 'BAPI_PO_CREATE1'
    " 4. Commit Work if success
  ENDMETHOD.

  METHOD post_financial_doc.
    " Implementation for BAPI_ACC_DOCUMENT_POST
    " 1. Map document header
    " 2. Map account GL and AP
    " 3. Map currency amounts
    " 4. Call Function 'BAPI_ACC_DOCUMENT_POST'
    " 5. Commit Work if success
  ENDMETHOD.

ENDCLASS.
