package com.javadw.util;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import com.javadw.model.ExampleLink;

public class NavigationRecordsUtil {
	private static LinkedHashMap<String, ExampleLink> map = new LinkedHashMap<>();
	public static int totalTLinks = 0;

	public static void init() {
		List<ExampleLink> allExamples = getAllExampleLinks();

		// Set<ExampleLink> coreJava = new HashSet<ExampleLink>();

		ExampleLink prevLink = null;
		ExampleLink firstLink = null;
		boolean isFirst = false;
		for (ExampleLink exampleLink : allExamples) {
			exampleLink.setPrevLink(prevLink);
			if (prevLink != null) {
				prevLink.setNextLink(exampleLink);
				if (!isFirst) {
					firstLink = prevLink;
					isFirst = true;
				}
			}
			prevLink = exampleLink;
			map.put(exampleLink.getLink(), exampleLink);
		}
	}

	private static List<ExampleLink> getAllExampleLinks() {
		List<ExampleLink> exampleLinks = new ArrayList<ExampleLink>();
		exampleLinks.add(new ExampleLink("Java", "singletonClassExample",
				"Singleton Class Example in Java"));

		exampleLinks.add(new ExampleLink("Java", "factoryDesignPatternExample",
				"Factory design pattern in Java"));
		exampleLinks.add(new ExampleLink("Java", "builderDesignPattern",
				"Builder Design	Pattern in Java"));

		exampleLinks.add(new ExampleLink("Java", "daoDesignPatternExamples",
				"DAO design pattern in Java"));
		exampleLinks.add(new ExampleLink("Java", "java7Features",
				"New features in Java 7"));
		exampleLinks.add(new ExampleLink("Java", "cloneableExample",
				"Cloneable Example in Java"));
		exampleLinks.add(new ExampleLink("Java", "immutableClassExample",
				"Immutable Class Example in Java"));
		exampleLinks.add(new ExampleLink("Java", "stringReverseRecursively",
				"Reverse a String recursively in Java"));
		exampleLinks.add(new ExampleLink("Java", "duplicateCharFromString",
				"How to Print duplicate characters from String?"));
		exampleLinks
				.add(new ExampleLink("Java", "firstNonRepeatedChar",
						"Write a program to	print first non repeated character from String?"));
		exampleLinks.add(new ExampleLink("Java", "countCharInString",
				"How to count occurrence of a given character in String?"));
		exampleLinks.add(new ExampleLink("Java", "duplicateCharRemoverExample",
				"How to remove duplicate characters from String?"));
		exampleLinks.add(new ExampleLink("Java", "arrayListExample",
				"ArrayList Example in Java"));
		exampleLinks.add(new ExampleLink("Java", "linkedListExample",
				"LinkedList Example in Java"));
		exampleLinks.add(new ExampleLink("Java", "vectorExample",
				"Vector Example in Java"));
		exampleLinks.add(new ExampleLink("Java", "treeSetExample",
				"TreeSet Example in Java"));
		exampleLinks.add(new ExampleLink("Java", "linkedHashSetExample",
				"LinkedHashSet Example in Java"));
		exampleLinks.add(new ExampleLink("Java", "hashSetExample",
				"HashSet Example in Java"));
		exampleLinks.add(new ExampleLink("Java", "hashMapExample",
				"HashMap Example in Java"));
		exampleLinks.add(new ExampleLink("Java", "linkedHashMapExample",
				"LinkedHashMap Example in Java"));
		exampleLinks.add(new ExampleLink("Java", "treeMapExample",
				"TreeMap Example in Java"));
		exampleLinks.add(new ExampleLink("Java", "fibonacciSeriesExample.jsp",
				"Write a program to print FibonacciSeries in java ?"));
		exampleLinks
				.add(new ExampleLink("Java", "armstrongNumber.jsp",
						"Write a java program to check if a number is Armstrong number or not?"));
		exampleLinks
				.add(new ExampleLink("Java", "palindromeStringExample.jsp",
						"Write a program to check if an input String is Palindrome or not?"));
		exampleLinks.add(new ExampleLink("Java", "jdbcConnectionExample.jsp",
				"How to create	JDBC connection in Java?"));
		exampleLinks.add(new ExampleLink("Java", "factorialOfNumber.jsp",
				"Calculate the	factorial of a given number using Java?"));
		exampleLinks.add(new ExampleLink("Java", "reverseNumber.jsp",
				"How to reverse a number in Java?"));

		exampleLinks.add(new ExampleLink("Java", "readOnlyList",
				"How to make a list read only ?"));

		exampleLinks.add(new ExampleLink("Java", "reverseString.jsp",
				"Write a program to	reverse a String?"));
		exampleLinks
				.add(new ExampleLink("Java", "getFilesFromDirectory.jsp",
						"Write a program to get list of all the files from a given directory?"));
		exampleLinks
				.add(new ExampleLink("Java", "comparatorExample",
						"Write a Comparator to compare students based upon their name and age?"));
		exampleLinks
				.add(new ExampleLink("Java", "comparableExample",
						"Write a Comparable to	compare students based upon their age?"));
		exampleLinks.add(new ExampleLink("Java", "simpleArraySorting.jsp",
				"Simple Array	Sorting Program"));
		exampleLinks.add(new ExampleLink("Java", "bubbleSorting.jsp",
				"Bubble Sort Example"));
		exampleLinks.add(new ExampleLink("Java", "binarySearchExample.jsp",
				"Binary Search Example"));
		exampleLinks.add(new ExampleLink("Java", "decimalToBinaryExample.jsp",
				"Write a program to convert from decimal to binary?"));
		exampleLinks.add(new ExampleLink("Java",
				"readFileBufferedReaderExample.jsp",
				"Read a File in Java using BufferReader."));
		exampleLinks.add(new ExampleLink("Java", "exceptionThrowsExample.jsp",
				"Throws Keyword Example in Java."));
		exampleLinks.add(new ExampleLink("Java", "dateAndTimeExample.jsp",
				"Get current Date	and Time in Java."));
		exampleLinks.add(new ExampleLink("Java", "splitStringExample.jsp",
				"How to split a String?"));
		exampleLinks.add(new ExampleLink("Java",
				"swapNumberWithOutThirdVariable.jsp",
				"How to swap two numbers without using third variables?"));
		exampleLinks.add(new ExampleLink("Java", "fileInputStreamExample.jsp",
				"Read a file in Java"));

		exampleLinks.add(new ExampleLink("Java", "copyFileExample.jsp",
				"Copy content from one file to another file Example"));

		exampleLinks.add(new ExampleLink("Java",
				"reverseStringArrayExample.jsp", "Reverse a	String Array"));
		exampleLinks.add(new ExampleLink("Java",
				"reverseIntegerArrayExample.jsp", "Reverse an Integer Array"));
		exampleLinks.add(new ExampleLink("Java",
				"simpleThreadCrationExample.jsp", "Create a Thread in Java"));
		exampleLinks.add(new ExampleLink("Java", "threadRunnableExample.jsp",
				"Create a Thread by Implementing Runnable interface"));
		exampleLinks.add(new ExampleLink("Java", "producerConsumerPrgram.jsp",
				"Producer	Consumer Example in Thread"));
		exampleLinks.add(new ExampleLink("Java", "evenOddThreadExamples",
				"Print even and odd	numbers using threads in java."));
		exampleLinks.add(new ExampleLink("Java", "threadDeadLockExample",
				"Deadlock Thread Example in java."));
		exampleLinks.add(new ExampleLink("Java", "daemonThreadExample",
				"Daemon Thread in Java."));
		
		exampleLinks
				.add(new ExampleLink("Java", "stringToCharArrayExample.jsp",
						"String to char Array Program"));
		exampleLinks.add(new ExampleLink("Java", "iteratorExamples",
				"How to iterate a list "));
		exampleLinks.add(new ExampleLink("Java", "stringToDoubleExample.jsp",
				"Convert from String to Double "));
		exampleLinks.add(new ExampleLink("Java", "stringToLongExample.jsp",
				"Convert from String to Long"));
		exampleLinks.add(new ExampleLink("Java", "serializationExample.jsp",
				"Serialization Example"));
		exampleLinks.add(new ExampleLink("Java", "externalizationExample.jsp",
				"Externalization Example"));
		exampleLinks.add(new ExampleLink("Java",
				"csvFileReaderAndWriterExample",
				"How do I read from a CSV file in Java?"));
		exampleLinks.add(new ExampleLink("Java", "readRTFFileExample",
				"How to read a RTF file in Java?"));
		exampleLinks.add(new ExampleLink("Java", "iTextPdfFileWriter",
				"How do I write to a PDF file in Java?"));
		exampleLinks.add(new ExampleLink("Java",
				"csvFileReaderAndWriterExample",
				"How do I write to a CSV file in Java?"));

		exampleLinks.add(new ExampleLink("Java", "enumExample",
				"Enum Example in Java"));

		return exampleLinks;
	}

	public static ExampleLink getExamlpleLinkByLink(String link) {
		return map.get(link);
	}

	public static int nextTlink(int id) {

		if (totalTLinks > id) {
			return id + 1;
		} else {
			return 1;
		}

	}

	public static int prevTlink(int id) {

		if (id <= 1) {
			return totalTLinks;
		} else {
			return id - 1;
		}

	}

}
