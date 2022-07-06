package mvc.action;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvcMem.action.Action;
import mvcMem.control.ActionForward;

public class RegFormAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		return new ActionForward("/mvcMem/regForm.jsp", false);
	}

}
