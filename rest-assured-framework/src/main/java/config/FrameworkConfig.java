package config;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class FrameworkConfig {

    private static final Properties PROPS = new Properties();

    static {
        try (InputStream is = FrameworkConfig.class.getClassLoader()
                .getResourceAsStream("config.properties")) {
            if (is == null) throw new RuntimeException("config.properties not found on classpath");
            PROPS.load(is);
        } catch (IOException e) {
            throw new RuntimeException("Failed to load config.properties", e);
        }
    }

    public static String get(String key) { return PROPS.getProperty(key, ""); }
    public static String getBaseUrl()    { return get("base.url"); }
    public static String getAuthToken()  { return get("auth.token"); }
}