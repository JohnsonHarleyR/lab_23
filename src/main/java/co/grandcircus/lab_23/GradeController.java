package co.grandcircus.lab_23;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

//I'm not killing myself with this one today lol

@Controller
public class GradeController {
	
	@Autowired
	private GradeDao gradeDao;
	
	@RequestMapping("/")
	public String index(Model model) {
		List<Grade> grades = gradeDao.findAll();
		
		double totPercent = calcTotalPercent(grades);
		
		model.addAttribute("grades", grades);
		model.addAttribute("tot_percent", totPercent);
		return "index";
	}
	
	@RequestMapping("/add")
	public String add(Model model) {
		
		return "add";
	}
	
	@PostMapping("/confirm")
	public String submitAdd(Grade grade) {		
		gradeDao.create(grade);
		
		return "confirm";
	}
	
	@RequestMapping("/delete")
	public String delete(
			@RequestParam("id") long id,
			Model model) {
		
		model.addAttribute("name", gradeDao.findById(id).getName());
		model.addAttribute("id", id);
		return "delete";
	}
	
	@RequestMapping("/delete/yes")
	public String remove(@RequestParam("id") Long id) {
		gradeDao.delete(id);
		
		return "redirect:/";
	}

	
	//I couldn't get this to work in the html so I'm just writing a method.
	//Again, not killing myself today lol. Taking a break from overload.
	public double calcTotalPercent(List<Grade> grades) {
		double totScore = 0;
		double totTotal = 0;
		double totPercent = 0;
		
		for (Grade grade: grades) {
			totScore += grade.getScore();
			totTotal += grade.getTotal();
		}
		totPercent = totScore / totTotal;
		return totPercent;
	}
	
}
