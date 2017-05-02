package com.classes;

import java.util.Random;

public class GenerateOTP {

	static String OTP(int len) {
		System.out.println("Generating OTP using random() : ");
		System.out.print("You OTP is : ");

		// Using numeric values
		String numbers = "0123456789";

		// Using random method
		Random rndm_method = new Random();

		char[] otp = new char[len];

		for (int i = 0; i < len; i++) {
			// Use of charAt() method : to get character value
			// Use of nextInt() as it is scanning the value as int
			otp[i] = numbers.charAt(rndm_method.nextInt(numbers.length()));
		}
		System.out.println("otp >>" + String.valueOf(otp));

		return String.valueOf(otp);
	}
}
