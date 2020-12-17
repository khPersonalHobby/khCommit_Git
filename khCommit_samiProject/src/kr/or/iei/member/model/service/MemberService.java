package kr.or.iei.member.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kr.or.iei.common.JDBCTemplate;
import kr.or.iei.member.model.dao.MemberDAO;
import kr.or.iei.member.model.vo.Member;
import kr.or.iei.member.model.vo.MemberAddress;
import kr.or.iei.member.model.vo.MemberDate;
import kr.or.iei.member.model.vo.MemberPageData;

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

	public MemberPageData selectAllMemberPage(int currentPage) {
		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage = 10;  // 한 페이지당 보여줄 회원 정보 수

		MemberPageData mpd = mDAO.selectAllMemberPage(conn, currentPage, recordCountPerPage);
	
		int naviCountPerPage = 5;
		String pageNavi = mDAO.getPageNavi(conn, currentPage, recordCountPerPage, naviCountPerPage);
		
		mpd.setPageNavi(pageNavi);

		
		return mpd;
		
	}


}


























