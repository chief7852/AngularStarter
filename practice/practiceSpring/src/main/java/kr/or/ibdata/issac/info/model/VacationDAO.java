package kr.or.ibdata.issac.info.model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class VacationDAO {
	private Integer day_cnt;
	private Integer dept_cd;
	private String dept_nm;
	private String emp_nm;
	private Integer emp_no;
	private String job_vaus_emp;
	private Integer job_vaus_emp_no;
	private Integer remndr_yryc;
	private Date reqst_dt;
	private Integer reqst_no;
	private String rmk;
	private Integer time_cnt;
	private String vac_applcnt_clsf;
	private String vac_cls;
	private Integer vac_dept_cd;
	private String vac_dept_nm;
	private String vac_emgnc_tel_no;
	private String vac_emp_nm;
	private Integer vac_emp_no;
	private Date vac_end_dt;
	private Date vac_st_dt;
	private Date vac_stdde;
	private Integer vac_time_cls1;
	private Integer vac_time_cls2;
	private String vac_use_dt;
	private String vaus_applcnt_clsf;
}
