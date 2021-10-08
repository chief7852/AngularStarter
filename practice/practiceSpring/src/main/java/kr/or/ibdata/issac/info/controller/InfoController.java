package kr.or.ibdata.issac.info.controller;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import kr.or.ibdata.issac.info.model.VacationVO;
import kr.or.ibdata.issac.info.service.InfoService;
import kr.or.ibdata.issac.info.model.VacationDTO;

import lombok.extern.java.Log;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class InfoController {
	
	private static Logger logger = LoggerFactory.getLogger(InfoController.class);
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
		List<VacationVO> vacList = service.getVacationDTOs();
		return vacList;
	}
	

	@PostMapping("/vacAdd")
	public ResponseEntity<VacationVO> vacAdd(@RequestBody VacationVO vac){
		logger.info("vacAdd RequestBody data = {}", vac.toString());
		try {
		logger.info("vacAdd RequestBody data = {}", vac.toString());
		return new ResponseEntity<VacationVO>(service.insert(vac), HttpStatus.OK);
	
		}catch (Exception e) {
			log.error(e.toString());
			return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
}
