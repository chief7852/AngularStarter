package kr.or.ibdata.issac.info.repository;

import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.EmptySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ibdata.issac.info.model.VacationDAO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class VacationRepository {
	
	private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	private final VacationRowMapper vacRowMapper;
	
	public VacationRepository(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
		this.vacRowMapper = new VacationRowMapper();
	}
	
	public List<VacationDAO> findList(){
		String sql = "select * from vacation limit 100";
		log.debug("query : {}", sql);
		
		
//		������ �Ķ���͸� �ѱ� �ʿ䰡 �����Ƿ� EmptySqlParameterSource.INSTANCE �� �����ϴ�.
		return namedParameterJdbcTemplate.query(VacationSql.SELECT, EmptySqlParameterSource.INSTANCE, this.vacRowMapper);
	}
	
}
