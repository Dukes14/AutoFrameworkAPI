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
        String query = "{\n  getRepairOrders(repairOrderNumber: \"123\") {\n    repairOrderNumber\n  }\n}";
        Response response = client.postGraphql(query);
        response.then()
                .statusCode(200)
                .body("data.getRepairOrders", notNullValue());
    }

    @Test
    public void testPostGraphqlInvalidQuery() {
        CsRepairClient client = new CsRepairClient();
        String query = "invalid graphql query";
        Response response = client.postGraphql(query);
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