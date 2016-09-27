package com.portfolio.blog;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

//ignore "bytes" when return json format
@JsonIgnoreProperties({"bytes"}) 
public class FileMeta {

  private String fileName;
  private String fileSize;
  private String fileType;
  private String path; 
  public String getPath() {
	return path;
}

public void setPath(String path) {
	this.path = path;
}

private byte[] bytes;

public String getFileName() {
	return fileName;
}

public void setFileName(String fileName) {
	this.fileName = fileName;
}

public String getFileSize() {
	return fileSize;
}

public void setFileSize(String fileSize) {
	this.fileSize = fileSize;
}

public String getFileType() {
	return fileType;
}

public void setFileType(String fileType) {
	this.fileType = fileType;
}

public byte[] getBytes() {
	return bytes;
}

public void setBytes(byte[] bytes) {
	this.bytes = bytes;
}

       //setters & getters
  
  
}

