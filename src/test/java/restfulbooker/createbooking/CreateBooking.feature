Feature: Create Booking
  Este servicio es utilizado para poder
  crear reservas

  Background:
    * url baseUrl
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'

    Scenario: Verificar petición correcta para crear una reserva reciba 200
      * string schema = read('classpath:restfulbooker/createbooking/jsonschema/scenario1-schema.json')
      * def SchemaUtils = Java.type('intuit.karate.restfulbooker.util.SchemaUtils')
      Given path '/booking'
      And request
      """
       {
         "firstname" : "Eduardo",
         "lastname" : "Victorino",
         "totalprice" : 999,
         "depositpaid" : true,
         "bookingdates" : {
            "checkin" : "2020-10-29",
            "checkout" : "2020-10-29"
              },
         "additionalneeds" : "BreakFast"
       }
      """
      When method POST
      Then status 200
      And assert SchemaUtils.isValid(response, schema)