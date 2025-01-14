CLASS zcl_01_exec_ustr58 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_exec_ustr58 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
*        DATA lo_contract TYPE REF TO zcl_02_contract_ustr58.

*        create OBJECT lo_contract.
*
*        lo_contract = new #( ).

    DATA(lo_contract) = NEW zcl_02_contract_ustr58( ).

    DATA lv_process TYPE string.

    IF lo_contract is bound.

      lo_contract->set_client(
        EXPORTING
          iv_client   = 'Logali'
          iv_location = space
        IMPORTING
          ev_status   = DATA(lv_status)
        CHANGING
          cv_process  = lv_process ).

      lo_contract->get_client( IMPORTING ev_client = DATA(lv_client) ).

*
      lo_contract->region = 'EU'.

    ENDIF.

    zcl_02_contract_logali=>set_cntr_type( 'Construction' ).

       out->write( |{ lv_client }-{ lv_status }-{ lv_process }-{ lo_contract->region }| ).

*    zcl_02_contract_logali=>get_cntr_type(
*      IMPORTING
*        ev_cntr_type = data(lv_cntr_type)
*    ).

*    out->write( |{ lv_client }-{ lv_status }-{ lv_process }| ).



*    out->write( lv_cntr_type ).


*    out->write( 'Hello World' ).

  ENDMETHOD.
ENDCLASS.
