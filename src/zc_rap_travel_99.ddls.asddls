@EndUserText.label: 'projection of data model'
@AccessControl.authorizationCheck:  #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_RAP_TRAVEL_99
 as projection on ZRAPDATAMODEL99 as travel
{
   key TravelUUID,
      @Search.defaultSearchElement: true
      TravelID,
      //@Consumption.valueHelpDefinition: [{ entity: { name: '/DMO/I_Agency', element: 'AgencyID'} }]
      @Consumption.valueHelpDefinition: [{ entity : {name: 'zce_rap_agency_7890', element: 'AgencyId' } }]
      //@ObjectModel.text.element: ['AgencyName']
      @Search.defaultSearchElement: true
      AgencyID,
      //_Agency.Name       as AgencyName,

    @ObjectModel.text.element: ['CustomerName']
    @Search.defaultSearchElement: true
    CustomerID,
    _Customer.LastName as CustomerName,
       BeginDate,
       EndDate,
       @Semantics.amount.currencyCode: 'CurrencyCode'
       BookingFee,
       @Semantics.amount.currencyCode: 'CurrencyCode'
       TotalPrice,
       @Consumption.valueHelpDefinition: [{ entity: { name: 'I_Currency', element: 'Currency'} }]
       CurrencyCode,
       Description,
       TravelStatus,
       LastChangedAt,
       LocalLastChangedAt,

       /* Associations */
       _Agency,
       _Booking : redirected to composition child ZC_RAP_BOOKING_99,
       _Currency,
       _Customer   
}
