[
  {
    "filename": "TestBase.java",
    "content": "package base;\nimport io.restassured.RestAssured;\nimport org.testng.annotations.BeforeClass;\npublic class TestBase { @BeforeClass public void setup(){ RestAssured.useRelaxedHTTPSValidation(); } }"
  },
  {
    "filename": "PetFindByTagsTest.java",
    "content": "import base.TestBase;\nimport io.restassured.response.Response;\nimport org.testng.annotations.Test;\nimport static io.restassured.RestAssured.given;\nimport static org.testng.Assert.assertEquals;\n\npublic class PetFindByTagsTest extends TestBase {\n\n    @Test\n    public void testFindByTags() {\n        String tags = \"tag1,tag2\";\n\n        Response response = given()\n                .queryParam(\"tags\", tags)\n                .when()\n                .get(\"/pet/findByTags\")\n                .then()\n                .extract().response();\n\n        assertEquals(response.getStatusCode(), 200);\n        // assert response.json().get(\"size()\") != null;\n        // assert response.json().get(\"[0].name\") != null;\n\n    }\n}\n"
  }
]