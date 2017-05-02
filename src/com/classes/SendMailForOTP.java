package com.classes;

public class SendMailForOTP {

	public static String OTP;

	public static void sendMailwithOPT(String email) {
		OTP = GenerateOTP.OTP(4);
		String subject = "OTP for Profile Updation";
		String msg = "Hello; " + "Kindly Find OTP for your profile updation : "
				+ OTP + " Here.. ";
		Mailer.send(email, subject, msg);
	}

	public static boolean validate(String otp1, String otp2) {
		Boolean flag = false;
		if (otp1.equals(otp2)) {
			flag = true;
		}

		return flag;
	}
}