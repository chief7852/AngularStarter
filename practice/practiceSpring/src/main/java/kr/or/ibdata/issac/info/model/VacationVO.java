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
	private Integer day_cnt;                                                   // ���ϼ�
	private Integer dept_cd;                                                   // ��û��(�μ���ȣ)
	private String dept_nm;                                                    // ��û��(�μ���)
	private String emp_nm;                                                     // ��û�� �̸� 
	private Integer emp_no;                                                    // ��û�� ��ȣ
	private String job_vaus_emp;                                               // ���������� �̸�
	private Integer job_vaus_emp_no;                                           // ���������� ��ȣ
	private Integer remndr_yryc;                                               // �ܿ�����
	private Date reqst_dt;                                                     // ��û����
	private Integer reqst_no;                                                  // ��û��ȣ
	private String rmk;                                                        // ���
	private Integer time_cnt;                                                  // �ѽð�
	private String vac_applcnt_clsf;                                           // �ް�������
	private String vac_cls;                                                    // (�𸣰Ծ�)
	private Integer vac_dept_cd;                                               // �ް��ںμ��ڵ�
	private String vac_dept_nm;                                                // �ް��ںμ���
	private String vac_emgnc_tel_no;                                           // ��󿬶�ó
	private String vac_emp_nm;                                                 // �ް��� �̸�
	private Integer vac_emp_no;                                                // �ް��� ��ȣ
//	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")       //
	private Date vac_end_dt;                                                   // �ް� ������
//	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")       //
	private Date vac_st_dt;                                                    // �ް� ������
//	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")       //
	private Date vac_stdde;                                                    // �ް� ������
	private Integer vac_time_cls1;                                             // �ް� ������ �ð�
	private Integer vac_time_cls2;                                             // �ް� ������ �ð�
	private String vac_use_dt;                                                 // �ް� ��� �Ⱓ
	private String vaus_applcnt_clsf;                                          // ���� ������ ����
}                                                                              //
