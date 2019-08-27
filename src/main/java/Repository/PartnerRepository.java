package Repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Command.PartnerCommand;
import Model.DTO.Partner;

@Repository
public class PartnerRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "PartnerMapper";
	
	public void insertPartner(Partner partner) {
		String statement = namespace + ".partnerInsert";
		sqlSession.insert(statement, partner);
	}
	public List<Partner> partnerSelect(PartnerCommand partnerCommand){
		List<Partner> result = null;
		String statement = namespace + ".partnerSelect";
		result = sqlSession.selectList(statement, partnerCommand);
		return result;
	}
	public Partner selectPartner(String partnerId) {
		System.out.println("selectPartner : " + partnerId);
		Partner partner = null;
		String statement = namespace + ".partnerSelectId";
		partner = sqlSession.selectOne(statement, partnerId);
		System.out.println("selectPartner : " + partner.getCommission());
		return partner;
	}
	public int updatePartner(Partner partner) {
		int result = 0;
		String statement = namespace+".updatePartner";
		result = sqlSession.update(statement,partner);
		return result;
	}
	public int partnerDel(Partner partner) {
		int result = 0;
		String statement = namespace + ".partnerDel";
		result = sqlSession.delete(statement, partner);
		return result;
				
	}
	
}
