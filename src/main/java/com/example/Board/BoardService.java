package com.example.Board;

import java.util.List;
public interface BoardService {
        public int insertBoard(BoardVO vo);
        public BoardVO getBoard(int id);
        public List<BoardVO> getBoardList() ;

        public int deleteBoard(int id);

        public int updateBoard(BoardVO vo);
}
