package es.enbinario.helpers;

import es.enbinario.model.Employee;
import es.enbinario.negocio.EmployeeDTO;

public class EmployeeTransformerHelper {

	public Employee dtoToEntity(EmployeeDTO employeeDTO){
		Employee employee = null;
		if(employeeDTO != null){
			employee = new Employee();
			if(employeeDTO.getEmail() != null){
				employee.setEmail(employeeDTO.getEmail());
			}
			if(employeeDTO.getFirstName() != null){
				employee.setFirstName(employeeDTO.getFirstName());
			}
			employee.setId(new Long(employeeDTO.getId()));
			if(employeeDTO.getLastName() != null){
				employee.setLastName(employeeDTO.getLastName());
			}
			if(employeeDTO.getPhone() != null){
				employee.setPhone(employeeDTO.getPhone());
			}
			if(employeeDTO.getEmail() != null){
				employee.setEmail(employeeDTO.getEmail());
			}
		}
		return employee;
	}
	
	public EmployeeDTO entityToDto(Employee employee){
		EmployeeDTO employeeDTO = null;
		if(employee != null){
			employeeDTO = new EmployeeDTO();
			if(employee.getEmail() != null){
				employeeDTO.setEmail(employee.getEmail());
			}
			if(employee.getFirstName() != null){
				employeeDTO.setFirstName(employee.getFirstName());
			}
			employeeDTO.setId(new Long(employee.getId()));
			if(employee.getLastName() != null){
				employeeDTO.setLastName(employee.getLastName());
			}
			if(employee.getPhone() != null){
				employeeDTO.setPhone(employee.getPhone());
			}
			if(employee.getEmail() != null){
				employeeDTO.setEmail(employee.getEmail());
			}
		}
		return employeeDTO;
	}
}
