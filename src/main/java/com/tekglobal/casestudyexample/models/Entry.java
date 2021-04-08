package com.tekglobal.casestudyexample.models;
 


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


 
@Entity
public class Entry {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String lift;
    private String date;
    private String max;
    private String reps;
    private String sets;
    
    public Entry() {
    }

	public Entry(Long id, String lift, String date, String max, String reps, String sets) {
		super();
		this.id = id;
		this.lift = lift;
		this.date = date;
		this.max = max;
		this.reps = reps;
		this.sets = sets;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}


	public String getLift() {
		return lift;
	}

	public void setLift(String lift) {
		this.lift = lift;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getMax() {
		return max;
	}

	public void setMax(String max) {
		this.max = max;
	}

	public String getReps() {
		return reps;
	}

	public void setReps(String reps) {
		this.reps = reps;
	}

	public String getSets() {
		return sets;
	}

	public void setSets(String sets) {
		this.sets = sets;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((date == null) ? 0 : date.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((lift == null) ? 0 : lift.hashCode());
		result = prime * result + ((max == null) ? 0 : max.hashCode());
		result = prime * result + ((reps == null) ? 0 : reps.hashCode());
		result = prime * result + ((sets == null) ? 0 : sets.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Entry other = (Entry) obj;
		if (date == null) {
			if (other.date != null)
				return false;
		} else if (!date.equals(other.date))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (lift == null) {
			if (other.lift != null)
				return false;
		} else if (!lift.equals(other.lift))
			return false;
		if (max == null) {
			if (other.max != null)
				return false;
		} else if (!max.equals(other.max))
			return false;
		if (reps == null) {
			if (other.reps != null)
				return false;
		} else if (!reps.equals(other.reps))
			return false;
		if (sets == null) {
			if (other.sets != null)
				return false;
		} else if (!sets.equals(other.sets))
			return false;
		return true;
	}
    
	
    
}