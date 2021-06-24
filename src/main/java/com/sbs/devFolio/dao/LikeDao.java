package com.sbs.devFolio.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.sbs.devFolio.dto.Like;

@Mapper
public interface LikeDao {
	public Like getLike(@Param("relTypeCode") String relTypeCode, @Param("relId") int relId,
			@Param("actorId") int actorId, @Param("point") int point);

	public void removePoint(@Param("relTypeCode") String relTypeCode, @Param("relId") int relId,
			@Param("actorId") int actorId, @Param("point") int point);

	public void setPoint(@Param("relTypeCode") String relTypeCode, @Param("relId") int relId,
			@Param("actorId") int actorId, @Param("point") int point);
}
