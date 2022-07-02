package Ch07;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class CreateRepository {

    public ArrayList<ProductDTO> list = new ArrayList<>();
    //KEY : 카테고리 VALUE : 상품정보
    public Map<String, ArrayList<ProductDTO>> cart = new HashMap<>();

    public void addCart(String userid, ArrayList<ProductDTO>list) {

    }

}
