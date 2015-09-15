package es.enbinario.services.Impl;

import static org.junit.Assert.*;
import static org.mockito.Mockito.*;

import org.hamcrest.CoreMatchers;
import org.hamcrest.core.IsNot;
import org.hibernate.hql.internal.ast.tree.IsNullLogicOperatorNode;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.runners.MockitoJUnitRunner;

import es.enbinario.dao.DataDAO;
import es.enbinario.model.Employee;

@RunWith(MockitoJUnitRunner.class)
public class DataServiceImplTest {

	@Mock private DataDAO dataDao;
	@InjectMocks private DataServiceImpl dataServiceImpl;
	
	@Before
	public void setUp() throws Exception {
		
	}

	@Test
	public void testInsertRow() {
		// Comportamiento del mock
		when(dataDao.insertRow(Mockito.any(Employee.class))).thenReturn(5L);
		
		// Llamada al método
		Long respuesta = dataServiceImpl.insertRow(new Employee());
		
		// Comprobación se llama al método insert del mock
		verify(dataDao, Mockito.times(1)).insertRow(Mockito.any(Employee.class));
		
		// Comprobación de que el mock devuelve lo que tiene que devolver
		assertThat(respuesta, CoreMatchers.equalTo(5L));
	}


	@Test
	public void testGetList() {
		//fail("Not yet implemented");
	}

	@Test
	public void testGetRowById() {
		//fail("Not yet implemented");
	}

	@Test
	public void testUpdateRow() {
		//fail("Not yet implemented");
	}

	@Test
	public void testDeleteRow() {
		//fail("Not yet implemented");
	}

	@Test
	public void testCheckDuplicateInsert() {
		//fail("Not yet implemented");
	}

}
