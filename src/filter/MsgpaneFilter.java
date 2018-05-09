package filter;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MsgpaneFilter implements Filter {

	public void init(FilterConfig filterConfig) throws ServletException {
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		String objfile = request.getServletContext().getRealPath("/")+"Msgpane.obj";
		System.out.println(objfile);
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		ServletContext application = request.getServletContext();
		if (application.getAttribute("msgs") == null) {
			File f = new File(objfile);
			if (f.exists()) {
				/*application.setAttribute("msgs", readObject(objfile));*/
				System.out.println("read*******************************");
			} else {
				System.out.println("File not found!");
				req.getRequestDispatcher("/submit.jsp").forward(req,
						resp);
			}
		}
		chain.doFilter(req, resp);
	}

	public void destroy() {
	}

	public Object readObject(String filename) throws IOException,
			ClassNotFoundException {
		Object obj = null;
		File ft = new File(filename);
		if (ft.exists()) {
			FileInputStream fis = new FileInputStream(ft);
			ObjectInputStream ois = new ObjectInputStream(fis);
			obj = ois.readObject();
			fis.close();
			ois.close();
		} else {
			System.out.println("*******************************************************");
		}
		return obj;
	}
}
