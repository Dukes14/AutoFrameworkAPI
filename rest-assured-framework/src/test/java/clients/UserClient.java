package clients;

import io.restassured.response.Response;
import java.util.HashMap;
import java.util.Map;

import static io.restassured.RestAssured.*;
import static io.restassured.matcher.RestAssuredMatchers.*;
import static org.hamcrest.Matchers.*;

public class UserClient extends BaseClient {

    public Response createUser(Map<String, Object> payload) {
        return requestSpec()
                .header("Content-Type", "application/json")
                .body(payload)
            .when()
                .post("/users");
    }

    public Response getUser(int userId) {
        return requestSpec()
            .when()
                .get("/users/" + userId);
    }

    public Response updateUser(int userId, Map<String, Object> payload) {
        return requestSpec()
                .header("Content-Type", "application/json")
                .body(payload)
            .when()
                .put("/users/" + userId);
    }

    public Response deleteUser(int userId) {
        return requestSpec()
            .when()
                .delete("/users/" + userId);
    }
}