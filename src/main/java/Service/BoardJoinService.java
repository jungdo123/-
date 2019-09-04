package Service;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import Command.BoardJoinCommand;
import Model.DTO.Board;
import Repository.SessionRepository;
@Service
public class BoardJoinService {
	@Autowired
	private SessionRepository sessionRepository;
	@Autowired
	private Board board ;
	private String path;
	
	private String originalFile = null;
	private String originalFileExtension = null;
	private String storedFileName = null;
	private String filePath = null;
	private String realPath = null;
    
	private SimpleDateFormat dt = new SimpleDateFormat("hhMM");
	
	private Date date;
	private Timestamp tst;
	public void setMember(Board board) {
		this.board = board;
	}

	public String boardInsert(Model model, 
			BoardJoinCommand mjc,HttpServletRequest request) throws ParseException {
		System.out.println("boardInsert   : " + mjc.getDoSi10());
		filePath = "WEB-INF\\view\\UploadFile\\upload\\";
		realPath = request.getServletContext().getRealPath(filePath);
		
		MultipartFile report = mjc.getImage();
		originalFile = report.getOriginalFilename();
		originalFileExtension =			originalFile.substring(originalFile.lastIndexOf("."));
		storedFileName = UUID.randomUUID().toString().replace("-", "")+ originalFileExtension;
		
		File file = new File(realPath + "\\" +storedFileName);
		
		try {
			report.transferTo(file);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		
		
		board.setDoSi(mjc.getDoSi10());
		board.setKu(mjc.getKu10());
		board.setWhCpn(mjc.getWhCpn10());
		
		date = dt.parse(mjc.getItemRun10());
		tst = new Timestamp(date.getTime());
		board.setItemRun2(tst);
		
		board.setItemEx(mjc.getItemEx10());
		board.setItemBuyPr2(Integer.parseInt((mjc.getItemBuyPr10())));
		board.setItemStk2(Integer.parseInt((mjc.getItemStk10())));
		
		
		board.setItemMimit2(Integer.parseInt((mjc.getItemMimit10())));
		board.setRsSort(mjc.getRsSort10());
		board.setItemImg(originalFile);
		board.setImgName(storedFileName);
		System.out.println(realPath +  storedFileName);
	
			sessionRepository.insertBoard(board);
			path = "BoardView/boardList";					
		return path;
	}
}
