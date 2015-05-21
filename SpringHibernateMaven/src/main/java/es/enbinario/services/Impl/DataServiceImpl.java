package es.enbinario.services.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import es.enbinario.dao.DataDAO;
import es.enbinario.model.Employee;
import es.enbinario.services.DataService;

@Service
@Transactional(readOnly=true)
public class DataServiceImpl implements DataService {
	
	@Autowired
	@Qualifier("dataDAOImpl")
	DataDAO dataDao;

	@Override
	@Transactional(readOnly=false)
	public long insertRow(Employee employee) {
		return dataDao.insertRow(employee);
	}

	@Override
	public List<Employee> getList() {
		return dataDao.getList();
	}

	@Override
	public Employee getRowById(long id) {
		return dataDao.getRowById(id);
	}

	@Override
	@Transactional(readOnly=false)
	public void updateRow(Employee employee) {
		dataDao.updateRow(employee);
	}

	@Override
	@Transactional(readOnly=false)
	public long deleteRow(long id) {
		return dataDao.deleteRow(id);
	}

}
