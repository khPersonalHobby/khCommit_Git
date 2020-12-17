package kr.or.iei.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.or.iei.common.JDBCTemplate;
import kr.or.iei.member.model.vo.Member;
import kr.or.iei.member.model.vo.MemberAddress;
import kr.or.iei.member.model.vo.MemberDate;
import kr.or.iei.member.model.vo.MemberPageData;

public class MemberDAO {

	public boolean insertMember(Connection conn, Member m, MemberAddress ma) {
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		PreparedStatement pstmt3 = null;
		
		int result1 = 0;
		int result2 = 0;
		int result3 = 0;
		boolean result = false;
		
		String query1 = "INSERT INTO MEMBER VALUES(MEMBER_NO_SEQ.NEXTVAL,?,?,?,?,?,?)";
		String query2 = "INSERT INTO MEMBER_DATE VALUES(MEMBER_NO_SEQ.CURRVAL,SYSDATE,'','N')";
		String query3 = "INSERT INTO MEMBER_ADDRESS VALUES(MEMBER_NO_SEQ.CURRVAL,?,?)";
	
		try {
			pstmt = conn.prepareStatement(query1);
			pstmt.setString(1, m.getMemberId());
			pstmt.setString(2, m.getMemberPw());
			pstmt.setString(3, m.getMemberName());
			pstmt.setString(4, m.getMemberNickname());
			pstmt.setString(5, m.getMemberEmail());
			pstmt.setString(6, m.getMemberPhone());
			result1 = pstmt.executeUpdate();
			
			pstmt2 = conn.prepareStatement(query2);
			result2 = pstmt2.executeUpdate();
			
			pstmt3 = conn.prepareStatement(query3);
			pstmt3.setInt(1, ma.getPostNum());
			pstmt3.setString(2, ma.getAddress());
			result3 = pstmt3.executeUpdate();
			
			if(result1>0 && result2>0 && result3>0) {
				result = true;
				
			}else {
				result = false;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
			JDBCTemplate.close(pstmt2);
			JDBCTemplate.close(pstmt3);
		}
		return result;
		
		
	}

public String findId(Connection conn, String phone, String userName) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String userId = null;
		String query = "SELECT * FROM MEMBER LEFT JOIN MEMBER_DATE USING (MEMBER_NO) WHERE MEMBER_PHONE=? AND MEMBER_NAME=? AND MEMBER_WITHDRAW_YN='N'";
		
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, phone);
			pstmt.setString(2, userName);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				userId = rset.getString("member_id");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return userId;
	
	}

public Member loginMember(Connection conn, String userId, String userPw) {
	PreparedStatement pstmt = null;
	ResultSet rset = null;

	Member m = null;

	String query = "SELECT * FROM MEMBER LEFT JOIN MEMBER_DATE USING (MEMBER_NO) WHERE MEMBER_ID=? AND MEMBER_PW=? AND MEMBER_WITHDRAW_YN='N'";
	try {
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, userId);
		pstmt.setString(2, userPw);
		rset = pstmt.executeQuery();

		if (rset.next() == true) {
			m = new Member();
			m.setMemberNo(rset.getInt("member_No"));
			m.setMemberId(rset.getString("member_Id"));
			m.setMemberPw(rset.getString("member_Pw"));
			m.setMemberName(rset.getString("member_Name"));
			m.setMemberNickname(rset.getString("member_Nickname"));
			m.setMemberEmail(rset.getString("member_Email"));
			m.setMemberPhone(rset.getString("member_Phone"));			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		JDBCTemplate.close(rset);
		JDBCTemplate.close(pstmt);
	}
	return m;
}

public MemberPageData selectAllMemberPage(Connection conn, int currentPage, int recordCountPerPage) {
	PreparedStatement pstmt = null;
	ResultSet rset = null;
	
	ArrayList<Member> mList = new ArrayList<Member>();
	ArrayList<MemberDate> mdList = new ArrayList<MemberDate>();
	
	MemberPageData mpd = new MemberPageData();
	mpd.setmList(mList);
	mpd.setMdList(mdList);
	
	int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
	int end = currentPage * recordCountPerPage;
	
	String query = "SELECT * FROM (SELECT * FROM MEMBER LEFT JOIN MEMBER_DATE USING (MEMBER_NO) ORDER BY MEMBER_NO) WHERE ROWNUM between ? and ?";
	
	try {
		pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, start);
		pstmt.setInt(2, end);

		rset = pstmt.executeQuery();

		while(rset.next()) {
			Member m = new Member();
			MemberDate md=new MemberDate();
			
			m.setMemberNo(rset.getInt("member_no"));
			m.setMemberId(rset.getString("member_id"));
			m.setMemberPw(rset.getString("member_pw"));
			m.setMemberName(rset.getString("member_name"));
			m.setMemberNickname(rset.getString("member_nickname"));
			m.setMemberEmail(rset.getString("member_email"));
			m.setMemberPhone(rset.getString("member_phone"));
			
			md.setMemberNo(rset.getInt("member_no"));
			md.setMemberJoinDate(rset.getDate("member_join_date"));
			md.setMemberWithdrawDate(rset.getDate("member_withdraw_date"));
			md.setMemberWithdrawYN((rset.getString("member_withdraw_YN")).charAt(0));
			
			mList.add(m);
			mdList.add(md);
		}

	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		JDBCTemplate.close(rset);
		JDBCTemplate.close(pstmt);
		
	}
	
	return mpd;

}


public String getPageNavi(Connection conn, int currentPage, int recordCountPerPage, int naviCountPerPage) {
	
	int memberTotalCount = memberTotalCount(conn);
	
	int pageTotalCount;
	
	if(memberTotalCount % recordCountPerPage > 0) {
		pageTotalCount = memberTotalCount / recordCountPerPage + 1;
	} else {
		pageTotalCount = memberTotalCount / recordCountPerPage + 0;
	}
	
	int startNavi = (currentPage - 1) / (naviCountPerPage) * naviCountPerPage + 1;
	int endNavi = startNavi + naviCountPerPage - 1;
	
	if(endNavi > pageTotalCount) {
		endNavi = pageTotalCount;
	}
	
	StringBuilder sb = new StringBuilder();
	
	if(startNavi != 1) {
		sb.append("<a href='/memberAllListPage.kh?currentPage="+(startNavi-1)+"'><</a> ");
	}
	
	for(int i = startNavi; i<=endNavi; i++) {
		if(i==currentPage) {
			sb.append("<a href='/memberAllListPage.kh?currentPage="+i+"'><b>"+i+"</b></a> ");	
		} else {
			sb.append("<a href='/memberAllListPage.kh?currentPage="+i+"'>"+i+"</a> ");	
		}
	}
	
	if(endNavi != pageTotalCount) {
		sb.append("<a href='/memberAllListPage.kh?currentPage="+(startNavi-1)+"'><</a> ");
	}
	
	return sb.toString();
	
	
	
}

public int memberTotalCount(Connection conn) {
	PreparedStatement pstmt = null;
	ResultSet rset = null;
	int memberTotalCount = 0;
	
	String query = "SELECT COUNT(*) as totalCount "
			+ "FROM member";
	
	try {
		pstmt = conn.prepareStatement(query);
		rset = pstmt.executeQuery();
		rset.next();
		
		memberTotalCount = rset.getInt("totalCount");
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		JDBCTemplate.close(rset);
		JDBCTemplate.close(pstmt);
	}
	
	return memberTotalCount;
}

}


























