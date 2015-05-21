package es.enbinario.services;

import java.util.List;

import es.enbinario.model.Employee;

public interface DataService {
	public long insertRow(Employee employee);

	public List<Employee> getList();

	public Employee getRowById(long id);

	public void updateRow(Employee employee);

	public long deleteRow(long id);

}
