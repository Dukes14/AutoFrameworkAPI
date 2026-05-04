package utils;

import io.restassured.filter.log.RequestLoggingFilter;
import io.restassured.filter.log.ResponseLoggingFilter;
import io.restassured.specification.RequestSpecification;

public class LoggingUtil {

    public static RequestSpecification withLogging(RequestSpecification spec) {
        return spec
                .filter(new RequestLoggingFilter())
                .filter(new ResponseLoggingFilter());
    }
}