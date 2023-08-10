@EndUserText.label: 'Travel Data'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_RAP_TRAVEL_5678 
as projection on ZI_TRAVEL_U_1234
{
    key TravelId,
    @Search.defaultSearchElement: true
    @Consumption.valueHelpDefinition: [ { entity: { name: '/DMO/I_Agency', element: 'AgencyID' } } ]
    AgencyId,
    @Search.defaultSearchElement: true
    @Consumption.valueHelpDefinition: [ { entity: { name: '/DMO/I_Customer', element: 'CustomerID' } } ]
    CustomerId,
    BeginDate,
    EndDate,
    BookingFee,
    TotalPrice,
    @Consumption.valueHelpDefinition: [ { entity: { name: 'I_Currency', element: 'Currency' } } ]
    CurrencyCode,
    Description,
    Status,
    Createdby,
    Createdat,
    Lastchangedby,
    Lastchangedat,
    /* Associations */
    _Agency,
    _Booking : redirected to composition child ZC_RAP_BOOKING_U_5678 ,
    _Currency,
    _Customer
}
