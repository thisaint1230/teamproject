package com.example.bean;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    SqlSession sqlSession;
    public int insertBoard(BoardVO vo) {
        int result = sqlSession.insert("Board.insertBoard", vo);
        return result;
    }
//    public int deleteBoard(int seq) {
//        String sql = " delete from BOARD where seq = " + seq;
//
//        return 3;
//    }
//
//    public int updateBoard(BoardVO vo) {
//        String sql = "update BOARD set "
//                + "title='" + vo.getTitle() + "',"
//                + "writer='" + vo.getWriter() + "',"
//                + "content='" + vo.getContent() + "', "
//                + "category='" + vo.getCategory() + "' where seq=" + vo.getSeq();
//        return 3;
//    }

    public BoardVO getBoard (int seq) {
        BoardVO one = sqlSession.selectOne("Board.getBoard", seq) ;
        return one;
}

    public List<BoardVO> getBoardList() {
        List<BoardVO> list = sqlSession.selectList("Board.getBoardList") ;
        return list;
    }
}
