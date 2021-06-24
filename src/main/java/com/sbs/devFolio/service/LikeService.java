package com.sbs.devFolio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbs.devFolio.dao.LikeDao;
import com.sbs.devFolio.dto.Like;

@Service
public class LikeService {
	@Autowired
	private LikeDao likeDao;

	public boolean alreadyDoLike(String relTypeCode, int relId, int actorId, int point) {
		Like like = likeDao.getLike(relTypeCode, relId, actorId, point);

		if (like == null) {
			return false;
		} else {
			return true;
		}
	}

	public void setLikePoint(String relTypeCode, int relId, int actorId, int point, int set) {
		if (set == 0) {
			likeDao.removePoint(relTypeCode, relId, actorId, point);
		} else {
			likeDao.setPoint(relTypeCode, relId, actorId, point);
		}
	}
}
