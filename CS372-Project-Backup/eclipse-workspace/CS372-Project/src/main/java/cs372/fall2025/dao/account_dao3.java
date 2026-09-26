package cs372.fall2025.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import cs372.fall2025.model.loginModel;
import cs372.fall2025.model.new_account_model;

public class account_dao3 {

    // Create new member (first admin or regular user)
    public ArrayList<String> create_new_member(new_account_model new_member) throws ClassNotFoundException {
        ArrayList<String> iscreated = new ArrayList<>();
        try {
            connect_to_db connObj = new connect_to_db("auth", "adminusr", "tiTan@01");
            Connection cnn = connObj.connection_string();

            // Check if email already exists
            PreparedStatement checkStmt = cnn.prepareStatement(
                "SELECT 1 FROM site_users WHERE email=? OR username=?"
            );
            checkStmt.setString(1, new_member.getEmail());
            checkStmt.setString(2, new_member.getUsername());
            ResultSet rsCheck = checkStmt.executeQuery();
            boolean user_exist = rsCheck.next();
            rsCheck.close();
            checkStmt.close();

            // Generate random salt and user ID
            int salt = (int) (Math.random() * 8888888) + 1;
            int user_id = (int) (Math.random() * 9999999) + 1;

            // Security answers
            String answer1 = connObj.pwd_hash(new_member.getSecurity_ans1());
            String answer2 = connObj.pwd_hash(new_member.getSecurity_ans2());
            String pepper = answer1.substring(0, 2) + answer2.substring(0, 2);

            String password = connObj.pwd_hash(new_member.getPassword() + salt + pepper);

            // Determine username for first admin
            String username;
            PreparedStatement insertStmt = null;

            if (!user_exist) {
                // Check if table has any users
                PreparedStatement countStmt = cnn.prepareStatement("SELECT COUNT(*) FROM site_users");
                ResultSet rsCount = countStmt.executeQuery();
                int count = 0;
                if (rsCount.next()) count = rsCount.getInt(1);
                rsCount.close();
                countStmt.close();

                if (count < 1) {
                    username = "admin"; // first user is admin
                } else {
                	username = new_member.getFirst_name().toLowerCase().charAt(0)
                            + new_member.getLast_name().toLowerCase()
                            + (int)(Math.random() * 900 + 100);
                }
               

                insertStmt = cnn.prepareStatement(
                    "INSERT INTO site_users(firstname, middlename, lastname, email, username, password, salt, user_status, user_privilege, date_created, security1, securityans1, security2, securityans2, userid, pepper) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
                );

                insertStmt.setString(1, new_member.getFirst_name());
                insertStmt.setString(2, new_member.getMiddle_name());
                insertStmt.setString(3, new_member.getLast_name());
                insertStmt.setString(4, new_member.getEmail());
                insertStmt.setString(5, username);
                insertStmt.setString(6, password);
                insertStmt.setInt(7, salt);

                if (count < 1) {
                    insertStmt.setString(8, "enabled");
                    insertStmt.setString(9, "admin");
                } else {
                    insertStmt.setString(8, "disabled");
                    insertStmt.setString(9, "standard");
                }

                LocalDate currentDate = LocalDate.now();
                insertStmt.setDate(10, Date.valueOf(currentDate));
                insertStmt.setString(11, new_member.getSecurity1());
                insertStmt.setString(12, answer1);
                insertStmt.setString(13, new_member.getSecurity2());
                insertStmt.setString(14, answer2);
                insertStmt.setInt(15, user_id);
                insertStmt.setString(16, pepper);

                insertStmt.execute();
                insertStmt.close();
                cnn.close();

                iscreated.add(new_member.getFirst_name());
                iscreated.add(Integer.toString(user_id));
                iscreated.add(username);
                iscreated.add(new_member.getPassword());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return iscreated;
    }

    // Login method
    public ArrayList<String> user_login(loginModel user) {
        ArrayList<String> result = new ArrayList<>();
        String username = user.getUser_name();
        String rawPwd = user.getUser_password();

        try {
            connect_to_db connObj = new connect_to_db("auth", "adminusr", "tiTan@01");
            Connection conn = connObj.connection_string();

            PreparedStatement stmt = conn.prepareStatement(
                "SELECT password, salt, pepper, user_status, firstname, middlename, lastname, user_privilege " +
                "FROM site_users WHERE username = ?"
            );
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();

            if (!rs.next()) {
                result.add("NOT_FOUND");
                rs.close();
                stmt.close();
                conn.close();
                return result;
            }

            String dbPassword = rs.getString("password");
            int salt = rs.getInt("salt");
            String pepper = rs.getString("pepper");
            String userStatus = rs.getString("user_status");
            String firstname = rs.getString("firstname");
            String middlename = rs.getString("middlename");
            String lastname = rs.getString("lastname");
            String privilege = rs.getString("user_privilege");

            rs.close();
            stmt.close();
            conn.close();

            String hashedLoginPassword = connObj.pwd_hash(rawPwd + salt + pepper);

            if (!hashedLoginPassword.equals(dbPassword)) {
                result.add("INVALID");
                return result;
            }

            result.add(firstname);
            result.add(middlename);
            result.add(lastname);
            result.add(privilege);
            result.add(userStatus);

        } catch (Exception e) {
            result.clear();
            result.add("ERROR");
            e.printStackTrace();
        }

        return result;
    }
}




