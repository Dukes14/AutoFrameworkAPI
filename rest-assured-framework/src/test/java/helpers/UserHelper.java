package helpers;

import clients.UserClient;
import io.restassured.response.Response;
import models.UserPayload;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;

public class UserHelper {

    private final UserClient userClient = new UserClient();

    public Response createAndValidateUser(String name, String email) {
        UserPayload payload = UserPayload.builder().name(name).email(email).build();
        Response response = userClient.createUser(payload);
        assertThat(response.statusCode(), anyOf(is(200), is(201)));
        return response;
    }
}