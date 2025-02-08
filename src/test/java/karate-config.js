function fn() {
    var env = karate.env; // get java system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'dev'; // a custom 'intelligent' default
    }
    var config = {
        env: env,
        baseUrl: 'https://jsonplaceholder.typicode.com',
        webUrl: 'http://the-internet.herokuapp.com'
    };
    return config;
}