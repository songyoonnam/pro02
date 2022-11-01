package kr.co.myshop.vo;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.myshop.vo.Notice;


@WebServlet("/boardListCtrl")
public class boardListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "mariadb://locolhost:6601/myshop?serverTimezone=Asial/Seoul";
	private static final String USER = "root";
	private static final String PASS = "a1234";
	string = sql();
       

    public boardListCtrl() {
        super();

        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			
			List<Notice> notiList = new ArrayList<Notice>();
			
			while(rs.next()){
				Notice vo = new Notice();
				vo.setnotiNo(rs.getInt("notino"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setAuthor(rs.getString("author"));
				vo.setResdate(rs.getString("resdate"));
				notiList.add(vo);		
			}
		request.setAttribute("notiList",notiList);
		
		RequestDispatcher view = request.getRequestDispatcher("./notice/boardList.jsp")
		view.forward(request, respone);
		
		rs.close();
		pstmt.close();
		con.close();
				
		} catch {Exception e
			
		}
	}



}
