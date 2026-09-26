package cs372.fall2025.model;

public class LoginInfo {

    public boolean exists;
    public String password;
    public int salt;
    public String pepper;
    public String status;

    public LoginInfo() {
        exists = false;
        password = "";
        salt = 0;
        pepper = "";
        status = "";
    }
}
