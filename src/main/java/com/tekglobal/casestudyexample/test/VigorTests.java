package com.tekglobal.casestudyexample.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;

import com.tekglobal.casestudyexample.customexception.DeleteFailedException;
import com.tekglobal.casestudyexample.models.Entry;
import com.tekglobal.casestudyexample.models.User;
import com.tekglobal.casestudyexample.repositories.EntryRepository;
import com.tekglobal.casestudyexample.repositories.UserRepository;
import com.tekglobal.casestudyexample.services.EntryService;
import com.tekglobal.casestudyexample.services.UserService;

import org.mockito.Mockito;
import static org.mockito.Mockito.anyString;

import java.util.ArrayList;
import java.util.List;


import static org.junit.Assert.assertEquals;

import static org.mockito.Mockito.anyObject;

public class VigorTests {

	private static UserService userService;
	private static UserRepository userRepository;
	private static EntryService entryService;
	private static EntryRepository entryRepository;

	 //***************** TEST USER SERVICES *****************
	@BeforeClass
	public static void setup() {
		userRepository = Mockito.mock(UserRepository.class);
		userService = new UserService(userRepository);
		entryRepository = Mockito.mock(EntryRepository.class);
		entryService = new EntryService(entryRepository);
	}

	/*
	 * ****************** TEST USER SERVICES ******************
	 */
	// Test saveUser
	@Test
	public void testSaveUser() {
		Mockito.when(userRepository.save(anyObject())).thenReturn(new User(1, "testUser1", "testPass1", "testEmail"));
		User actual = userService.saveUser(new User());
		User expected = new User(1, "testUser1", "testPass1", "testEmail");
		assertEquals(expected, actual);
	}

	// test findUserByUsername

	@Test
	public void testFindByUsername() {
		Mockito.when(userRepository.findUserByUsername(anyString()))
				.thenReturn(new User(1, "testUser1", "testEmail1", "testPass1"));
		User actual = userService.findUserByUsername("testUser1");
		String expected = "testPass1";
		assertEquals(expected, actual.getPassword());
	}

	/*
	 * ****************** TEST ENTRY SERVICES ******************
	 */

	//test saveEntry
	@Test
	public void testSaveEntry() throws DeleteFailedException {
		Mockito.when(entryRepository.save(anyObject())).thenReturn(new Entry((long) 10, "1", "2", "3", "4", "5"));
		Entry actual = entryService.save(new Entry());
		Entry expected = new Entry((long) 10, "1", "2", "3", "4", "5");
		assertEquals(expected, actual);
	}
	
	
	//test listAll
	
	@Test 
	public void testListAll(){
		List<Entry> list = new ArrayList<>();
		list.add(new Entry());
		list.add(new Entry());
		Mockito.when(entryRepository.findAll()).thenReturn(list);
		List<Entry> actual = entryService.listAll();
		int expected = 2;
		assertEquals(expected, actual.size());
	}

	
	
	
	
	
	
}
