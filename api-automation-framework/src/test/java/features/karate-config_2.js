function fn() {
  var env = karate.env;
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    baseUrl: 'https://reqres.in'
  }
  if (env == 'dev') {
    // customize
    //config.baseUrl = 'http://localhost:8080';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}