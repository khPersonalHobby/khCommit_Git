package kr.or.iei.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.or.iei.common.JDBCTemplate;
import kr.or.iei.member.model.vo.Member;
import kr.or.iei.member.model.vo.MemberAddress;

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

public int deleteMember(Connection conn, String userId) {
	PreparedStatement pstmt = null;
	String query ="update member_date set MEMBER_WITHDRAW_YN='Y' where member_no=(select member_no from member where member_id='user2')";
	/*
	 * String query =
	 * "UPDATE MEMBER LEFT JOIN MEMBER_DATE set MEMBER_WITHDRAW_YN='Y' where MEMBER_ID=?"
	 * ;
	 */
	int result = 0;
	try {
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, userId);
		result = pstmt.executeUpdate(); // insert delete update는 앞에 꺼로 해야함

	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		JDBCTemplate.close(pstmt);
	}

	return result;
}



public int updateMember(Connection conn, Member m) {
	    PreparedStatement pstmt =null;
		String query = "update member " + 
				"set member_pw=?, member_name=?, member_nickname=?, " + 
				"member_email=?, member_phone=?" + 
				" where member_id=? ";
		int result=0;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, m.getMemberPw());
			pstmt.setString(2, m.getMemberName());
			pstmt.setString(3, m.getMemberNickname());
			pstmt.setString(4, m.getMemberEmail());
			pstmt.setString(5, m.getMemberPhone());
			pstmt.setString(6, m.getMemberId());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
		
		
		
		
		
		
		
	
}

}
