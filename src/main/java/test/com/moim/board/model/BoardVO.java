package test.com.moim.board.model;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class BoardVO {
    private int num;
    private String som_title;
    private String category;
    private int max_member;
    private Timestamp create_date;

}
