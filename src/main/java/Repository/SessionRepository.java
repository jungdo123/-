package Repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Command.EmailChangeCommand;
import Command.PwChangeCommand;
import Model.DTO.Board;
import Model.DTO.Member;
import Model.DTO.StartEndPage;

@Repository
public class SessionRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String board1 = "BoardMapper";
	private final String namespace = "MemberMapper";
	public List<String> selectEmail(){
		List<String> result = null;
		String statement =  namespace + ".selectEmail";
		result = sqlSession.selectList(statement);
		return result;
	}/*
	public List<Member> selectByRegdate(SearchCommand sc){
		List<Member> result = null;
		String statement =  namespace + ".selectByRegdate";
		result = sqlSession.selectList(statement, sc);
		return result;
	}/**/
	public int pwChange(PwChangeCommand pwChange) {
		int result = 0;
		String statement =  namespace + ".pwChange";
		result = sqlSession.update(statement, pwChange);
		return result;
	}
	public int nameChange(String memid, String rename) {
		Member member = new Member();
		int result = 0;
		member.setMemberId(memid);
		member.setMemberName(rename);
		String statement = namespace + ".nameChange";
		result = sqlSession.update(statement, member);
		return result;
	}
	/*
	public int updateCheck(String num, String reciver) {
		int result =0;
		Member member = new Member();
		member.setCheckNum(Long.parseLong(num));
		member.setEmail(reciver);
		String statement =  namespace + ".updateCheck";
		result = sqlSession.update(statement, member);
		return result;
	}*/
	public Member userCheck1(String memberId, String memberPw) {
		Member member = new Member();
		member.setMemberId(memberId);
		member.setMemberPw(memberPw);
		String statement =  namespace + ".userCheck1";
		member = sqlSession.selectOne(statement,member);
		return member;
	}
	/*
	public int updateMember(Member member) {
		int result = 0;
		String statement =  namespace + ".updateMember";
		result = sqlSession.update(statement, member);
		return result;
	}*/
	public int getListCount() {
		int result = 0;
		String statement =  namespace + ".getListCount"; 
		result = sqlSession.selectOne(statement);
		return result;
	}
	public List<Member> getMemberList(int page1,int limit){
		List<Member> result = null;
		Long startRow = ((long)page1 -1 ) * 10 +1;
		Long endRow = startRow + limit -1;
		StartEndPage startEndPage = new StartEndPage();
		startEndPage.setEndRow(endRow);
		startEndPage.setStartRow(startRow);
		String statement =  namespace + ".getMemberList"; 
		result = sqlSession.selectList(statement, startEndPage);
		return result;
	}
	public Member selectMember(String id1) {
		Member member = null;
		String statement =  namespace + ".memberSelectId"; 
		member = sqlSession.selectOne(statement, id1);
		System.out.println(member.getEmailAddr());
		return member;
	}
	public int memberDel(String memberId, String memberPw) {
		Member member = new Member();
		member.setMemberId(memberId);
		member.setMemberPw(memberPw);
		int result = 0;
		String statement =  namespace + ".memberDel"; 
		result = sqlSession.delete(statement, member);
		return result;
	}
	public Member userCheck(String memberId, String memberPw) {
		System.out.println("userCheck");
		Member member = new Member();
		member.setMemberId(memberId);
		member.setMemberPw(memberPw);
		String statement =  namespace + ".userCheck";
		member = sqlSession.selectOne(statement,member);
		return member;
	}
	public String getSelectId(String id1) {
		String memberId = null;
		String statement =  namespace + ".memberSelectId"; 
		Member member = sqlSession.selectOne(statement, id1);
		if(member != null) {
			memberId = member.getMemberId();
		}
		return memberId;
	}

	public void insertMember(Member member) {
		// TODO Auto-generated method stub
		String statement = namespace + ".memberInsert";
		sqlSession.insert(statement, member);
		
	}
	public int emailChange(EmailChangeCommand emailChange) {
		int result = 0;
		String statement =  namespace + ".emailChange";
		result = sqlSession.update(statement, emailChange);
		return result;
	}
	public void insertBoard(Board board) {
		String statement = board1 + ".boardInsert";
		sqlSession.insert(statement, board);

	}
	public  List<Board> getBoardList(int page1,int limit){
		List<Board> result = null;
		Long startRow = ((long)page1 -1 ) * 10 +1;
		Long endRow = startRow + limit -1;
		StartEndPage startEndPage = new StartEndPage();
		startEndPage.setEndRow(endRow);
		startEndPage.setStartRow(startRow);
		String statement =  board1 + ".getBoardList"; 
		result = sqlSession.selectList(statement, startEndPage);
		return result;
	}

	public int getBoardListCount() {
			int result = 0;
			String statement =  board1 + ".getListCount"; 
			result = sqlSession.selectOne(statement);
			return result;
		}
}
