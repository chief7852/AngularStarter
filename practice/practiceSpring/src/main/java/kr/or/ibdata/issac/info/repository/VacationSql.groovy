package kr.or.ibdata.issac.info.repository;

class VacationSql {
	public static final String SELECT = """
		SELECT 
			DAY_CNT,
			DEPT_CD,
			DEPT_NM,
			EMP_NM,
			EMP_NO,
			JOB_VAUS_EMP,
			JOB_VAUS_EMP_NO,
			REMNDR_YRYC,
			REQST_DT,
			REQST_NO,
			RMK,
			TIME_CNT,
			VAC_CLS,
			VAC_APPLCNT_CLSF,
			VAC_DEPT_CD,
			VAC_DEPT_NM,
			VAC_EMGNC_TEL_NO,
			VAC_EMP_NM,
			VAC_EMP_NO,
			VAC_END_DT,
			VAC_STDDE,
			VAC_ST_DT,
			VAC_TIME_CLS1,
			VAC_TIME_CLS2,
			VAC_USE_DT,
			VAUS_APPLCNT_CLSF
		FROM vacation LIMIT 1000;
	"""	
	
	public static final String INSERT = """
	INSERT INTO databasetest.vacation
(DAY_CNT, DEPT_CD, DEPT_NM, EMP_NM, EMP_NO, JOB_VAUS_EMP, JOB_VAUS_EMP_NO, REMNDR_YRYC, REQST_DT, RMK, TIME_CNT, VAC_CLS, VAC_APPLCNT_CLSF, VAC_DEPT_CD, VAC_DEPT_NM, VAC_EMGNC_TEL_NO, VAC_EMP_NM, VAC_EMP_NO, VAC_END_DT, VAC_STDDE, VAC_ST_DT, VAC_TIME_CLS1, VAC_TIME_CLS2, VAC_USE_DT, VAUS_APPLCNT_CLSF)
VALUES(:day_cnt, :dept_cd, :dept_nm, :emp_nm, :emp_no, :job_vaus_emp, :job_vaus_emp_no, :remndr_yryc, :reqst_dt, :rmk, :time_cnt, '1', :vac_applcnt_clsf, :vac_dept_cd, :vac_dept_nm, :vac_emgnc_tel_no, :vac_emp_nm, :vac_emp_no, :vac_end_dt, :vac_stdde, :vac_st_dt, :vac_time_cls1, :vac_time_cls2, :vac_use_dt, :vaus_applcnt_clsf);

"""
}
