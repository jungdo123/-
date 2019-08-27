package Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Command.PartnerCommand;
import Model.DTO.Partner;
import Repository.PartnerRepository;

@Service
public class PartnerAddService {
	@Autowired
	private PartnerRepository partnerRepository;
	@Autowired
	private Partner partner;
	public void setPartner(Partner partner) {
		this.partner = partner;
	}
	public String partnerInsert(Model model, PartnerCommand partnerCommand) {
		partner.setCompSortCode(partnerCommand.getCompSortCode()); // ī�װ�
		partner.setPartnerId(partnerCommand.getPartnerId()); // ���̵�
		partner.setCompName(partnerCommand.getCompName()); // ��ȣ��
		partner.setCompPres(partnerCommand.getCompPres()); // ����ָ�
		partner.setCompRun(partnerCommand.getCompRun());  // ��ð�
		partner.setCompRun1(partnerCommand.getCompRun1());
		partner.setCompAddr(partnerCommand.getCompAddr()); // �ּ�
		partner.setCompPh(partnerCommand.getCompPh()); // ����ó
		partner.setCommission(partnerCommand.getCommission());  // ������
		partner.setZone(partnerCommand.getZone());  //����
		partnerRepository.insertPartner(partner);
		
		return "MemberView/Main";
	}
	

}
