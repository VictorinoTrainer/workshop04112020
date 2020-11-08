Feature: Partial Update Booking
  Este servicio es utilizado para poder
  actualizar de manera parcial una reserva

  Background:
    * url baseUrl
    * header Accept = 'application/json'

    Scenario: Verificar petición correcta para actualizar parcialmente una reserva reciba 200
      * def SignInResponse = call read('classpath:common/CreateToken.feature')
      * def accessToken = SignInResponse.response.token
      Given path '/booking/' + 9
      And cookie token = accessToken
      And request
      """
        {
            "firstname" : "Victorino",
            "lastname" : "Eduardo"
        }
      """
      When method PATCH
      Then status 200