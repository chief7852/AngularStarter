package kr.or.ibdata.issac.info.model;

//import java.util.Date;
import java.sql.Date;
//import java.sql.Timestamp;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

import groovy.transform.builder.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class VacationVO {
	private Integer day_cnt;                                                   // 총일수
	private Integer dept_cd;                                                   // 신청자(부서번호)
	private String dept_nm;                                                    // 신청자(부서명)
	private String emp_nm;                                                     // 신청자 이름 
	private Integer emp_no;                                                    // 신청자 번호
	private String job_vaus_emp;                                               // 직무대행자 이름
	private Integer job_vaus_emp_no;                                           // 직무대행자 번호
	private Integer remndr_yryc;                                               // 잔여연차
	private Date reqst_dt;                                                     // 신청일자
	private Integer reqst_no;                                                  // 신청번호
	private String rmk;                                                        // 비고
	private Integer time_cnt;                                                  // 총시간
	private String vac_applcnt_clsf;                                           // 휴가자직급
	private String vac_cls;                                                    // (모르게씀)
	private Integer vac_dept_cd;                                               // 휴가자부서코드
	private String vac_dept_nm;                                                // 휴가자부서명
	private String vac_emgnc_tel_no;                                           // 비상연락처
	private String vac_emp_nm;                                                 // 휴가자 이름
	private Integer vac_emp_no;                                                // 휴가자 번호
//	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")       //
	private Date vac_end_dt;                                                   // 휴가 종료일
//	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")       //
	private Date vac_st_dt;                                                    // 휴가 시작일
//	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")       //
	private Date vac_stdde;                                                    // 휴가 기준일
	private Integer vac_time_cls1;                                             // 휴가 시작일 시간
	private Integer vac_time_cls2;                                             // 휴가 종료일 시간
	private String vac_use_dt;                                                 // 휴가 사용 기간
	private String vaus_applcnt_clsf;                                          // 직무 대항자 직급
}                                                                              //
