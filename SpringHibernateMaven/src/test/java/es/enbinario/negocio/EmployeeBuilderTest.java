package es.enbinario.negocio;

import org.hamcrest.Matchers;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class EmployeeBuilderTest {

	EmployeeDTO dto;
	
	@Before
	public void setUp(){
		dto = new EmployeeDTO();
		dto.setFirstName("MiNombre");
		dto.setLastName("MiApellido");
		dto.setEmail("MiEmil@emil.com");
	}
	
	@Test
	public void buildTest(){
		EmployeeDTO etest = new EmployeeDTOBuilder()
								.firstName("MiNombre")
								.lastName("MiApellido")
								.email("MiEmil@emil.com")
								.build();
		
		Assert.assertThat(dto.getFirstName(), Matchers.comparesEqualTo(etest.getFirstName()));
		Assert.assertThat(dto.getLastName(), Matchers.comparesEqualTo(etest.getLastName()));
		Assert.assertThat(dto.getEmail(), Matchers.comparesEqualTo(etest.getEmail()));
	}
}
