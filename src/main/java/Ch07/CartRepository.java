package Ch07;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class CartRepository {
	public static ArrayList<ProductDTO> list = new ArrayList();
	//key : UserID value: 상품리스트
	public static Map<String,ArrayList<ProductDTO>> cart = new HashMap();
	
	public void addCart(String userid, ArrayList<ProductDTO> list) {
		
	}
}
