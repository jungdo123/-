package Validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

import Command.PwChangeCommand;

public class ChangePwdCommandValidator {

	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return PwChangeCommand.class.isAssignableFrom(clazz);
	}
	
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		PwChangeCommand pw = (PwChangeCommand) target;
		ValidationUtils.rejectIfEmpty(errors, "pw", "required");
		ValidationUtils.rejectIfEmpty(errors, "newPw", "required");
		ValidationUtils.rejectIfEmpty(errors, "reNewPw", "required");
		if(!pw.getNewPw().isEmpty()) {
			if(!pw.getNewPw().equals(pw.getReNewPw())) {
				errors.rejectValue("reNewPw", "nomatch");
			}
		}
		
	}

}
