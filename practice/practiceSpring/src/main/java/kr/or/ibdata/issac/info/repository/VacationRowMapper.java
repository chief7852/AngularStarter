package kr.or.ibdata.issac.info.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import kr.or.ibdata.issac.info.model.VacationDAO;

public class VacationRowMapper implements RowMapper<VacationDAO> {

	@Override
	public VacationDAO mapRow(ResultSet rs, int rowNum) throws SQLException {
		VacationDAO vac = new VacationDAO();
		vac.setDay_cnt(rs.getInt("day_cnt"));
		vac.setDept_cd(rs.getInt("day_cnt"));
		vac.setDept_nm(rs.getString("day_cnt"));
		vac.setEmp_nm(rs.getString("day_cnt"));
		vac.setEmp_no(rs.getInt("day_cnt"));
		vac.setJob_vaus_emp(rs.getString("day_cnt"));
		vac.setJob_vaus_emp_no(rs.getInt("day_cnt"));
		vac.setRemndr_yryc(rs.getInt("day_cnt"));
		vac.setReqst_dt(rs.getDate("day_cnt"));
		vac.setReqst_no(rs.getInt("day_cnt"));
		vac.setRmk(rs.getString("day_cnt"));
		vac.setTime_cnt(rs.getInt("day_cnt"));
		vac.setVac_applcnt_clsf(rs.getString("day_cnt"));
		vac.setVac_cls(rs.getString("day_cnt"));
		vac.setVac_dept_nm(rs.getString("day_cnt"));
		vac.setVac_emgnc_tel_no(rs.getString("day_cnt"));
		vac.setVac_emp_nm(rs.getString("day_cnt"));
		vac.setVac_emp_no(rs.getInt("day_cnt"));
		vac.setVac_end_dt(rs.getDate("day_cnt"));
		vac.setVac_st_dt(rs.getDate("day_cnt"));
		vac.setVac_stdde(rs.getDate("day_cnt"));
		vac.setVac_time_cls1(rs.getInt("day_cnt"));
		vac.setVac_time_cls2(rs.getInt("day_cnt"));
		vac.setVac_use_dt(rs.getString("day_cnt"));
		vac.setVaus_applcnt_clsf(rs.getString("day_cnt"));
		return vac;
	}
	
}
