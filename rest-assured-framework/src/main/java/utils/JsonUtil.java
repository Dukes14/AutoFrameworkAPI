package utils;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;

public class JsonUtil {

    private static final ObjectMapper MAPPER = new ObjectMapper();

    public static String toJson(Object obj) {
        try { return MAPPER.writeValueAsString(obj); }
        catch (IOException e) { throw new RuntimeException("Serialization failed", e); }
    }

    public static <T> T fromJson(String json, Class<T> clazz) {
        try { return MAPPER.readValue(json, clazz); }
        catch (IOException e) { throw new RuntimeException("Deserialization failed", e); }
    }
}