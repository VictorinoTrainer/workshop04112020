function fn(){
    karate.configure('connectTimeout', 60000); // Para configurar el tiempo maximo de conectividad
    karate.configure('readTimeout', 60000);    // Para configurar el tiempo maximo de lectura
    karate.configure('logPrettyResponse', true); // Para configurar la activación de log facil de entender

    var config = {

        baseUrl : 'https://restful-booker.herokuapp.com'

    }

    return config;

}