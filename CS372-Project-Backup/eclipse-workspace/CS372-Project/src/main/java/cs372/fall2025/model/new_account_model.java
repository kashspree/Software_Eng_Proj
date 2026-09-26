package cs372.fall2025.model;

public class new_account_model {

    private String email;
    private String confirm_email;   // <-- Added
    private String first_name;
    private String middle_name;
    private String last_name;
    private String username;        // <-- You can generate this
    private String password;
    private String security1;
    private String security_ans1;
    private String security2;
    private String security_ans2;   // <-- Fixed spelling

    // Email
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    // Confirm Email
    public String getConfirm_email() { return confirm_email; }
    public void setConfirm_email(String confirm_email) { this.confirm_email = confirm_email; }

    // First Name
    public String getFirst_name() { return first_name; }
    public void setFirst_name(String first_name) { this.first_name = first_name; }

    // Middle Name
    public String getMiddle_name() { return middle_name; }
    public void setMiddle_name(String middle_name) { this.middle_name = middle_name; }

    // Last Name
    public String getLast_name() { return last_name; }
    public void setLast_name(String last_name) { this.last_name = last_name; }

    // Username
    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }

    // Password
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    // Security Q1
    public String getSecurity1() { return security1; }
    public void setSecurity1(String security1) { this.security1 = security1; }

    public String getSecurity_ans1() { return security_ans1; }
    public void setSecurity_ans1(String security_ans1) { this.security_ans1 = security_ans1; }

    // Security Q2
    public String getSecurity2() { return security2; }
    public void setSecurity2(String security2) { this.security2 = security2; }

    // SECURITY ANSWER 2 (Fixed name)
    public String getSecurity_ans2() { return security_ans2; }
    public void setSecurity_ans2(String security_ans2) { this.security_ans2 = security_ans2; }

}
