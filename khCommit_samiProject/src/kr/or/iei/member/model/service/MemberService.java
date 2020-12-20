package kr.or.iei.member.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kr.or.iei.common.JDBCTemplate;
import kr.or.iei.member.model.dao.MemberDAO;
import kr.or.iei.member.model.vo.Member;
import kr.or.iei.member.model.vo.MemberAddress;
import kr.or.iei.member.model.vo.MemberAll;
import kr.or.iei.member.model.vo.MemberPageData;

public class MemberService {

	MemberDAO mDAO = new MemberDAO();

	public boolean insertMember(Member m, MemberAddress ma) {
		Connection conn = JDBCTemplate.getConnection();
		boolean result = mDAO.insertMember(conn, m, ma);
		if (result == true) {
			JDBCTemplate.commit(conn);
		} else {
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

	public MemberAll loginMember(String userId, String userPw) {
		Connection conn = JDBCTemplate.getConnection();
		MemberAll mAll = mDAO.loginMember(conn, userId, userPw);
		JDBCTemplate.close(conn);
		return mAll;
	}

	public int idCheck(String userId) {
		Connection conn = JDBCTemplate.getConnection();
		int result = mDAO.idCheck(conn, userId);
		JDBCTemplate.close(conn);
		return result;
	}

	public int deleteMember(String userId) {
		Connection conn = JDBCTemplate.getConnection();
		int result = mDAO.deleteMember(conn, userId);
		if (result > 0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);

		return result;
	}

	public int nickCheck(String userNickname) {
		Connection conn = JDBCTemplate.getConnection();
		int result = mDAO.nickCheck(conn, userNickname);
		JDBCTemplate.close(conn);
		return result;
	}

	public int updateMember(MemberAll mAll) {
		Connection conn = JDBCTemplate.getConnection();
		int result = mDAO.updateMember(conn, mAll);
		if (result > 0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	public String findIdPhone(String userNamePhone, String phone) {
		Connection conn = JDBCTemplate.getConnection();
		String memberId = mDAO.findIdPhone(conn, userNamePhone, phone);
		JDBCTemplate.close(conn);
		return memberId;
	}

	public String findIdEmail(String userNameEmail, String email) {
		Connection conn = JDBCTemplate.getConnection();
		String memberId = mDAO.findIdEmail(conn, userNameEmail, email);
		JDBCTemplate.close(conn);
		return memberId;
	}

	public Member findPwEmail(String userNameEmail, String userIdEmail, String email) {
		Connection conn = JDBCTemplate.getConnection();
		Member m = mDAO.findPwEmail(conn, userNameEmail, userIdEmail, email);
		JDBCTemplate.close(conn);
		return m;
	}

	public Member findPwPhone(String userNamePhone, String userIdPhone, String phone) {
		Connection conn = JDBCTemplate.getConnection();
		Member m = mDAO.findPwPhone(conn, userNamePhone, userIdPhone, phone);
		JDBCTemplate.close(conn);
		return m;
	}

	public int updateNewPw(String newPw, String userId) {
		Connection conn = JDBCTemplate.getConnection();
		int result = mDAO.updateNewPw(conn, newPw, userId);
		if (result > 0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);

		return result;
	}
	
	public MemberPageData selectAllMemberPage(int currentPage) {
		Connection conn = JDBCTemplate.getConnection();
		int recordCountPerPage = 10;  // 한 페이지당 보여줄 회원 정보 수

		ArrayList<MemberAll> mAllList = mDAO.selectAllMemberPage(conn, currentPage, recordCountPerPage);
	
		int naviCountPerPage = 5;
		String pageNavi = mDAO.getPageNavi(conn, currentPage, recordCountPerPage, naviCountPerPage);
		
		MemberPageData mpd = new MemberPageData();
		mpd.setmAllList(mAllList);
		mpd.setPageNavi(pageNavi);
		JDBCTemplate.close(conn);
		
		return mpd;
		
	}

	public int memberStateUpdate(int memberNo, char memberWithdrawYN) {
		Connection conn = JDBCTemplate.getConnection();
		int result = mDAO.memberStateUpdate(conn, memberNo, memberWithdrawYN);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	public MemberPageData memberOneListPage(int currentPage, String searchOpt, String keyword) {
		Connection conn = JDBCTemplate.getConnection();
		int recordcountPerPage = 10;
		ArrayList<MemberAll> mAllList = mDAO.memberOneListPage(conn, currentPage, recordcountPerPage, searchOpt, keyword);
		
		int naviCountPerPage= 5; // pageNavi 값이 몇개씩 보여줄 것인지
		String pageNavi = mDAO.getPageNavi(conn, currentPage, recordcountPerPage, naviCountPerPage, searchOpt, keyword);
		
		MemberPageData mpd = new MemberPageData();
	    mpd.setmAllList(mAllList);
	    mpd.setPageNavi(pageNavi);
	    JDBCTemplate.close(conn);
	    
	    return mpd;	
	}
		
}



















