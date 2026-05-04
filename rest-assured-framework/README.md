# API Automation — RestAssured + TestNG

| Item       | Value                    |
|------------|--------------------------|
| Framework  | RestAssured 6.x          |
| Runner     | TestNG                 |
| Language   | Java 17                  |
| Build Tool | Maven                    |
| Reporting  | Allure              |
| CI/CD      | GitHub Actions          |

## Project Structure
```
src/test/java/clients/   → Low-level REST clients (one per API resource)
src/main/java/config/    → FrameworkConfig reads config.properties
src/main/java/models/    → POJO classes for complex request/response payloads
src/main/java/utils/     → LoggingUtil, JsonUtil
src/test/java/base/      → BaseTest (setup / RestAssured baseURI)
src/test/java/helpers/   → High-level business validations
src/test/java/tests/     → Test classes extending BaseTest
src/test/resources/config.properties  → BaseURL, auth token, env
src/test/resources/schemas/           → JSON schemas for contract testing
```

## Quickstart
```bash
# Run all tests
mvn clean test

# Run with TestNG suite
mvn clean test -DsuiteXmlFile=testng.xml
```

## Prerequisites
- Java 17+
- Maven 3.8+

## IDE Setup (IntelliJ IDEA)
1. Open as Maven project (`File → Open → select pom.xml`).
2. Set Project SDK to Java 17.
3. Enable annotation processing for Lombok (`Preferences → Build → Compiler → Annotation Processors`).
4. Run `UserTests.java` directly or `mvn test`.
