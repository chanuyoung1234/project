package calc.model;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;

public class CalculatorService {

	public BigDecimal calculate(String op1, String op2, String operator) throws NumberFormatException{
		//10/->0.333333333 이럴 시 소수점 처리하기 위해 BigDecimal 사용
		BigDecimal num1 = new BigDecimal(op1);
		BigDecimal num2 = new BigDecimal(op2);
		BigDecimal result = null;
		
		//올림: UP, CEIL, 내림 : DOWN, FLOOR, 반올림 : 5일경우 : HALF_EVEN, HALF_DOWN, HALF_UP
		MathContext mc = new MathContext(3, RoundingMode.HALF_EVEN);//소수점 이하 몇자리, 반올림 처리
		if(operator.equals("+")) {
			result = num1.add(num2, mc);
		} else if(operator.equals("-")) {
			result = num1.subtract(num2, mc);
		} else if(operator.equals("X")) {
			result = num1.multiply(num2, mc);
		} else if(operator.equals("/")) {
			result = num1.divide(num2, mc);
		}
				
		return result;
	}

}
