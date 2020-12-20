package kr.or.iei.member.model.vo;

import kr.or.iei.img.model.vo.Img;

public class MemberAll {
	private Member m;
	private MemberAddress ma;
	private Img img;
	private MemberDate md;
	
	public MemberAll() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberAll(Member m, MemberAddress ma, Img img, MemberDate md) {
		super();
		this.m = m;
		this.ma = ma;
		this.img = img;
		this.md = md;
	}

	public Member getM() {
		return m;
	}

	public void setM(Member m) {
		this.m = m;
	}

	public MemberAddress getMa() {
		return ma;
	}

	public void setMa(MemberAddress ma) {
		this.ma = ma;
	}

	public Img getImg() {
		return img;
	}

	public void setImg(Img img) {
		this.img = img;
	}

	public MemberDate getMd() {
		return md;
	}

	public void setMd(MemberDate md) {
		this.md = md;
	}
	

}