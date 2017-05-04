package com.classes;

import java.util.Random;

public class GenerateOTP {

	static String generateProfileOTP(int len) {
		
		String numbers = "0123456789";
		Random rndm_method = new Random();

		char[] otp = new char[len];

		for (int i = 0; i < len; i++) {
			
			otp[i] = numbers.charAt(rndm_method.nextInt(numbers.length()));
		}
		System.out.println("You OTP is : "+String.valueOf(otp));
		return String.valueOf(otp);
	}
}
