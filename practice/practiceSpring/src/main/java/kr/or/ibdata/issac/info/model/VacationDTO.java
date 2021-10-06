package kr.or.ibdata.issac.info.model;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class VacationDTO {
	// default가 public이라서 접근제한자 안붙임
	public String projectName;
//	@JsonProperty(value = "project master") // key값을 변경해서 보여줄때 사용
	public String author;
//	@JsonIgnore data무시
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd") // 날짜와 시간을 직렬화하여서 보여줄때 사용
	public Date createdDate;
}
