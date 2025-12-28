package base;

import base.TestBase;
import io.restassured.response.Response;
import org.testng.annotations.Test;

import static io.restassured.RestAssured.baseURI;
import static io.restassured.RestAssured.given;
import static org.testng.Assert.assertEquals;

public class GetPetFindByTagsTest extends TestBase {

    @Test
    public void testGetPetFindByTags() {
        String tags = "available,pending";

        Response response = given()
                .queryParam("tags", tags)
                .when()
                .get(baseURI + "/pet/findByTags")
                .then()
                .extract().response();

        assertEquals(response.getStatusCode(), 200);
        // assert response.json().get("id") != null;
        // assert response.json().get("name") != null;
    }
}