package es.enbinario.dao.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import es.enbinario.dao.DataDAO;
import es.enbinario.model.Employee;

@Repository("dataDAOImpl")
public class DataDAOImpl extends BaseDAOImpl<Employee, Long> implements DataDAO {

	public DataDAOImpl() {
		super();
		setMyClass(Employee.class);
	}
	
	@Override
	public long insertRow(Employee employee) {
		save(employee);
		return employee.getId();
	}

	@Override
	public Employee findById(Long key) {
		return (Employee) getSession().load(getMyClass(), key);
	}
	
	@Override
	public List<Employee> getList() {
		@SuppressWarnings("unchecked")
		List<Employee> employeeList = getSession().createQuery("from Employee").list();
		return employeeList;
	}

	@Override
	public Employee getRowById(long id) {
		Employee employee = findById(id);
		return employee;
	}

	@Override
	public void updateRow(Employee employee) {
		update(employee);
	}

	@Override
	public long deleteRow(long id) {
		delete(getRowById(id));
		return (Long) id;
	}

}
