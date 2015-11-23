package es.enbinario.services;

import java.util.List;

import es.enbinario.model.Employee;
import es.enbinario.negocio.EmployeeDTO;

public interface DataService {
	public long insertRow(Employee employee);

	public List<EmployeeDTO> getList();

	public EmployeeDTO getRowById(long id);

	public void updateRow(EmployeeDTO employee);

	public long deleteRow(long id);
	
	public boolean checkDuplicateInsert(EmployeeDTO emp);

}
