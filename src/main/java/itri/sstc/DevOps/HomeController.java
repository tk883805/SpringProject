package itri.sstc.DevOps;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value={"", "/", "/login"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {				
		return "login";
	}
	
	
	@RequestMapping(value = "/admin", method = RequestMethod.POST)
	public String login(@Validated User user, Model model) {		
		if(user.getUserName().equals("sstc") && user.getUserPasswd().equals("itrisstc02750963")){
			model.addAttribute("userName", user.getUserName());
			return "admin";	
		}
		model.addAttribute("errorMsg", "*密碼錯誤,無法登入!!");
		return "login";
	}
	
}
