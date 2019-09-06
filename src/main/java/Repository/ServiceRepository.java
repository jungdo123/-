package Repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.DTO.Partner;

@Repository
public class ServiceRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "PartnerMapper";

	public Partner selectPartner(String partnerId) {
		System.out.println("selectPartner : " + partnerId);
		Partner partner = null;
		String statement = namespace + ".partnerSelectId";
		partner = sqlSession.selectOne(statement, partnerId);
		System.out.println("selectPartner : " + partner.getCommission());
		return partner;
	}
}
