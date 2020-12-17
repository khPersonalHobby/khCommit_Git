package kr.or.iei.member.model.vo;

import java.util.ArrayList;

public class MemberPageData {
	private ArrayList<Member> mList;
	private ArrayList<MemberDate> mdList;
	private String pageNavi;
	public MemberPageData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberPageData(ArrayList<Member> mList, ArrayList<MemberDate> mdList, String pageNavi) {
		super();
		this.mList = mList;
		this.mdList = mdList;
		this.pageNavi = pageNavi;
	}
	public ArrayList<Member> getmList() {
		return mList;
	}
	public void setmList(ArrayList<Member> mList) {
		this.mList = mList;
	}
	public ArrayList<MemberDate> getMdList() {
		return mdList;
	}
	public void setMdList(ArrayList<MemberDate> mdList) {
		this.mdList = mdList;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
	
	
}
