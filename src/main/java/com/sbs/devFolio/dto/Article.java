package com.sbs.devFolio.dto;

import java.util.HashMap;
import java.util.Map;

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
	
	private Map<String, Object> extra;
	
	public Map<String, Object> getExtraNotNull() {
		if ( extra == null ) {
			// Map은 인터페이스라 new Map()을 하면 일일히 내부 알고리즘 직접 구현
			// HashMap은 Hash key 기반의 map을 이미 구현한 클래스로 O(1)의 속도로 객체를 찾아올 수 있다는게 장점
			extra = new HashMap<String, Object>();
		}
		
		return extra;
	}
}
