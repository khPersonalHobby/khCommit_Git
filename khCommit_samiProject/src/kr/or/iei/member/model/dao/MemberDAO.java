package kr.or.iei.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.or.iei.common.JDBCTemplate;
import kr.or.iei.member.model.vo.Member;
import kr.or.iei.member.model.vo.MemberAddress;
import kr.or.iei.member.model.vo.MemberAll;
import kr.or.iei.member.model.vo.MemberDate;
import kr.or.iei.member.model.vo.MemberPageData;

public class MemberDAO {

	public boolean insertMember(Connection conn, Member m, MemberAddress ma) {
		PreparedStatement pstmt = null;
		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		PreparedStatement pstmt3 = null;

		int result0 = 0;
		int result1 = 0;
		int result2 = 0;
		int result3 = 0;
		boolean result = false;
		String query = "INSERT INTO IMG VALUES(IMG_NO_SEQ.NEXTVAL,'회원1 프로필','변경된 회원1 프로필 이름', '회원1 프로필 경로','','N')";
		String query1 = "INSERT INTO MEMBER VALUES(MEMBER_NO_SEQ.NEXTVAL,?,?,?,?,?,?,IMG_NO_SEQ.CURRVAL)";
		String query2 = "INSERT INTO MEMBER_DATE VALUES(MEMBER_NO_SEQ.CURRVAL,SYSDATE,'','N')";
		String query3 = "INSERT INTO MEMBER_ADDRESS VALUES(MEMBER_NO_SEQ.CURRVAL,?,?)";

		try {
			pstmt = conn.prepareStatement(query);
			result0 = pstmt.executeUpdate();

			pstmt1 = conn.prepareStatement(query1);
			pstmt1.setString(1, m.getMemberId());
			pstmt1.setString(2, m.getMemberPw());
			pstmt1.setString(3, m.getMemberName());
			pstmt1.setString(4, m.getMemberNickname());
			pstmt1.setString(5, m.getMemberEmail());
			pstmt1.setString(6, m.getMemberPhone());
			result1 = pstmt1.executeUpdate();

			pstmt2 = conn.prepareStatement(query2);
			result2 = pstmt2.executeUpdate();

			pstmt3 = conn.prepareStatement(query3);
			pstmt3.setInt(1, ma.getPostNum());
			pstmt3.setString(2, ma.getAddress());
			result3 = pstmt3.executeUpdate();

			if (result0 > 0 && result1 > 0 && result2 > 0 && result3 > 0) {
				result = true;

			} else {
				result = false;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
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
			if (rset.next()) {
				userId = rset.getString("member_id");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return userId;

	}

	public MemberAll loginMember(Connection conn, String userId, String userPw) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		Member m = null;
		MemberAddress ma = null;
		MemberAll mAll = null;
		String query = "SELECT * FROM MEMBER LEFT JOIN MEMBER_DATE USING (MEMBER_NO) LEFT JOIN MEMBER_ADDRESS USING (MEMBER_NO) "
				+ "WHERE MEMBER_ID=? AND MEMBER_PW=? AND MEMBER_WITHDRAW_YN='N'";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPw);
			rset = pstmt.executeQuery();

			if (rset.next() == true) {
				m = new Member();
				ma = new MemberAddress();
				m.setMemberNo(rset.getInt("member_No"));
				m.setMemberId(rset.getString("member_Id"));
				m.setMemberPw(rset.getString("member_Pw"));
				m.setMemberName(rset.getString("member_Name"));
				m.setMemberNickname(rset.getString("member_Nickname"));
				m.setMemberEmail(rset.getString("member_Email"));
				m.setMemberPhone(rset.getString("member_Phone"));
				ma.setAddress(rset.getString("address"));
				ma.setPostNum(rset.getInt("post_num"));
				mAll = new MemberAll();
				mAll.setM(m);
				mAll.setMa(ma);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return mAll;
	}

	public int idCheck(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String query = "SELECT COUNT(*) FROM MEMBER WHERE MEMBER_ID=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		return result;

	}

	public int deleteMember(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		String query = "update member_date set MEMBER_WITHDRAW_YN='Y', MEMBER_WITHDRAW_DATE=SYSDATE where member_no=(select member_no from member where member_id=?)";
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

	public int nickCheck(Connection conn, String userNickname) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String query = "SELECT COUNT(*) FROM MEMBER WHERE MEMBER_NICKNAME=?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNickname);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		return result;
	}

	public int updateMember(Connection conn, MemberAll mAll) {
		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		String query1 = "update member " + "set member_pw=?, member_name=?, " + "member_email=?, member_phone=?"
				+ " where member_id=? ";

		String query2 = "update member_address set address=?, post_Num=? where member_no=(select member_no from member where member_id=?)";
		int result1 = 0;
		int result2 = 0;
		int result = 0;
		try {
			pstmt1 = conn.prepareStatement(query1);
			pstmt1.setString(1, mAll.getM().getMemberPw());
			pstmt1.setString(2, mAll.getM().getMemberName());
			pstmt1.setString(3, mAll.getM().getMemberEmail());
			pstmt1.setString(4, mAll.getM().getMemberPhone());
			pstmt1.setString(5, mAll.getM().getMemberId());

			result1 = pstmt1.executeUpdate();

			pstmt2 = conn.prepareStatement(query2);
			pstmt2.setString(1, mAll.getMa().getAddress());
			pstmt2.setInt(2, mAll.getMa().getPostNum());
			pstmt2.setString(3, mAll.getM().getMemberId());
			result2 = pstmt2.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt2);
			JDBCTemplate.close(pstmt1);
		}
		if (result1 > 0 && result2 > 0) {
			result = 1;
		}
		return result;

	}

	public String findIdPhone(Connection conn, String userNamePhone, String phone) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String memberId = null;
		String query = "SELECT * FROM MEMBER LEFT JOIN MEMBER_DATE USING (MEMBER_NO) WHERE MEMBER_NAME=? AND MEMBER_PHONE=? AND MEMBER_WITHDRAW_YN='N'";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNamePhone);
			pstmt.setString(2, phone);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				memberId = rset.getString("member_id");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return memberId;

	}

	public String findIdEmail(Connection conn, String userNameEmail, String email) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String memberId = null;
		String query = "SELECT * FROM MEMBER LEFT JOIN MEMBER_DATE USING (MEMBER_NO) WHERE MEMBER_NAME=? AND MEMBER_EMAIL=? AND MEMBER_WITHDRAW_YN='N'";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNameEmail);
			pstmt.setString(2, email);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				memberId = rset.getString("member_id");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return memberId;
	}

	public Member findPwEmail(Connection conn, String userNameEmail, String userIdEmail, String email) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		Member m = null;
		String query = "SELECT * FROM MEMBER LEFT JOIN MEMBER_DATE USING (MEMBER_NO) "
				+ "WHERE MEMBER_NAME=? AND MEMBER_ID=? AND MEMBER_EMAIL=? AND MEMBER_WITHDRAW_YN='N'";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNameEmail);
			pstmt.setString(2, userIdEmail);
			pstmt.setString(3, email);
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

	public Member findPwPhone(Connection conn, String userNamePhone, String userIdPhone, String phone) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		Member m = null;
		String query = "SELECT * FROM MEMBER LEFT JOIN MEMBER_DATE USING (MEMBER_NO) "
				+ "WHERE MEMBER_NAME=? AND MEMBER_ID=? AND MEMBER_PHONE=? AND MEMBER_WITHDRAW_YN='N'";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userNamePhone);
			pstmt.setString(2, userIdPhone);
			pstmt.setString(3, phone);
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

	public int updateNewPw(Connection conn, String newPw, String userId) {
		PreparedStatement pstmt = null;
		String query = "UPDATE MEMBER SET MEMBER_PW=? WHERE MEMBER_ID=?";

		int result = 0;

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, newPw);
			pstmt.setString(2, userId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;

	}
	
	
