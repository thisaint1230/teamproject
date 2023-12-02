package com.example.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
class BoardRowMapper implements RowMapper<boardVO>{
    @Override
    public boardVO mapRow(ResultSet rs, int rowNum) throws SQLException{
            boardVO vo = new boardVO();
        vo.setSeq(rs.getInt("seq"));
        vo.setTitle(rs.getString("title"));
        vo.setContent(rs.getString("content"));
        vo.setWriter(rs.getString("writer"));
        vo.setCategory (rs.getString("category"));
        vo.setRegdate(rs.getDate("regdate"));
        return vo;
}
@Repository
public class boardDAO {
    @Autowired
    JdbcTemplate jdbcTemplate;
    public int insertBoard(boardVO vo) {
        String sql = "insert into BOARD (title, writer, content, category) values ('
                + "'" + vo.getTitle() +"',"
                + "'" + vo.getWriter() + "',"
                + "'" + vo.getContent() + "',"
                + "''" + vo.getCategory() + ")";

        return jdbcTemplate.update(sql);
    }
    public int deleteBoard(int seq) {
        String sql = " delete from BOARD where seq = " + seq;

        return jdbcTemplate.update(sql);
    }
    public int updateBoard(boardVO vo) {
        String sql = "update BOARD set title=''' + vo.getTitle() +', "
                + "title='" + vo.getTitle() + "'"
                + " Writer='" + vo.getWriter() + "'" + "content='" + vo.getContent() + "', "
                + "category='" + vo.getCategory() + "' where seq=" + vo.getSeq();
        return jdbcTemplate.update(sql);
    }
    public boardVO getBoard(int seq) {
        String sql = "select * from BOARD where seq=" + seq;
        return jdbcTemplate.queryForObject(sql, new BoardRowMapper());
    }
    public List<boardVO> getBoardList() {
        String sql = "select * from BOARD order by regdate desc";
        return jdbcTemplate.query(sql, new BoardRowMapper());
    }
}
