package com.join.epilogue.service;

import com.join.epilogue.dao.EpilogueDao;
import com.join.epilogue.vo.EpiloguePictureVO;
import com.join.epilogue.vo.EpilogueVO;

public class EpilogueServiceImpl implements EpilogueService {
	
	private EpilogueDao epilogueDao;
	
	public void setEpilogueDao(EpilogueDao epilogueDao) {
		this.epilogueDao = epilogueDao;
	}

	@Override
	public boolean createEpilogue(EpilogueVO epilogueVO) {
		return epilogueDao.insertEpilogue(epilogueVO) > 0;
	}

	@Override
	public boolean createEpiloguePictures(EpiloguePictureVO epiloguePictureVO) {
		return epilogueDao.insertEpiloguePictures(epiloguePictureVO) > 0;
	}

	@Override
	public int selectEpilogueId() {
		return epilogueDao.selectEpilogueId();
	}
	
	
}