import base.TestBase;
import io.restassured.response.Response;
import org.testng.annotations.Test;
import static io.restassured.RestAssured.given;
import static org.testng.Assert.assertEquals;

public class TestGetPetById extends TestBase {

    @Test
    public void testGetPetById() {
        int petId = 123; // Replace with a valid pet ID

        Response response = given()
                .pathParam("petId", petId)
                .when()
                .get("/pet/{petId}");

        assertEquals(response.getStatusCode(), 200);

        // Add more specific assertions on the response body here
        // assert response.json().get("id") != null;
        // assert response.json().get("name") != null;
        // assert response.json().get("status").equals("available");
    }
}