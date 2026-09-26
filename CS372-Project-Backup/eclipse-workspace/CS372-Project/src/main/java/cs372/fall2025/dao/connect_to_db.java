package cs372.fall2025.dao;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class connect_to_db {
	Connection conn = null;
	//creating class variables
	private String db_server = "jdbc:mysql://localhost:3306/";
	private String db_name;
	private String usr_name;
	private String usr_pwd;
	private String full_string;
	public connect_to_db (String db_name, String usr_name, String usr_pwd)
	{
		this.db_name=db_name;
		this.usr_name=usr_name;
		this.usr_pwd=usr_pwd;
	}
	//create the database connection string
	public Connection connection_string() throws ClassNotFoundException, SQLException
	{
		full_string=db_server+db_name;
		try {
			//MySQL driver registration
			Class.forName("com.mysql.cj.jdbc.Driver");
			//establish connection to MySQL server
			conn=DriverManager.getConnection(full_string, usr_name, usr_pwd);
		}
		catch (ClassNotFoundException e) {
            System.err.println("Class not found: " + e.getMessage());
		}
		return conn;
	}
	//hash the the current user password
	public String pwd_hash(String pwd)
	{
		String hash_algorithm ="SHA-256";
		StringBuilder byte_string = new StringBuilder();
		try
		{
			MessageDigest my_hash_pwd = MessageDigest.getInstance(hash_algorithm);
			my_hash_pwd.update(pwd.getBytes());
			byte[]pwd_digest=my_hash_pwd.digest();
			for(byte byte_ch : pwd_digest)
			{
				byte_string.append(String.format("%02x", byte_ch));
			}
		}
		catch(NoSuchAlgorithmException ex)
		{
			ex.getMessage();
		}
		return byte_string.toString();
	}
}