package kr.or.iei.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.iei.member.model.service.MemberService;
import kr.or.iei.member.model.vo.Member;

/**
 * Servlet implementation class MemberModifyServlet
 */
@WebServlet("/Modify.kh")
public class MemberModifyServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberModifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      //response.getWriter().append("Served at: ").append(request.getContextPath());
      request.setCharacterEncoding("utf-8");
      
      //2. view페이지에서 보낸 데이터를 자바 변수에 저장
         
      HttpSession session = request.getSession();
      
      String memberId = ((Member)session.getAttribute("member")).getMemberId();
      String memberPw = request.getParameter("memberPw");
      String memberName = request.getParameter("memberName");
      String memberNickname = request.getParameter("memberNickname");
      String memberEmail = request.getParameter("memberEmail");
      
      String phone1 = request.getParameter("phone1");
      String phone2 = request.getParameter("phone2");
      String phone3 = request.getParameter("phone3");
      
      String memberPhone=phone1+phone2+phone3;
      
      Member m = new Member();
      m.setMemberId(memberId);
      m.setMemberPw(memberPw);
      m.setMemberName(memberName);
      m.setMemberNickname(memberNickname);
      m.setMemberEmail(memberEmail);
      m.setMemberPhone(memberPhone);
      
      // 비즈니스 로직 처리
      int result = new MemberService().updateMember(m);
      
       RequestDispatcher view = request.getRequestDispatcher("/views/member/myPage/modifyResult.jsp");
       if(result>0)
       {
          request.setAttribute("result", true);
          request.setAttribute("member", m);
          
       }else {
    	   request.setAttribute("result", false);
    	   request.setAttribute("member", m);
         
       }
       view.forward(request, response);

   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}