package mservice;

import java.util.List;

import entity.Classroom;

public interface ClassroomService {
	public List<Classroom> getAllClassroom();
	public List<Classroom> getFreeClassroom();
	public List<Classroom> getPartFreeClassroom();

}
