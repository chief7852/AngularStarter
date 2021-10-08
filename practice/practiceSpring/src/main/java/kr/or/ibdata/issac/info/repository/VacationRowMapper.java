package kr.or.ibdata.issac.info.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.RowMapper;

import kr.or.ibdata.issac.info.model.VacationVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class VacationRowMapper implements RowMapper<VacationVO> {

	private static Logger logger = LoggerFactory.getLogger(VacationRowMapper.class);
	@Override
	public VacationVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		VacationVO vac = new VacationVO();
		vac.setDay_cnt(rs.getInt("day_cnt"));
		vac.setDept_cd(rs.getInt("dept_cd"));
		vac.setDept_nm(rs.getString("dept_nm"));
		vac.setEmp_nm(rs.getString("emp_nm"));
		vac.setEmp_no(rs.getInt("emp_no"));
		vac.setJob_vaus_emp(rs.getString("job_vaus_emp"));
		vac.setJob_vaus_emp_no(rs.getInt("job_vaus_emp_no"));
		vac.setRemndr_yryc(rs.getInt("remndr_yryc"));
		vac.setReqst_dt(rs.getDate("reqst_dt"));
		vac.setReqst_no(rs.getInt("reqst_no"));
		vac.setRmk(rs.getString("rmk"));
		vac.setTime_cnt(rs.getInt("time_cnt"));
		vac.setVac_applcnt_clsf(rs.getString("vac_applcnt_clsf"));
		vac.setVac_cls(rs.getString("vac_cls"));
		vac.setVac_dept_cd(rs.getInt("vac_dept_cd"));
		vac.setVac_dept_nm(rs.getString("vac_dept_nm"));
		vac.setVac_emgnc_tel_no(rs.getString("vac_emgnc_tel_no"));
		vac.setVac_emp_nm(rs.getString("vac_emp_nm"));
		vac.setVac_emp_no(rs.getInt("vac_emp_no"));
		vac.setVac_end_dt(rs.getDate("vac_end_dt"));
		vac.setVac_st_dt(rs.getDate("vac_st_dt"));
		vac.setVac_stdde(rs.getDate("vac_stdde"));
		vac.setVac_time_cls1(rs.getInt("vac_time_cls1"));
		vac.setVac_time_cls2(rs.getInt("vac_time_cls2"));
		vac.setVac_use_dt(rs.getString("vac_use_dt"));
		vac.setVaus_applcnt_clsf(rs.getString("vaus_applcnt_clsf"));
		logger.info("vac : {}",vac);
		return vac;
	}
	
}
