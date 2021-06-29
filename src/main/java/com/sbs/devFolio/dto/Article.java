package com.sbs.devFolio.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data // @getter @Setter @ToString @EqualsAndHashCode @RequiredArgsConstructor을 한번에 명시한 것과 같은 효과
@NoArgsConstructor // 파라미터가 없는 생성자를 생성
@AllArgsConstructor // 클래스에 존재하는 모든 필드에 대한 생성자를 자동으로 생성
public class Article {
	private int id;
	private String regDate;
	private String updateDate;
	private int memberId;
	private int boardId;
	private String body;
	private String title;
	private int hitCount;
	
	private String extra__writer;
	private String extra__boardName;
	private String extra__boardCode;
	private int extra__likePoint;
	private String extra__thumbImg;
}
