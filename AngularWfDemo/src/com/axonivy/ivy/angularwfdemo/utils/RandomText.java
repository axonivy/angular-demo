package com.axonivy.ivy.angularwfdemo.utils;

import java.security.SecureRandom;

public class RandomText {
	private static final String[] ADJECTIVES = {"Awesome", "Super", "Gigantic", "Excellent", "Extraordinary", "Amazing", "Unbelievable"};
	private static final SecureRandom RANDOM = new SecureRandom();
	
	public static String randomTaskTitle() {
		return randomAdjective() + " Task";
	}
	
	public static String randomTaskDescription() {
		return "This " + randomAdjective() + " task is very interesting.";
	}
	
	private static String randomAdjective() {
		return ADJECTIVES[RANDOM.nextInt(ADJECTIVES.length)];
	}
	
}
