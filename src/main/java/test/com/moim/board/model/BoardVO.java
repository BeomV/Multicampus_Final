package test.com.moim.board.model;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class BoardVO {
    private int num;
    private String title;
    private String content;
    private String save_name;
    private Timestamp write_date;
    private int view_count;
    private int good_count;
    private int vote_num;
    private int som_member_num;
    private String som_title;
    private String category;


}
