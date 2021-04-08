package com.tekglobal.casestudyexample.services;
 

import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tekglobal.casestudyexample.customexception.DeleteFailedException;
import com.tekglobal.casestudyexample.models.Entry;
import com.tekglobal.casestudyexample.repositories.EntryRepository;

 
@Service
@Transactional
public class EntryService {
	private EntryRepository repo;
    @Autowired 
    
    public EntryService(EntryRepository repo) {
		this.repo = repo;
	}
     
    public Entry save(Entry entry){
    	return repo.save(entry);
		}
		
    
     
    public List<Entry> listAll() {
        return (List<Entry>) repo.findAll();
    }
     
    public Entry get(Long id) {
        return repo.findById(id).get();
    }
     
    public boolean delete(Long id) throws DeleteFailedException{
        try{repo.deleteById(id);
        return true;}catch(Exception se){
        	System.out.println("Failed to delete");
        	return false;
        }
    }
    
//    public List<Entry> search(String keyword) {
//        return repo.search(keyword);
//    }
     
}
