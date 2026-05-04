package tests;

import base.BaseTest;
import clients.UserClient;
import io.restassured.response.Response;
import models.UserPayload;
import org.testng.annotations.Test;

import static io.restassured.RestAssured.*;
import static io.restassured.matcher.RestAssuredMatchers.*;
import static org.hamcrest.Matchers.*;

public class UserTests extends BaseTest {

    UserClient userClient = new UserClient();

    @Test
    public void verifyUserCreation() {
        UserPayload user = UserPayload.builder()
                .name("John Doe")
                .email("john@example.com")
                .build();

        Response response = userClient.createUser(user);

        response.then()
                .statusCode(201)
                .body("name", equalTo("John Doe"));
    }

    @Test
    public void verifyGetUser() {
        Response response = userClient.getUser(1);

        response.then()
                .statusCode(200)
                .body("id", notNullValue());
    }
}