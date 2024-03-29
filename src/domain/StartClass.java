package domain;

import java.util.HashSet;
import java.util.Set;

/**
 * StartClass entity. @author MyEclipse Persistence Tools
 */

public class StartClass implements java.io.Serializable {

	// Fields

	private Integer id;
	private Course course;
	private Teacher teacher;
	private String claLocation;
	private String claTime;
	private Integer claCapacity;
	private Integer claRemain;
	private Set scores = new HashSet(0);

	// Constructors

	/** default constructor */
	public StartClass() {
	}

	/** full constructor */
	public StartClass(Course course, Teacher teacher, String claLocation, String claTime, Integer claCapacity,
			Integer claRemain, Set scores) {
		this.course = course;
		this.teacher = teacher;
		this.claLocation = claLocation;
		this.claTime = claTime;
		this.claCapacity = claCapacity;
		this.claRemain = claRemain;
		this.scores = scores;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Teacher getTeacher() {
		return this.teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public String getClaLocation() {
		return this.claLocation;
	}

	public void setClaLocation(String claLocation) {
		this.claLocation = claLocation;
	}

	public String getClaTime() {
		return this.claTime;
	}

	public void setClaTime(String claTime) {
		this.claTime = claTime;
	}

	public Integer getClaCapacity() {
		return this.claCapacity;
	}

	public void setClaCapacity(Integer claCapacity) {
		this.claCapacity = claCapacity;
	}

	public Integer getClaRemain() {
		return this.claRemain;
	}

	public void setClaRemain(Integer claRemain) {
		this.claRemain = claRemain;
	}

	public Set getScores() {
		return this.scores;
	}

	public void setScores(Set scores) {
		this.scores = scores;
	}

}