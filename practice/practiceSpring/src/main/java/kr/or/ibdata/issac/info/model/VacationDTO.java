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
	// default�� public�̶� ���������� �Ⱥ���
	public String projectName;
//	@JsonProperty(value = "project master") // key���� �����ؼ� �����ٶ� ���
	public String author;
//	@JsonIgnore data����
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd") // ��¥�� �ð��� ����ȭ�Ͽ��� �����ٶ� ���
	public Date createdDate;
}
