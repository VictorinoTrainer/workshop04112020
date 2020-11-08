Feature: Health Check
  Este servicio es utilizado para
  poder verificar que el servicio este OK

  Background:
    * url baseUrl

    Scenario: Verificar petición correcta para consultar el estado del servicio reciba 201
      Given path '/ping'
      When method GET
      Then status 201