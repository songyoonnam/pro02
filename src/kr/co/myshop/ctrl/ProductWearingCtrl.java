package kr.co.myshop.ctrl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import kr.co.myshop.ctrl.ProductWearingCtrl;

@WebServlet({"/ProductWearingCtrl"})
public class ProductWearingCtrl extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
  
  private static final String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
  
  private static final String USER = "root";
  
  private static final String PASS = "a1234";
  
  String sql = "";
  
  int cnt = 0;
  
  protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=UTF-8");
    int proNo = Integer.parseInt(request.getParameter("proNo"));
    int amount = Integer.parseInt(request.getParameter("amount"));
    ResultSet rs = null;
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      this.sql = "select * from wearing where prono=?";
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul", "root", "a1234");
      con.setAutoCommit(false);
      PreparedStatement pstmt = con.prepareStatement(this.sql);
      pstmt.setInt(1, proNo);
      rs = pstmt.executeQuery();
      if (rs.next()) {
        this.sql = "update wearing set amount=amount+? where prono=?";
        pstmt = con.prepareStatement(this.sql);
        pstmt.setInt(1, amount);
        pstmt.setInt(2, proNo);
        pstmt.executeUpdate();
      } else {
        this.sql = "insert into wearing(prono, amount) values (?, ?)";
        pstmt = con.prepareStatement(this.sql);
        pstmt.setInt(1, proNo);
        pstmt.setInt(2, amount);
        pstmt.executeUpdate();
      } 
      response.sendRedirect("GetProductDetailCtrl?proNo=" + proNo);
      con.commit();
      con.setAutoCommit(true);
      pstmt.close();
      con.close();
    } catch (Exception e) {
      e.printStackTrace();
    } 
  }
}
