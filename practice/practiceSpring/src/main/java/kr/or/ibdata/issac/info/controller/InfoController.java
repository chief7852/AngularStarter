package kr.or.ibdata.issac.info.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.or.ibdata.issac.info.model.VacationDAO;
import kr.or.ibdata.issac.info.model.VacationDTO;
import kr.or.ibdata.issac.info.service.InfoService;
import lombok.extern.java.Log;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class InfoController {
	
	private InfoService service;
	
	@Autowired
	public InfoController(InfoService service) {
		this.service = service;
	}
	
	@GetMapping("/info")
	public VacationDTO projectInfo() {
//		return "Project name is issac";
		log.debug("/info start");
		VacationDTO project = service.getProjectInfo();
		return project;
	}
	
	@GetMapping("/vacList")
	public Object vacList() {
		log.debug("/vacList start");
		List<VacationDAO> vacList = service.getVacationDTOs();
		return vacList;
	}
}
