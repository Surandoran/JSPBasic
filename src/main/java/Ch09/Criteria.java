package Ch09;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
    
    private String type; //검색타입
    private int start; //시작번호
    private int end; //끝ㅇ번호

    public Criteria() {
        end=100;
    }
    
}
