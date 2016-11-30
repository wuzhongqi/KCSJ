package service.impl;

import entity.Apply;
import mdao.ApplyDao;
import mservice.ApplyService;

public class ApplyServiceImpl implements ApplyService {
	private ApplyDao applyDao;

	@Override
	public boolean add(Apply apply) {
		// TODO Auto-generated method stub
		applyDao.save(apply);
		return false;
	}

	public ApplyDao getApplyDao() {
		return applyDao;
	}

	public void setApplyDao(ApplyDao applyDao) {
		this.applyDao = applyDao;
	}

}
