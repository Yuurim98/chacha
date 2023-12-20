package kr.co.chacha.mypage;

import static org.hamcrest.CoreMatchers.nullValue;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MypageDAO {
	
	public MypageDAO() {
		System.out.println("----MypageDAO() 객체 생성");
	}//MypageDAO() end
	
	
@Autowired
SqlSession sqlSession;
	

	public List<MypageDTO> myeduList(String s_id) {		
		return sqlSession.selectList("mypage.myeduList", s_id);
		
	}//myeduList() end

	
	public List<MypageDTO> mysvList(String s_id) {		
		return sqlSession.selectList("mypage.mysvList", s_id);
	}//mvsList() end
	
	
	public List<MypageDTO> jjimList() {		
		return sqlSession.selectList("mypage.jjimList");
	}//jjimList() end
	
	
}//end













