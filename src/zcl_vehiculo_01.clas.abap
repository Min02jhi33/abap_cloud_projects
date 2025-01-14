CLASS zcl_vehiculo_01 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA matricula TYPE string.

    CLASS-DATA marca TYPE string. "Utilizamos la sentencia CLASS-DATA para los atributos estáticos

    CONSTANTS: tipo_veh_diesel    TYPE string VALUE 'DIESEL',
               tipo_veh_gasolina  TYPE string VALUE 'GASOLINA',
               tipo_veh_electrico TYPE string VALUE 'ELECTRICO'.

    TYPES: BEGIN OF types_caracteristicas,
             color      TYPE string,
             neumaticos TYPE string,
           END OF types_caracteristicas.

    METHODS set_precio IMPORTING iv_price TYPE i. "Este método es el que importa el valor

    METHODS get_precio EXPORTING ev_price TYPE i. "Este método es el que va a exportar el valor

    "Para definir un método estáticos se utiliza la palabra reservada CLASS-METHODS
    CLASS-METHODS set_modelo IMPORTING iv_modelo TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.

  data precio TYPE i.
  CLASS-DATA modelo TYPE string.

ENDCLASS.


CLASS zcl_vehiculo_01 IMPLEMENTATION.
  METHOD set_precio.
    me->precio = iv_price.
  ENDMETHOD.

  METHOD get_precio.
    ev_price = me->precio.
  ENDMETHOD.

  METHOD set_modelo.
    modelo = iv_modelo.
  ENDMETHOD.

ENDCLASS.
