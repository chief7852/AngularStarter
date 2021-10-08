package kr.or.ibdata.issac.info.repository;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.EmptySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import kr.or.ibdata.issac.info.model.VacationVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class VacationRepository {
	
	private static Logger logger = LoggerFactory.getLogger(VacationRepository.class);
	
	private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	private final VacationRowMapper vacRowMapper;
	
	public VacationRepository(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
		this.vacRowMapper = new VacationRowMapper();
	}
	
	public List<VacationVO> findList(){
		String sql = "select * from vacation limit 100";
		log.debug("query : {}", sql);
		
		
//		쿼리에 파라메터를 넘길 필요가 없으므로 EmptySqlParameterSource.INSTANCE 를 던집니다.
		return namedParameterJdbcTemplate.query(VacationSql.SELECT, EmptySqlParameterSource.INSTANCE, this.vacRowMapper);
	}
	
	public VacationVO insert(VacationVO vac) {
		KeyHolder keyHolder = new GeneratedKeyHolder();
		SqlParameterSource parameterSource = 
				new MapSqlParameterSource("day_cnt",vac.getDay_cnt())
				.addValue("dept_cd", vac.getDay_cnt())
				.addValue("dept_nm", vac.getDept_cd())
				.addValue("emp_nm", vac.getDept_nm())
				.addValue("emp_no", vac.getEmp_no())
				.addValue("job_vaus_emp", vac.getJob_vaus_emp())
				.addValue("job_vaus_emp_no", vac.getJob_vaus_emp_no())
				.addValue("remndr_yryc", vac.getRemndr_yryc())
				.addValue("reqst_dt", vac.getReqst_dt())
				.addValue("reqst_no", vac.getReqst_no())
				.addValue("rmk", vac.getRmk())
				.addValue("time_cnt", vac.getTime_cnt())
				.addValue("vac_applcnt_clsf", vac.getVac_applcnt_clsf())
				.addValue("vac_cls", vac.getVac_cls())
				.addValue("vac_dept_cd", vac.getVac_dept_cd())
				.addValue("vac_dept_nm", vac.getVac_dept_nm())
				.addValue("vac_emgnc_tel_no", vac.getVac_emgnc_tel_no())
				.addValue("vac_emp_nm", vac.getVac_emp_nm())
				.addValue("vac_emp_no", vac.getVac_emp_no())
				.addValue("vac_end_dt", vac.getVac_end_dt())
				.addValue("vac_st_dt", vac.getVac_st_dt())
				.addValue("vac_stdde", vac.getVac_stdde())
				.addValue("vac_time_cls1", vac.getVac_time_cls1())
				.addValue("vac_time_cls2", vac.getVac_time_cls2())
				.addValue("vac_use_dt", vac.getVac_use_dt())
				.addValue("vaus_applcnt_clsf", vac.getVaus_applcnt_clsf());
		int affectedRows = namedParameterJdbcTemplate.update(VacationSql.INSERT,parameterSource, keyHolder);
		logger.info("affectedRows : {}", parameterSource);
		return vac;
	}
	
}