public ArrayList<MemberAll> selectAllMemberPage(Connection conn, int currentPage, int recordCountPerPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<MemberAll> mAllList = new ArrayList<MemberAll>();
		MemberAll mAll = null;
		Member m = null;
		MemberDate md = null;
		
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;
		
		/*String query = "SELECT * FROM (SELECT * FROM MEMBER LEFT JOIN MEMBER_DATE USING (MEMBER_NO) ORDER BY MEMBER_NO) WHERE ROWNUM between ? and ?";*/
		String query = "SELECT * FROM (SELECT ROW_NUMBER() OVER(order by member_no) AS Row_Num,member.* FROM member) "
				+ "MEMBER LEFT JOIN MEMBER_DATE USING (MEMBER_NO) WHERE Row_Num between ? and ?";

		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rset = pstmt.executeQuery();

			while(rset.next()) {
				mAll = new MemberAll();
				m = new Member();
				md = new MemberDate();
				
				m.setMemberNo(rset.getInt("member_no"));
				m.setMemberId(rset.getString("member_id"));
				m.setMemberPw(rset.getString("member_pw"));
				m.setMemberName(rset.getString("member_name"));
				m.setMemberNickname(rset.getString("member_nickname"));
				m.setMemberEmail(rset.getString("member_email"));
				m.setMemberPhone(rset.getString("member_phone"));	
				
				md.setMemberJoinDate(rset.getDate("member_join_date"));
				md.setMemberWithdrawDate(rset.getDate("member_withdraw_date"));
				md.setMemberWithdrawYN((rset.getString("member_withdraw_YN")).charAt(0));
				
				mAll.setM(m);
				mAll.setMd(md);
				mAllList.add(mAll);
				
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
			
		}
		
		return mAllList;

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
			sb.append("<a href='/memberAllListPage.kh?currentPage="+(startNavi-1)+"'>< < </a> ");
		}
		
		for(int i = startNavi; i<=endNavi; i++) {
			if(i==currentPage) {
				sb.append("<a href='/memberAllListPage.kh?currentPage="+i+"'><b>"+i+"</b></a> ");
						
			} else {
				sb.append("<a href='/memberAllListPage.kh?currentPage="+i+"'>"+i+"</a> ");
			}
		}
		
		if(endNavi != pageTotalCount) {
			sb.append("<a href='/memberAllListPage.kh?currentPage="+(endNavi+1)+"'> > </a> ");
		}
		
		return sb.toString(); 
		
		
		
	}

	public int memberTotalCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int memberTotalCount = 0;
		
		String query = "SELECT COUNT(*) as totalCount FROM member";
		
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

	public int memberStateUpdate(Connection conn, int memberNo, char memberWithdrawYN) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = null;
		
		if(memberWithdrawYN=='Y') {
			query = "update member_date set member_withdraw_YN=?, MEMBER_WITHDRAW_DATE=sysdate where member_no=?";
		} else {
			query = "update member_date set member_withdraw_YN=?, MEMBER_WITHDRAW_DATE='' where member_no=?";
		}
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, Character.toString(memberWithdrawYN));
			pstmt.setInt(2, memberNo);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public ArrayList<MemberAll> memberOneListPage(Connection conn, int currentPage, int recordcountPerPage,
			String searchOpt, String keyword) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<MemberAll> mAllList = new ArrayList<MemberAll>();

		int start = currentPage * recordcountPerPage - (recordcountPerPage - 1);
		int end = currentPage * recordcountPerPage;

		String query = "SELECT * FROM (SELECT ROW_NUMBER() OVER(order by member_no) AS Row_Num,member.* FROM member) "
				+ "MEMBER LEFT JOIN MEMBER_DATE USING (MEMBER_NO) WHERE Row_Num between ? and ? and " +searchOpt+ " like ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			pstmt.setString(3, "%"+keyword+"%");
			rset = pstmt.executeQuery();

			while (rset.next()) {
				MemberAll mAll = new MemberAll();
				Member m = new Member();
				MemberDate md = new MemberDate();

				m.setMemberNo(rset.getInt("member_No"));
				m.setMemberId(rset.getString("member_Id"));
				m.setMemberPw(rset.getString("member_Pw"));
				m.setMemberName(rset.getString("member_Name"));
				m.setMemberNickname(rset.getString("member_Nickname"));
				m.setMemberEmail(rset.getString("member_Email"));
				m.setMemberPhone(rset.getString("member_Phone"));

				md.setMemberJoinDate(rset.getDate("member_join_date"));
				md.setMemberWithdrawDate(rset.getDate("member_withdraw_date"));
				md.setMemberWithdrawYN((rset.getString("member_withdraw_YN")).charAt(0));

				mAll.setM(m);
				mAll.setMd(md);
				mAllList.add(mAll);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);

		}

		return mAllList;
	}

	public String getPageNavi(Connection conn, int currentPage, int recordcountPerPage, int naviCountPerPage,
			String searchOpt, String keyword) {
		// 키워드를 바탕으로 검색된 pageNavifmf 만드는 메소드
				int memberTotalCount = MemberSearchTotalCount(conn, searchOpt, keyword);
				int pageTotalCount;

				if (memberTotalCount % recordcountPerPage > 0) {
					pageTotalCount = memberTotalCount / recordcountPerPage + 1;
					// pageTotalCount = 108 / 5 + 1 -> 22page
				} else {
					pageTotalCount = memberTotalCount / recordcountPerPage + 0;
					// pageTotalCount = 105 / 5 + 0 -> 21page
				}
				int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
				int endNavi = startNavi + naviCountPerPage - 1;

				if (endNavi > pageTotalCount) {
					endNavi = pageTotalCount;
				}

				// pageNavi 구현
				StringBuilder sb = new StringBuilder();

				// 만약 첫 번째 PageNavi가 아니라면 '<' 모양을 추가해라
				if (startNavi != 1) {
					sb.append(
							"<a href='/OneListPage.kh?keyword=" + keyword + "&currentPage=" + (startNavi - 1) + "'> < </a> ");
				}

				for (int i = startNavi; i <= endNavi; i++) {
					if (i == currentPage) {
						sb.append("<a href='/OneListPage.kh?keyword=" + keyword + "&currentPage=" + i + "'><b>" + i
								+ "</b></a> ");
					} else {
						sb.append("<a href='/OneListPage.kh?keyword=" + keyword + "&currentPage=" + i + "'>" + i + "</a> ");
					}
				}
				// 마지막 pageNavi가 아니라면 '>' 모양을 추가해라

				if (endNavi != pageTotalCount) {
					sb.append("<a href='/OneListPage.kh?keyword=" + keyword + "&currentPage=" + (endNavi + 1) + "'> > </a> ");
				}

				// System.out.println(sb);

				return sb.toString();
	}
	
	private int MemberSearchTotalCount(Connection conn, String searchOpt, String keyword) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;

		int memberSearchTotalCount = 0;
		String query = "select count(*) as totalCount from member where " +searchOpt+ " like ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, "%"+keyword+"%");
			rset = pstmt.executeQuery();
			rset.next();
			memberSearchTotalCount = rset.getInt("totalCount");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return memberSearchTotalCount;
	}

}














