package kr.or.ibdata.issac.info.service;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.ibdata.issac.info.model.VacationDAO;
import kr.or.ibdata.issac.info.model.VacationDTO;
import kr.or.ibdata.issac.info.repository.VacationRepository;

@Service
public class InfoService {
	
	private final VacationRepository vacationRepository;

	public InfoService(VacationRepository vacationRepository) {
		this.vacationRepository = vacationRepository;
	}
	
	public VacationDTO getProjectInfo() {
		
		VacationDTO project = new VacationDTO();
		project.projectName = "issac";
		project.author = "hello-issac";
		project.createdDate = new Date();
		
		return project;
	}
	
	public List<VacationDAO> getVacationDTOs(){
		return this.vacationRepository.findList();
	}
	
	
}
