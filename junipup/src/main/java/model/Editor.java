package model;

import org.springframework.web.multipart.MultipartFile;

public class Editor {

	private MultipartFile Filedata;

	public MultipartFile getFiledata() {
		return Filedata;
	}

	public void setFiledata(MultipartFile filedata) {
		Filedata = filedata;
	}

}
