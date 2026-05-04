package tests;

import clients.CsRepairClient;
import io.restassured.response.Response;
import org.testng.annotations.Test;

import static io.restassured.RestAssured.*;
import static io.restassured.matcher.RestAssuredMatchers.*;
import static org.hamcrest.Matchers.*;

public class CsRepairTests extends BaseTest {

    @Test
    public void testPostGraphqlSuccess() {
        CsRepairClient client = new CsRepairClient();
        String query = "{\n  hero {\n    name\n  }\n}";
        Response response = client.postGraphql(query);
        response.then()
                .statusCode(200)
                .body("data.hero.name", notNullValue());
    }

    @Test
    public void testPostGraphqlNoQuery() {
        CsRepairClient client = new CsRepairClient();
        Response response = client.postGraphqlWithoutQuery();
        response.then()
                .statusCode(400);
    }

    @Test
    public void testPostGraphqlEmptyQuery() {
        CsRepairClient client = new CsRepairClient();
        String query = "";
        Response response = client.postGraphql(query);
        response.then()
                .statusCode(400);
    }
}