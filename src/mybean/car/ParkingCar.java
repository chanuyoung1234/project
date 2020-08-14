package mybean.car;

import java.util.Date;

public class ParkingCar {
	private String carOwn;
	private String carVar;
	private String carNum;
	private Date regdate;
	
	public ParkingCar(String carOwn, String carVar, String carNum, Date regdate) {
		super();
		this.carOwn = carOwn;
		this.carVar = carVar;
		this.carNum = carNum;
		this.regdate = regdate;
	}

	public String getCarOwn() {
		return carOwn;
	}

	public void setCarOwn(String carOwn) {
		this.carOwn = carOwn;
	}

	public String getCarVar() {
		return carVar;
	}

	public void setCarVar(String carVar) {
		this.carVar = carVar;
	}

	public String getCarNum() {
		return carNum;
	}

	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
	
}
