package com.SpringMVC.service;

import java.util.List;

import com.SpringMVC.model.dto.WorkDTO;
import com.SpringMVC.model.entity.WorkEntity;
import com.SpringMVC.model.entity.TeamEntity;

public interface IWorkService {
	List<WorkDTO> findList(String key,String code);
	List<WorkEntity> findListEntity(TeamEntity team);
	WorkDTO findOne(Long id);
	WorkDTO Update(WorkDTO work);
	WorkEntity findOneById(Long id);
	void Delete(Long[] ids);
}
