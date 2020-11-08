Feature: Get Booking Ids
  Este servicio es utilizado para el listado de todos
  los codigos IDs de las reservas

  Background:
    * url baseUrl

    Scenario: Verificar peticion correcta al obtener todos los Booking Ids
      Given path '/booking'
      When method GET
      Then status 200