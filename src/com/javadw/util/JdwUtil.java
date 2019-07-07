package com.javadw.util;

import java.util.Random;

public class JdwUtil {
	public static boolean isValidLogin(String email_id) {
		if (email_id != null && email_id.equals("pra.mishra09"))
			return true;
		return false;
	}
	public static void main(String[] args) {
		
	}
	
	public static String getRandomName(){
		String names[] = {"Pradeep Mishra", "Mike Starr","Pradeep Mishra", "Lisa Jackson","Mike Starr", "Suman Arora","Pradeep Mishra"};
		Random random = new Random();
		// randomly selects an index from the arr
        int select = random.nextInt(names.length); 
        return names[select];
	}
}
