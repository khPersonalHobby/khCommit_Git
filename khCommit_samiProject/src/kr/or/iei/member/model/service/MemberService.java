package kr.or.iei.member.model.service;

import java.sql.Connection;

import kr.or.iei.common.JDBCTemplate;
import kr.or.iei.member.model.dao.MemberDAO;
import kr.or.iei.member.model.vo.Member;
import kr.or.iei.member.model.vo.MemberAddress;

public class MemberService {
	
	MemberDAO mDAO = new MemberDAO();
	
	public boolean insertMember(Member m, MemberAddress ma) {
		Connection conn = JDBCTemplate.getConnection();
		boolean result = mDAO.insertMember(conn,m,ma);
		if(result==true)
		{
			JDBCTemplate.commit(conn);
		}else
		{
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
		
	}

	public String findId(String phone, String userName) {
			Connection conn = JDBCTemplate.getConnection();
			String userId = mDAO.findId(conn, phone, userName);
			JDBCTemplate.close(conn);
			return userId;
		}

	public Member loginMember(String userId, String userPw) {
		Connection conn =JDBCTemplate.getConnection();
		Member m = mDAO.loginMember(conn, userId, userPw);
		JDBCTemplate.close(conn);
		return m;	
	}

}
