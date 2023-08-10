CLASS zcl_rap_eml_678 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rap_eml_678 IMPLEMENTATION.





METHOD if_oo_adt_classrun~main.

*read ENTITIES OF ZRapdatamodel99
*ENTITY Travel by \_Booking
*   ALL FIELDS WITH  VALUE #( ( TravelUUID = '3F581C10C7198F931800177AAA035D2F' ) )
* RESULT data(travels).

* out->write( travels ).

MODIFY ENTITIES OF ZRapdatamodel99
 ENTITY travel
  UPDATE
  set FIELDS WITH VALUE
   #( ( TravelUUID = '3F581C10C7198F931800177AAA035D2F'
        Description = 'I Like SAP' ) ).

 out->write( 'Update done' ).

 commit ENTITIES
   RESPONSE OF ZRapdatamodel99
   FAILED DATA(failes_commit)
   REPORTED DATA(reported_commit).


endmethod.
ENDCLASS.
