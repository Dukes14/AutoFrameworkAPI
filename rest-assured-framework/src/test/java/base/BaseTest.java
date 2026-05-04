package base;

import config.FrameworkConfig;
import io.restassured.RestAssured;
import org.testng.annotations.BeforeClass;

public class BaseTest {

    @BeforeClass
    public void setup() {
        RestAssured.baseURI = FrameworkConfig.getBaseUrl();
        String token = FrameworkConfig.getAuthToken();
        if (token != null && !token.isEmpty()) {
            RestAssured.requestSpecification = io.restassured.RestAssured.given()
                    .header("Authorization", "Bearer " + token);
        }
    }
}