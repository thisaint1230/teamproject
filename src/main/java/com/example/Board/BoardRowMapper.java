package com.example.Board;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardRowMapper implements RowMapper<BoardVO> {
        @Override
        public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            BoardVO vo = new BoardVO();
            vo.setId(rs.getInt("id"));
            vo.setProductCondition(rs.getString("productCondition"));
            vo.setCategory(rs.getString("category"));
            vo.setName(rs.getString("name"));
            vo.setPrice(rs.getInt("price"));
            vo.setSeller(rs.getString("seller"));
            vo.setCity(rs.getString("city"));
            vo.setPossibleDelivery(rs.getBoolean("possibleDelivery"));
            vo.setRegdate(rs.getDate("regdate"));
            return vo;
        }
}
