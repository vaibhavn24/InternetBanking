package com.classes;

public class SendMailToRegisterEmployeeAdmin {

	
	
	public static void sendMailEmpAdmin(String userId ,String email){
	
	    String eid = EncryptDecrypt.encryptData(userId);
		String subject= "change the password of the account"; 
		   
	    String msg=  "Hello; "
	    		+ "Your are the admin of our application you are register with us to reset your password please click the below link your default username = Ibadmin and password =IbAdmin*123"
	    		+"http://localhost:8081/InternetBanking/UpdateUserPasswordAdminEmployeeRegisterServlet?eid="+eid;
	          
	    Mailer.send(email, subject, msg);

	}

}
