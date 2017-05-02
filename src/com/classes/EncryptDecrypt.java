package com.classes;

import java.io.IOException;

import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;

public class EncryptDecrypt {
	public static final String ENCRYPTION_KEY = "a1b2c3d4";

	public static String encryptData(String data) {
		String dataEncrypted = null;

		try {
			dataEncrypted = encriptDES(ENCRYPTION_KEY, data);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dataEncrypted;
	}

	public static String decryptData(String data) {

		String dataDecrypted = null;
		try {
			dataDecrypted = decriptDES(ENCRYPTION_KEY, data);
		} catch (IllegalBlockSizeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dataDecrypted;
	}

	public static String decriptDES(String passPhrase, String value)
			throws Exception, IllegalBlockSizeException {
		SecretKey key = new SecretKeySpec(passPhrase.getBytes(), "DES");
		Cipher dcipher = Cipher.getInstance(key.getAlgorithm());
		// Create the ciphers
		dcipher.init(Cipher.DECRYPT_MODE, key);
		byte[] dec = base64Decode(value);

		// Decrypt
		byte[] utf8ByteArray = dcipher.doFinal(dec);
		// Decode using utf-8
		return new String(utf8ByteArray, "UTF8");
	}

	public static String encriptDES(String passPhrase, String value)
			throws Exception {
		SecretKey key = new SecretKeySpec(passPhrase.getBytes(), "DES");
		// Create the ciphers
		Cipher ecipher = Cipher.getInstance(key.getAlgorithm());
		// Encode the string into bytes using utf-8
		ecipher.init(Cipher.ENCRYPT_MODE, key);
		byte[] utf8 = value.getBytes("UTF8");
		// Encrypt
		byte[] enc = ecipher.doFinal(utf8);
		// Encode bytes to base64 to get a string
		return base64Encode(enc);
	}

	public static byte[] base64Decode(String val) throws IOException {
		byte[] dec = DatatypeConverter.parseBase64Binary(val);
		return dec;
	}

	public static String base64Encode(byte[] val) {
		return DatatypeConverter.printBase64Binary(val);
	}

}