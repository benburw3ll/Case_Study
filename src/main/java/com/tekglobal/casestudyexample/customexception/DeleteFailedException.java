package com.tekglobal.casestudyexample.customexception;

public class DeleteFailedException extends Exception {

	/**
	 * Applied to add entry
	 */
	private static final long serialVersionUID = 1L;
	
	public DeleteFailedException(){
		System.out.println("Could not delete entry.");
	}

}
