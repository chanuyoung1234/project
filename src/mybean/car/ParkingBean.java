package mybean.car;

import java.util.ArrayList;

public class ParkingBean {
	private ArrayList<CarDto>carList=new ArrayList<CarDto>();
	
	public void setEnter(String plate) {
		CarDto dto = new CarDto(plate, System.currentTimeMillis());
		carList.add(dto);
	}
	public void setExit(String plate) {
		CarDto dto = null;
		for(int i=0; i<carList.size(); i++) {
			dto=carList.get(i);
			if(plate.equals(dto.getPlateNumber())) {
				carList.remove(i);
				break;
			}
		}
	}
	
	public int getCounter() {
		return carList.size();
	}
	
	public ArrayList<CarDto> getCarInfo() {
		return carList;
	}
}
