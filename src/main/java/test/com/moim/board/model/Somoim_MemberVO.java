package test.com.moim.board.model;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class Somoim_MemberVO {
    private int num;
    private String user_id;
    private Timestamp join_date;
    private String position;
    private String som_title;
    private String save_nme;
}
