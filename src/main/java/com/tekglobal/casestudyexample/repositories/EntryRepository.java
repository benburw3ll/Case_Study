package com.tekglobal.casestudyexample.repositories;
 

 

import org.springframework.data.repository.CrudRepository;


import com.tekglobal.casestudyexample.models.Entry;
 
public interface EntryRepository extends CrudRepository<Entry, Long> {
     

}