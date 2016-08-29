package com.model;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

@Component
public class RegistrationHandler {

	public CreditCardDetails initFlow(){
		return new CreditCardDetails();
	}

	public String validateDetails(CreditCardDetails creditCardDetails,MessageContext messageContext){
		String status = "success";
		if(creditCardDetails.getId().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"id").defaultText("creadit card id cannot be Empty").build());
			status = "failure";
		}
		if(creditCardDetails.getType().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"name").defaultText("Credit card Type cannot be Empty").build());
			status = "failure";
		}
		if(creditCardDetails.getEmail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if(creditCardDetails.getMobile().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"mobile").defaultText("Mobile cannot be Empty").build());
			status = "failure";
		}
		
		
		return status;
	}
}