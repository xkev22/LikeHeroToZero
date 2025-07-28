package likeherotozero;

import org.springframework.security.crypto.bcrypt.BCrypt;

public final class PasswordUtil {
    private PasswordUtil() { }

    public static String hash(String plain) {
        return BCrypt.hashpw(plain, BCrypt.gensalt(12));
    }

    public static boolean verify(String plain, String storedHash) {
        return BCrypt.checkpw(plain, storedHash);
    }
}
