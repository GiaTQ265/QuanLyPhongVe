package hello.service;

public class MaVeNgauNhien {

	public String taoMaVe() {
		String[] arr = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S",
				"T", "U", "V", "W", "X", "Y", "Z" };
		Integer index1 = (int) (Math.random() * 26);
		Integer index2 = (int) (Math.random() * 26);
		Integer index3 = (int) (Math.random() * 26);
		Integer index4 = (int) (Math.random() * 26);
		Integer index5 = (int) (Math.random() * 26);
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.append(arr[index1]).append(arr[index2]).append(arr[index3]).append(arr[index4])
				.append(arr[index5]);
		return stringBuilder.toString();

	}
}
