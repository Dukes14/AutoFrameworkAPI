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
        CsRepairClient csRepairClient = new CsRepairClient();
        String validQuery = "{\n  node(id: \"123\") {\n    id\n  }\n}";
        Response response = csRepairClient.postGraphql(validQuery);
        response.then()
                .statusCode(200)
                .body("data.node.id", notNullValue());
    }

    @Test
    public void testPostGraphqlInvalidQuery() {
        CsRepairClient csRepairClient = new CsRepairClient();
        String invalidQuery = "{\n  invalidNode(id: \"123\") {\n    id\n  }\n}";
        Response response = csRepairClient.postGraphql(invalidQuery);
        response.then()
                .statusCode(200)
                .body("errors", notNullValue());
    }

    @Test
    public void testPostGraphqlEmptyQuery() {
        CsRepairClient csRepairClient = new CsRepairClient();
        String emptyQuery = "";
        Response response = csRepairClient.postGraphql(emptyQuery);
        response.then()
                .statusCode(500);
    }
}