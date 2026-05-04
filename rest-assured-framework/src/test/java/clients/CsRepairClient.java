package clients;

import io.restassured.response.Response;
import java.util.HashMap;
import java.util.Map;
import static io.restassured.RestAssured.*;
import static io.restassured.matcher.RestAssuredMatchers.*;
import static org.hamcrest.Matchers.*;

public class CsRepairClient extends BaseClient {

    public Response postGraphql(String query) {
        Map<String, Object> payload = new HashMap<>();
        payload.put("query", query);

        return requestSpec()
                .header("Content-Type", "application/json")
                .body(payload)
                .when()
                .post("/api/v2/csrepair/data/rd/graphql");
    }
}