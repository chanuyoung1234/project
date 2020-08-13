package calc.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import calc.model.CalculatorService;

/**
 * Servlet implementation class CalculaterServlet
 */
@WebServlet("/calc_result")
public class CalculaterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculaterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//1. 요청 파라미터 조회
		String op1 = request.getParameter("op1");
		String op2 = request.getParameter("op2");
		String operator = request.getParameter("operator");
		
		//2. 비즈니스 로직
		
		CalculatorService cs = new CalculatorService();
		String resUrl=null;
		try {
			BigDecimal result = cs.calculate(op1, op2, operator);
			request.setAttribute("result", result);
			resUrl="calc_result.jsp";
		} catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("error_message", "숫자로 입력해주세요" +e.getMessage());
			resUrl="error.jsp";
		}
		//3. 응답
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(resUrl);
		requestDispatcher.forward(request, response);
	}

}
