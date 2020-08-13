package mybean.car;

import java.util.Date;

public class CarDto {
	private String plateNumber;
	private long parkingTime;
	
	
	public CarDto(){}
	public CarDto(String plateNumber, long parkingTime) {
		super();
		this.plateNumber = plateNumber;
		this.parkingTime = parkingTime;
	}

	public String getPlateNumber() {
		return plateNumber;
	}

	public Date getParkingTime() {
		return new Date(parkingTime);
	}
}
