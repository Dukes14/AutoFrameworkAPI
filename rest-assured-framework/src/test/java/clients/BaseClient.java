package clients;

import config.FrameworkConfig;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

import static io.restassured.RestAssured.*;
import static io.restassured.matcher.RestAssuredMatchers.*;
import static org.hamcrest.Matchers.*;

public class BaseClient {

    protected RequestSpecification requestSpec() {
        return given()
                .baseUri(FrameworkConfig.getBaseUrl())
                .header("Content-Type", "application/json");
    }
}