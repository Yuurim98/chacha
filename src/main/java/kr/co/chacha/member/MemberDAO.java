package kr.co.chacha.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	public MemberDAO() {
		System.out.println("----MemberDAO()객체 생성");
	}//end
	
	
	@Autowired
	SqlSession sqlSession;
	
	
	//로그인폼 전송
	public String loginProc(MemberDTO memberdto) {
		return sqlSession.selectOne("member.check", memberdto);
	}//loginProc() end
	
	
	//회원가입 폼 전송
	public int memberInsert(MemberDTO memberdto) {
		return sqlSession.insert("member.insert", memberdto);
	}//loginInsert() end
	
	
	//아이디 찾기
	public String findID(MemberDTO memberdto) {
		return sqlSession.selectOne("member.findID", memberdto);
	}//findID() end

	
	//비밀번호 찾기
	public String findPasswd(MemberDTO memberdto) {
		return sqlSession.selectOne("member.findPasswd", memberdto);
	}//findID() end
	
	
	//비밀번호 확인
	public int checkPasswd(String passwd) {
		return sqlSession.selectOne("member.checkPasswd", passwd);
	}//findID() end
	
	
	
}//end








