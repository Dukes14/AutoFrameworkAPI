Feature: Petstore Base
  Background:
    * def baseUrl = 'https://petstore.swagger.io/v2'
    * configure readTimeout = 30000
    * configure connectTimeout = 30000