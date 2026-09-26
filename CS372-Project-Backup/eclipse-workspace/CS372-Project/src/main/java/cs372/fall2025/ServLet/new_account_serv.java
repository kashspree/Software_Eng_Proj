package cs372.fall2025.ServLet;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import cs372.fall2025.dao.*;
import cs372.fall2025.model.*;

/**
 * Servlet implementation class new_account_serv
 */
@WebServlet("/new_account_serv")
public class new_account_serv extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public new_account_serv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("txtemail_address");
		String confirm_email = request.getParameter("txtconfirm_email");
		String first_name = request.getParameter("txtfirst_name");
		String middle_name = request.getParameter("txtmiddle_name");
		String last_name = request.getParameter("txtlast_name");
		String password = request.getParameter("txtpassword");
		String conf_password = request.getParameter("txtc_password");
		String security1 = request.getParameter("cbosecurity_question1");
		String security_ans1 = request.getParameter("txtanswer1");
		String security2 = request.getParameter("cbosecurity_question2");
		String security_ans2 = request.getParameter("txtanswer2");
		HttpSession session = request.getSession();
		//set new member fields
		new_account_model fields = new new_account_model();
		fields.setEmail(email);
		fields.setFirst_name(first_name);
		fields.setMiddle_name(middle_name);
		fields.setLast_name(last_name);
		fields.setPassword(password);
		fields.setSecurity1(security1);
		fields.setSecurity_ans1(security_ans1);
		fields.setSecurity2(security2);
		fields.setSecurity_ans2(security_ans2);
		String success="Thank you for signing up ";
		//creating an instance of the account_dao and passing the data to data access object
		try
		{
			if(password.equals(conf_password))
			{
				if(email.equals(confirm_email))
				{
					account_dao3 dao = new account_dao3();
					{
						ArrayList<String> created= dao.create_new_member(fields);
						String firstname = created.get(0);
						String user_id = created.get(1);
						String username = created.get(2);
						String pwd = created.get(3);
						if(created.size()>0)
						{
							 session.setAttribute("success",success);
						     session.setAttribute("firstname", firstname);
						     session.setAttribute("userid", "Your user ID is: " + user_id);
						     session.setAttribute("username", "Login name : " + username);
						     session.setAttribute("pwd", "Your password is : " + pwd);
							response.sendRedirect("auth/login.jsp");
						}
						else
						{

						}
					}
				}
			}
		}
		catch (Exception ex)
		{
			ex.getMessage();
		}

	}

}

