package com.omnicuris.cme.utils;

public class ResponseStatus {

	public ResponseStatus() {
	}

	public ResponseStatus(String msg, boolean status) {
		this.msg = msg;
		this.status = status;
	}

	private String msg;
	private boolean status;

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}
