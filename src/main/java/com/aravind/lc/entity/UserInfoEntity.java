package com.aravind.lc.entity;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class UserInfoEntity {
	@NotBlank(message = "*User name can't be blank")
	@Size(min = 3, max = 15, message = "*Your Name should be between 3-15")
	private String userName;
	@NotBlank(message = "*Crush name can't not be blank")
	@Size(min = 3, max = 15, message = "*Crush Name should be between 3-15")
	private String crushName;

	@AssertTrue(message = "*You have to agree our terms and conditions")
	private boolean termsAndCondition;

	public boolean isTermsAndCondition() {
		return termsAndCondition;
	}

	public void setTermsAndCondition(boolean termsAndCondition) {
		this.termsAndCondition = termsAndCondition;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCrushName() {
		return crushName;
	}

	public void setCrushName(String crushName) {
		this.crushName = crushName;
	}

}
