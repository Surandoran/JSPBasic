package Ch09;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
public class BookDTO {

    private int no;
    private int bookcode;
    private String bookname;
    private String publisher;
    private int totalpage;
    private int amount;

    public BookDTO() {
    }
}
