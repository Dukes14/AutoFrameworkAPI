import base.TestBase;
import io.restassured.response.Response;
import org.testng.annotations.Test;
import static io.restassured.RestAssured.given;
import static org.testng.Assert.assertEquals;

public class PetFindByStatusTest extends TestBase {

    @Test
    public void testFindByStatus() {
        String status = "available"; // You can change the status to "pending" or "sold"

        Response response = given()
                .queryParam("status", status)
                .when()
                .get("/pet/findByStatus")
                .then()
                .extract()
                .response();

        assertEquals(response.getStatusCode(), 200);

        // Add more assertions based on the response body
        // For example, you can check if the response is a list of pets
        // and if each pet has the specified status.
        // assert response.json().get("size()") > 0;
        // assert response.json().get("[0].status").equals(status);
    }
}