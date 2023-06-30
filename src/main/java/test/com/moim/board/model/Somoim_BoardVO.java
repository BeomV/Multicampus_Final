package test.com.moim.board.model;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class Somoim_BoardVO {
    private int num;
    private String title;
    private String content;
    private String save_nmae;
    private Timestamp write_date;
    private int view_count;
    private int good_count;
    private int vote_num;
    private int som_member_num;

//  Somoim_Member FK
    private String user_id;

}
