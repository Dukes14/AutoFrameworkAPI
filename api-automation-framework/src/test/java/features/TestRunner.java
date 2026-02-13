import com.intuit.karate.junit5.Karate;

class TestRunner {

    // This will run all feature files in the same package as this runner class
    // or you can specify the path using @Karate.Test(features = "classpath:features")
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }
}