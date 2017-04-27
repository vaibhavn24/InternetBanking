package com.helper;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import com.classes.EncryptDecrypt;
import com.dbutility.DbUtil;
import com.model.User;
@MultipartConfig(maxFileSize = 16177216)
public class UserHelper {

	private Connection connection;
	private int id;
	private String firstName;
	private String lastName;
	private String motherName;
	private int Gender;
	private String email;
	private String primaryPhoneNumber;
	private String secondaryPhoneNumber;
	private String dateOfBirth;
	private String aadharcard;
	private String pancard;
	private int questionId;
	private String answer;
	private String userName;
	private String password;
	private int accountStatus;
	private int residentialStatus;
	private Date accountCreationDate;
	private Timestamp passwordModifiedDate;
	private Timestamp profileModifiedDate;
	private Timestamp lastAccessTime;
	private int userType;
	private int customerType;
	private InputStream image;
	
	public InputStream getImage() {
		return image;
	}
	public void setImage(InputStream inputStream) {
		this.image = inputStream;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMotherName() {
		return motherName;
	}
	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}
	public int getGender() {
		return Gender;
	}
	public void setGender(int gender) {
		Gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPrimaryPhoneNumber() {
		return primaryPhoneNumber;
	}
	public void setPrimaryPhoneNumber(String primaryPhoneNumber) {
		this.primaryPhoneNumber = primaryPhoneNumber;
	}
	public String getSecondaryPhoneNumber() {
		return secondaryPhoneNumber;
	}
	public void setSecondaryPhoneNumber(String secondaryPhoneNumber) {
		this.secondaryPhoneNumber = secondaryPhoneNumber;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getAadharcard() {
		return aadharcard;
	}
	public void setAadharcard(String aadharcard) {
		this.aadharcard = aadharcard;
	}
	public String getPancard() {
		return pancard;
	}
	public void setPancard(String pancard) {
		this.pancard = pancard;
	}
	public int getQuestionId() {
		return questionId;
	}
	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAccountStatus() {
		return accountStatus;
	}
	public void setAccountStatus(int accountStatus) {
		this.accountStatus = accountStatus;
	}
	public int getResidentialStatus() {
		return residentialStatus;
	}
	public void setResidentialStatus(int residentialStatus) {
		this.residentialStatus = residentialStatus;
	}
	public Date getAccountCreationDate() {
		return accountCreationDate;
	}
	public void setAccountCreationDate(Date date) {
		this.accountCreationDate = date;
	}
	public Timestamp getPasswordModifiedDate() {
		return passwordModifiedDate;
	}
	public void setPasswordModifiedDate(Timestamp passwordModifiedDate) {
		this.passwordModifiedDate = passwordModifiedDate;
	}
	public Timestamp getProfileModifiedDate() {
		return profileModifiedDate;
	}
	public void setProfileModifiedDate(Timestamp profileModifiedDate) {
		this.profileModifiedDate = profileModifiedDate;
	}
	public Timestamp getLastAccessTime() {
		return lastAccessTime;
	}
	public void setLastAccessTime(Timestamp lastAccessTime) {
		this.lastAccessTime = lastAccessTime;
	}
	public int getUserType() {
		return userType;
	}
	public void setUserType(int userType) {
		this.userType = userType;
	}
	public int getCustomerType() {
		return customerType;
	}
	public void setCustomerType(int customerType) {
		this.customerType = customerType;
	}
	public void setAccountCreationDate1(Date date) {
		
		
	}
	public UserHelper() {
		connection = DbUtil.getConnection();
	}

	public int insertUser() {

		int i = 0;
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into user(first_name, last_name,gender,mother_name,email,primary_phone_number,secondary_phone_number,date_of_birth,aadharcard,pancard,question_id,answer,user_name,password,account_status,residential_status,acccount_creation_date,password_modified_date,profile_modified_date,last_access_time,usertype,customertype,image) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)");
			
			preparedStatement.setString(1, getFirstName());
			preparedStatement.setString(2, getLastName());
			preparedStatement.setInt(3, getGender());
			preparedStatement.setString(4, getMotherName());
			preparedStatement.setString(5, getEmail());
			preparedStatement.setString(6, getPrimaryPhoneNumber());
			preparedStatement.setString(7, getSecondaryPhoneNumber());
			preparedStatement.setString(8, getDateOfBirth());
			preparedStatement.setString(9, getAadharcard());
			preparedStatement.setString(10, getPancard());
			preparedStatement.setInt(11, getQuestionId());
			preparedStatement.setString(12, getAnswer());
			preparedStatement.setString(13, getUserName());
			preparedStatement.setString(14, getPassword());
			preparedStatement.setInt(15, getAccountStatus());
			preparedStatement.setInt(16, getResidentialStatus());
			preparedStatement.setDate(17, getAccountCreationDate());
			preparedStatement.setTimestamp(18, getPasswordModifiedDate());
			preparedStatement.setTimestamp(19, getProfileModifiedDate());
			preparedStatement.setTimestamp(20, getLastAccessTime());
			preparedStatement.setInt(21, getUserType());
			preparedStatement.setInt(22, getCustomerType());
			preparedStatement.setBlob(23, getImage());
			/*FileInputStream fin = new FileInputStream( u.getImage());
			preparedStatement.setBinaryStream(23,fin,fin.available());  */

			i = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return i;
	}

	public void deleteUser(int userId) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from users where userid=?");
			// start with 1
			preparedStatement.setInt(1, userId);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void updateUser(User user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update users set firstname=?, lastname=?"
							+ "where userid=?");
			// Parameters start with 1
			preparedStatement.setString(1, user.getFirstName());
			preparedStatement.setString(2, user.getLastName());
			// preparedStatement.setInt(5, user.getUserid());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<User> getAllUsers() {
		List<User> users = new ArrayList<User>();
		try {
			Statement statement = connection.createStatement();

			ResultSet rs = statement.executeQuery("select * from users");
			while (rs.next()) {
				User user = new User();
				// user.setUserid(rs.getInt("userid"));
				user.setFirstName(rs.getString("firstname"));
				user.setLastName(rs.getString("lastname"));
				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}

	public User getUserById(int userId) {
		User user = new User();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from users where userid=?");
			preparedStatement.setInt(1, userId);
			ResultSet rs = preparedStatement.executeQuery();

			if (rs.next()) {
				// user.setUserid(rs.getInt("userid"));
				// user.setFirstName(rs.getString("firstname"));
				user.setLastName(rs.getString("lastname"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}

	public static User populateUser(HttpServletRequest request){
		User user = new User();
		user.setFirstName(request.getParameter("firstName"));
		user.setLastName(request.getParameter("lastName"));
		user.setMotherName(request.getParameter("motherName"));
		int gender = Integer.parseInt(request.getParameter("gender"));
		user.setGender(gender);
		user.setEmail(request.getParameter("email"));
		user.setPrimaryPhoneNumber(request.getParameter("primaryPhoneNumber"));
		user.setSecondaryPhoneNumber(request
				.getParameter("secondaryPhoneNumber"));
		user.setDateOfBirth(request.getParameter("dateOfBirth"));
		user.setAadharcard(request.getParameter("aadharcard"));
		user.setPancard(request.getParameter("pancard"));
		int rStatus = Integer.parseInt(request
				.getParameter("residentialstatus"));
		user.setResidentialStatus(rStatus);
		int questionId = Integer.parseInt(request.getParameter("question"));
		user.setQuestionId(questionId);

		EncryptDecrypt encrypt = new EncryptDecrypt();
		String ans = encrypt.EncryptData(request.getParameter("answer"));
		user.setAnswer(ans);
		user.setUserName(request.getParameter("userName"));

		encrypt = new EncryptDecrypt();
		String confirmpassword = encrypt.EncryptData(request
				.getParameter("confirmpassword"));
		user.setPassword(confirmpassword);
		user.setAccountStatus(1);
		LocalDate date = LocalDate.now();
		Date date2 = Date.valueOf(date);
		user.setAccountCreationDate(date2);
		user.setPasswordModifiedDate(null);
		user.setProfileModifiedDate(null);
		user.setLastAccessTime(null);
		int uType = Integer.parseInt(request.getParameter("userType"));
		if(uType == 1){
		user.setUserType(1);
		}else if(uType == 2 || uType == 3){
			user.setUserType(uType);
		}else{
			user.setUserType(4);
		}
		int cType = Integer.parseInt(request.getParameter("customerType"));
		user.setCustomerType(cType);
		return user;
	}

	public int getCurrentUserId(String email) {
		User user1 = new User();
		Statement stmt = null;
		ResultSet rs = null;
		try {
			 stmt = connection.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sql = "select id from user  where email like '" + email + "'";

		
		try {
			 rs = stmt.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			while (rs.next()) {
				user1.setId(rs.getInt(1));
				System.out.println(user1.getId());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return user1.getId();

	}
	public static  User populateAdminValue(HttpServletRequest request) {
		User user = new User();
		System.out.println("populateAdminValue JSP values>> "+request.getParameter("firstName"));
		user.setFirstName(request.getParameter("firstName"));
		System.out.println("User get Values>> "+user.getFirstName());
		user.setLastName(request.getParameter("lastName"));
		user.setMotherName(request.getParameter("motherName"));
		user.setEmail(request.getParameter("email"));
		user.setPrimaryPhoneNumber(request.getParameter("primaryPhoneNumber"));
		user.setSecondaryPhoneNumber(request
				.getParameter("secondaryPhoneNumber"));
		user.setDateOfBirth(request.getParameter("dateOfBirth"));
		user.setAadharcard(request.getParameter("aadharcard"));
		user.setPancard(request.getParameter("pancard"));
		user.setUserName(request.getParameter("userName"));
		LocalDate date = LocalDate.now();
		Date date2 = Date.valueOf(date);
		user.setAccountCreationDate(date2);
		user.setPasswordModifiedDate(null);
		user.setProfileModifiedDate(null);
		user.setLastAccessTime(null);
		Part filePart;
		try {
			System.out.println("I am in File part");
			filePart = request.getPart("image");
			//System.out.println(filePart);
			 if (filePart != null) {
					// prints out some information for debugging
					System.out.println(filePart.getName());
					System.out.println(filePart.getSize());
					System.out.println(filePart.getContentType());
					
					// obtains input stream of the upload file
				InputStream	inputStream = filePart.getInputStream();
				user.setImage(inputStream);
				}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return user;
	}
	
	public int updateAdmin(int id) {

		int i = 0;
		String sql = "update user set first_name = ?, last_name=?, mother_name=?, email=?, primary_phone_number=?, secondary_phone_number=?, date_of_birth=?, aadharcard=?, pancard=?, user_name=?, image=? where id=?";
		
		System.out.println(getFirstName()+" "+getLastName()+" "+getMotherName()+" "+getGender()+" "+getEmail()+" "+getPrimaryPhoneNumber()+" "+getSecondaryPhoneNumber()+" "+getDateOfBirth()+" "+getAadharcard()+" "+getPancard()+" "+getUserName()+" "+getImage()+"id:"+getId());
		try {
			PreparedStatement pst = connection.prepareStatement(sql);
			System.out.println("Update User Admin SQL Query>> "+sql);
			pst.setString(1, getFirstName());
			pst.setString(2, getLastName());
			pst.setString(3, getMotherName());
			pst.setString(4, getEmail());
			pst.setString(5, getPrimaryPhoneNumber());
			pst.setString(6, getSecondaryPhoneNumber());
			pst.setString(7, getDateOfBirth());
			pst.setString(8, getAadharcard());
			pst.setString(9, getPancard());
			pst.setString(10, getUserName());
			System.out.println(getImage());
			pst.setBlob(11, getImage());
			pst.setInt(12, id);
			i = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;

	}


}
