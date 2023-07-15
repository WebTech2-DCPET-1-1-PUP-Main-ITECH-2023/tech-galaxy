/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.techgalaxy.security;

import java.security.SecureRandom;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.Base64;
import org.springframework.security.crypto.argon2.Argon2PasswordEncoder;

/**
 *
 * @author ACER
 */
public class PasswordArgon2SpringSecurity {
    public boolean matchPasswords(String salt, String rawPassword, String hash) {
        Argon2PasswordEncoder encoder = new Argon2PasswordEncoder();
        boolean result;
        rawPassword = salt + rawPassword;
        if (encoder.matches(rawPassword, hash)) {
            result = true;
        } else {
            result = false;
        }
        return result;
    }

    public static String encryptPassword(String password, String salt) {
        Argon2PasswordEncoder encoder = new Argon2PasswordEncoder();
        String saltedRawPassword = salt + password;
        Instant start = Instant.now();  // start timer
        String hash = encoder.encode(saltedRawPassword);
        System.out.println("Hash: " + hash);
        Instant end = Instant.now();    // end timer
        System.out.println(String.format(
                "Hashing took %s ms",
                ChronoUnit.MILLIS.between(start, end)
        ));
        return hash;
    }

    public static String generateAndStoreSalt() {
        SecureRandom secureRandom = new SecureRandom();
        byte[] salt = new byte[16];
        secureRandom.nextBytes(salt);
        String encodedSalt = Base64.getEncoder().encodeToString(salt);
        System.out.println("Salt: " + encodedSalt);
        return encodedSalt;
    }
}
