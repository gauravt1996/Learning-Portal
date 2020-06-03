package gt.model;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gt.model.*;
import gt.dao.*;

/**
 * Servlet implementation class ForgetPassword
 */
@WebServlet("/ForgetPassword")
public class ForgetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgetPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		EMail e=new EMail();
		ResultSet rs=DAO.displayRecord("select email,password from user where id="+request.getParameter("userid"));
		try {
			if(rs.next())
			{
				e.setTo(rs.getString(1));
				e.setMsg(rs.getString(2));
				String s=e.send(e);
				if(s.equals("success"))
				{
				String message="<script>alert('Successfully send');</script>";
            	
            	 request.setAttribute("message", message);
            	
				request.getRequestDispatcher("UserLogin.jsp").forward(request,response);
				}else
				{
					String message="<script>alert('not send');</script>";
	            	
	            	 request.setAttribute("message", message);
	            	
					request.getRequestDispatcher("UserLogin.jsp").forward(request,response);
				}
			}
		} catch (SQLException ee) {
			// TODO Auto-generated catch block
			ee.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
