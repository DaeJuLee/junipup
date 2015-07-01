package controller;

import java.util.List;

import model.AndroidBoard;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.AndroidService;
import service.Paging;

@Controller
public class AndroidController {

	@Autowired
	AndroidService service;
	
	@RequestMapping(value="androidMain")
	public String androidMain(AndroidBoard android, String currentPage, Model model){
//		service.insertBoard();
		int total = service.total();
		System.out.println("int total : " + total);
		Paging pg = new Paging(total, currentPage);
		android.setStart(pg.getStart());
		android.setEnd(pg.getEnd());
		List<AndroidBoard> list = service.listAndroid(android);
		model.addAttribute("list", list);
		model.addAttribute("pg", pg);
		return "/android/androidMain";
	}
	
	@RequestMapping(value="androidInsertForm")
	public String androidInsertForm(Model model){
		return "/android/androidInsertForm";
	}
	
	@RequestMapping(value = "androidInsert", method=RequestMethod.POST)
	public String androidInsert(AndroidBoard android, Model model){
		android.setContent(android.getContent().replaceAll("\n", "").replaceAll("\t", "").replaceAll("\r", "").replaceAll("'", "&apos;"));
		int result = service.androidInsert(android);
		//int bnum = service.androidSelectBnum(android.getNickname());
		if(result > 0){
			return "redirect:androidUpdateForm.do?"+android.getBnum();
		}else{
			return "/android/androidInsertForm";
		}
	}
	
	@RequestMapping(value = "androidDetail")
	public String androidDetail(int bnum, Model model){
		AndroidBoard android = service.androidDetail(bnum);
		model.addAttribute("androidDetail", android);
		return "/android/androidDetail";
	}
	
	@RequestMapping(value = "androidUpdateForm")
	public String androidUpdateForm(int bnum, Model model){
		AndroidBoard android = service.androidDetail(bnum);
		model.addAttribute("androidDetail", android);
		return "/android/androidUpdateForm";
	}
	
	@RequestMapping(value="androidUpdateCheck")
	public String androidUpdateCheck(AndroidBoard android, Model model){
		model.addAttribute("androidCheck", android);
		return "/android/androidUpdateCheck";
	}
	
	@RequestMapping(value = "androidUpdate")
	public String androidUpdate(AndroidBoard android, Model model){
		int result = service.androidUpdate(android);
		if(result > 0){
			return "redirect:androidMain.do";
		}else{
			return "forward:androidUpdateForm.do";
		}
	}
	
	@RequestMapping(value = "androidDelete")
	public String androidDelete(int bnum, Model model){
		service.androidDelete(bnum);
		return "redirect:androidMain.do";
	}
	
	@RequestMapping(value="androidDeleteCheck")
	public String androidDeleteCheck(int bnum, Model model){
		AndroidBoard board = new AndroidBoard();
		board.setBnum(bnum);
		model.addAttribute("bnum", board);
		return "/android/androidDeleteCheck";
	}
	
//	@RequestMapping(value="file_uploader")
//	public String fileUploader(HttpServletRequest request, HttpServletResponse response, Editor editor ){
//		String return1 = request.getParameter("callback");
//		String return2 = "?callback_func="+request.getParameter("callback_func");
//		String return3 = "";
//		String name = "";
//		try{
//			if(editor.getFiledata() != null && editor.getFiledata().getOriginalFilename() != null
//					&& !editor.getFiledata().getOriginalFilename().equals("")){
//				name = editor.getFiledata().getOriginalFilename().substring(
//						editor.getFiledata().getOriginalFilename().lastIndexOf(File.separator)+1);
//				String filename_ext = name.substring(name.lastIndexOf(".")+1);
//				filename_ext = filename_ext.toLowerCase();
//				String[] allow_file={"jpg", "png", "bmp", "gif"};
//				int cnt = 0;
//				for(int i = 0; i < allow_file.length; i++){
//					if(filename_ext.equals(allow_file)){
//						cnt++;
//					}
//				}
//				if(cnt==0){
//					return3 = "&errstr="+name;
//				}else{
//					//파일 기본경로
//					String dftFilePath = request.getSession().getServletContext().getRealPath("/");
//					//파일 기본경로_상세경로
//					String filePath = dftFilePath + "resources" + File.separator + "editor" + File.separator + "upload" + File.separator;
//					File file = new File(filePath);
//					if(!file.exists()){
//						file.mkdirs();
//					}
//					String realFileNm = "";
//					SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
//						String today = formatter.format(new java.util.Date());
//						realFileNm = today + UUID.randomUUID().toString() + name.substring(name.lastIndexOf('.'));
//						String rlFileNm = filePath + realFileNm;
//						//서버에 파일쓰기
//						editor.getFiledata().transferTo(new File(rlFileNm));
//						//서버에 파일쓰기
//					return3 += "&bNewLine=true";
//					return3 += "&sFileName" + name;
//					return3 += "&sFileURL=/resources/editor/upload"+realFileNm;
//				}
//			}
//		}catch(Exception e){
//			e.printStackTrace();
//		}
//		return "redirect:"+return1+return2+return3;
//	}
//	
//	@RequestMapping(value="file_uploader_html5")
//	public void fileUploaderHtml5(HttpServletRequest request, HttpServletResponse response, Editor editor ){
//		
//		try{
//			//파일정보
//			String sFileInfo = "";
//			//파일명을 받는다 - 일반 원본파일명
//			String filename = request.getHeader("file-name");
//			//파일 확장자
//			String filename_ext = filename.substring(filename.lastIndexOf(".")+1);
//			//확장자를 소문자로 변경
//			filename_ext = filename_ext.toLowerCase();
//			//이미지 검증 배열 변수
//			String[] allow_file = {"jpg","png","bmp","gif"};
//			//돌리면서 확장자가 이미지인지
//			int cnt = 0;
//			for(int i = 0; i < allow_file.length;i++){
//				if(filename_ext.equals(allow_file[i])){
//					cnt++;
//				}
//			}
//			//이미지가 아님
//			if(cnt==0){
//				Prin
//			}
//		}catch(Exception e){
//			e.printStackTrace();
//		}
//		
//	}
}
