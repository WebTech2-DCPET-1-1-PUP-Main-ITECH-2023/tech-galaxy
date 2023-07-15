/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.techgalaxy.security;

/**
 *
 * @author ACER
 */
public class PasswordTester {
    public static void main(String[] args) {
    PasswordArgon2SpringSecurity encrypt = new PasswordArgon2SpringSecurity();
    String salt = encrypt.generateAndStoreSalt();
    System.out.println("Salt:"+salt);
    String rawPassword = "#Mighty11";
    String hashedPassword = encrypt.encryptPassword(rawPassword, salt);
    System.out.println(hashedPassword);
    boolean isMatched = encrypt.matchPasswords(salt, rawPassword, hashedPassword);
    if(isMatched) {
        System.out.println("True");
    } else {
    System.out.println("False");}
    }
}
