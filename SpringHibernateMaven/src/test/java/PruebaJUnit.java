import static org.mockito.Mockito.*;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;

import es.enbinario.controller.DataController;

public class PruebaJUnit {

	@Mock DataController dataController;
	
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		Assert.assertTrue(Boolean.TRUE);
	}

}
