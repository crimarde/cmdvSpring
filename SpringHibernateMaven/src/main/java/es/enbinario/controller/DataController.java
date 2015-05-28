package es.enbinario.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import es.enbinario.model.Employee;
import es.enbinario.services.DataService;

@Controller
public class DataController {
	
	@Autowired
	private DataService dataService;
	
	protected final Log logger = LogFactory.getLog(getClass());

	@RequestMapping("form")
	public ModelAndView getForm(@ModelAttribute Employee employee) {
		logger.info("Hemos entrado en el método DataController.getForm. -- Redireccion a la página form");
		
		/* Creamos un map, le introducimos una serie de valores
		 * Creamos un ModelAndView le metemos el map que hemos creado (las variables estrán disponibles en la vista)
		 * Seteamos el nombre de la vista a la que queremos redirigir (tiene que haber un viewResolver configurado)
		 */
		
		Map<String, Object> miModelo = new HashMap<String, Object>();
		miModelo.put("variable", "valor");
		
        ModelAndView miMAV = new ModelAndView();
        miMAV.setViewName("form");
        miMAV.addObject(miModelo);

        return miMAV;
	}
	
	@RequestMapping("register")
	public ModelAndView registerUser(@ModelAttribute Employee employee) {
		dataService.insertRow(employee);
		return new ModelAndView("redirect:list");
	}
	
	@RequestMapping("list")
	public ModelAndView getList() {
		List<Employee> employeeList = dataService.getList();
		return new ModelAndView("list","employeeList",employeeList);
	}
	
	@RequestMapping("delete")
	public ModelAndView deleteUser(@RequestParam long id) {
		dataService.deleteRow(id);
		return new ModelAndView("redirect:list");
	}
	
	@RequestMapping("edit")
	/* No hace falta pasarle todos lo parámetros al método, en este caso con uno de ellos es más que 
	 * suficiente, el objetivo es ver las diferentes posibilidades que ofrece spring.
	 * 
	 * 1. Con @RequestParam -> spring busca en la request el atributo id y genera un long (el cast es automático)
	 * 	Si el nobre no es el mismo pedemos usar una expresión de este tipo @RequestParam("id") long id
	 * 2. @ModelAttribute Employee employee -> convierte los campos de la request en las propiedades de un objeto empleado que construye y te devuelve
	 * 3. ModelMap -> Es un map en el que spring almacena variables, automáticamente se lo hace llegar a la vista con los valores cargados
	 * 	El modelMap es una altenativa al ModelAndView (hacen exactmente lo mismo, es sólo cuestión de nomenclatura)
	 */
	public String editUser(@RequestParam long id, @ModelAttribute Employee employee, ModelMap model) {
		Employee employeeObject = dataService.getRowById(id);
		Employee employeeObject2 = dataService.getRowById(((Employee)model.get("employee")).getId());
		Employee employeeObject3 = dataService.getRowById(employee.getId());
		model.put("employeeObject", employeeObject);
		return "edit";
		//return new ModelAndView("edit","employeeObject",employeeObject);
	}
	
	@RequestMapping("update")
	public RedirectView updateUser(HttpServletRequest request, @ModelAttribute Employee employee) {
		dataService.updateRow(employee);
		
		RedirectView redirectView = new RedirectView();
		//redirectView.setUrl(request.getContextPath() + "/list");
		redirectView.setUrl("list");
		return redirectView;
		
		//Alternativa al redirectView
//		return new ModelAndView("redirect:list");
	}
	
	@RequestMapping("check")
	public @ResponseBody boolean checkDuplicateInsert(@RequestParam String firstName ,@RequestParam String lastName, @RequestParam String email, @RequestParam String phone){
//	public @ResponseBody boolean checkDuplicateInsert(@ModelAttribute Employee employee){
		return dataService.checkDuplicateInsert(new Employee(firstName, lastName, email, phone));
		//return dataService.checkDuplicateInsert(employe);
		//return true;
	}

}
