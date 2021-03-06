package com.SpringMVC.service.impl;

import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringMVC.model.convert.workConvert;
import com.SpringMVC.model.dto.WorkDTO;
import com.SpringMVC.model.entity.WorkEntity;
import com.SpringMVC.model.entity.TeamEntity;
import com.SpringMVC.repository.WorkRepository;
import com.SpringMVC.service.IWorkService;
import com.SpringMVC.service.ITeamService;
import com.SpringMVC.util.UploadFileUtils;

@Service
public class WorkService implements IWorkService {

	@Autowired
	private WorkRepository workRepo;
	@Autowired
	private workConvert workConvert;
	@Autowired
	private ITeamService teamService;
	
	@Autowired
	private UploadFileUtils fileUtils; 
	
	@Override
	public List<WorkDTO> findList(String key,String code) {
		List<WorkDTO> result = new ArrayList<WorkDTO>();
		if(key != null) {
			for(WorkEntity work : workRepo.search(key)) {
				result.add(workConvert.toDTO(work));
			}
			return result;
		}
		if(code != null) {
			TeamEntity team = teamService.findByCode(code);
			for(WorkEntity work : workRepo.findListByTeam(team)) {
				result.add(workConvert.toDTO(work));
			}
			return result;
		}
		return result;
	}

	@Override
	public WorkDTO findOne(Long id) {
		return workConvert.toDTO(workRepo.findOne(id));
	}

	@Override
	@Transactional
	public WorkDTO Update(WorkDTO work) {
		byte[] decodeBase64 = Base64.getDecoder().decode((work.getBase64().split(",")[1]).getBytes());
		if(work.getId() != null) {
			WorkEntity newWork = workConvert.toEntity(work);
			newWork.setTeam(teamService.findByCode(work.getTeamCode()));
			newWork.setThumbnail(fileUtils.writeOrUpdate(decodeBase64, work.getThumbnail()));
			WorkDTO workNew = workConvert.toDTO(workRepo.save(newWork));
			workNew.setBase64(work.getBase64());
			return workNew;
		}
		WorkEntity workEntity = workConvert.toEntity(work);
		workEntity.setThumbnail(fileUtils.writeOrUpdate(decodeBase64, work.getThumbnail()));
		workEntity.setTeam(teamService.findByCode(work.getTeamCode()));
		return workConvert.toDTO(workRepo.save(workEntity));
	}

	@Override
	public WorkEntity findOneById(Long id) {
		return workRepo.findOne(id);
	}

	@Override
	@Transactional
	public void Delete(Long[] ids) {
		for(Long id : ids) {
			workRepo.delete(id);
		}	
	}


	@Override
	public List<WorkEntity> findListEntity(TeamEntity team) {
		List<WorkEntity> result = new ArrayList<WorkEntity>();
		for(WorkEntity i : workRepo.findListByTeam(team)) {
			result.add(i);
		}
		return result;
	}



}
