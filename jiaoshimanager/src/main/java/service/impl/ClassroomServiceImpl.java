package service.impl;

import java.util.List;

import entity.Classroom;
import mdao.ClassroomDao;
import mservice.ClassroomService;

public class ClassroomServiceImpl implements ClassroomService {
	private ClassroomDao classroomDao;

	public ClassroomDao getClassroomDao() {
		return classroomDao;
	}

	public void setClassroomDao(ClassroomDao classroomDao) {
		this.classroomDao = classroomDao;
	}

	@Override
	public List<Classroom> getAllClassroom() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Classroom> getFreeClassroom() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Classroom> getPartFreeClassroom() {
		// TODO Auto-generated method stub
		return null;
	}
	

}
