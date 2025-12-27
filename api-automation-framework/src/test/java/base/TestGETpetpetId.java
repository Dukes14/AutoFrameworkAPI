[
  {
    "filename": "TestBase.java",
    "content": "package base;\nimport io.restassured.RestAssured;\nimport org.testng.annotations.BeforeClass;\npublic class TestBase { @BeforeClass public void setup(){ RestAssured.useRelaxedHTTPSValidation(); } }"
  },
  {
    "filename": "PetTest.java",
    "content": "import base.TestBase;\nimport io.restassured.response.Response;\nimport org.testng.annotations.Test;\nimport static io.restassured.RestAssured.given;\nimport static org.testng.Assert.assertEquals;\n\npublic class PetTest extends TestBase {\n\n    @Test\n    public void testGetPetById() {\n        long petId = 12345; // Replace with a valid pet ID\n\n        Response response = given()\n                .pathParam(\"petId\", petId)\n                .when()\n                .get(\"/pet/{petId}\")\n                .then()\n                .extract().response();\n\n        assertEquals(response.getStatusCode(), 200);\n\n        // assert response.json().get(\"id\") != null;\n        // assert response.json().get(\"name\") != null;\n        // assert response.json().get(\"status\") != null;\n    }\n}"
  }
]