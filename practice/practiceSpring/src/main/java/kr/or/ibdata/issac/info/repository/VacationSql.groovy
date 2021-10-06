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
}
