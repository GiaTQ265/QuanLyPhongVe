package hello.utils;

import java.time.LocalDate;

public class MaVeNgauNhien {
	public String taoMaVe() {
		String[] arr = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S",
				"T", "U", "V", "W", "X", "Y", "Z" };
		Integer index1 = (int) (Math.random() * 26);
		Integer index2 = (int) (Math.random() * 26);
		Integer index3 = (int) (Math.random() * 26);
		Integer index4 = (int) (Math.random() * 26);
		Integer index5 = (int) (Math.random() * 26);
		int year = LocalDate.now().getYear();
		int month = LocalDate.now().getMonthValue();
		int day = LocalDate.now().getDayOfMonth();
		StringBuilder maVe = new StringBuilder();
		maVe.append(arr[index1]).append(arr[index2]).append(arr[index3]).append(arr[index4]).append(arr[index5])
				.append(year).append(month).append(day);
//      UUID uuid = UUID.randomUUID();
		return maVe.toString();
	}
}
