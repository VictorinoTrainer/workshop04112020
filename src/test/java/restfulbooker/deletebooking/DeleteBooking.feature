Feature: Delete Booking
  Este servicio es utilizado para poder
  eliminar 1 reserva

  Background:
    * url baseUrl
    * header Content-Type = 'application/json'

    Scenario: Verificar petición correcta para eliminar una reserva reciba 201
      * def SignInResponse = call read('classpath:common/CreateToken.feature')
      * def accessToken = SignInResponse.response.token
      * def CreateBookingResponse = call read('classpath:common/CreateBooking.feature')
      * def BookingId = CreateBookingResponse.response.bookingid
      Given path '/booking/' + BookingId
      And cookie token = accessToken
      When method DELETE
      Then status 201