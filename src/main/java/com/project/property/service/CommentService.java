package com.project.property.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.project.property.entity.Comment;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.project.property.dao.CommentMapper;
import com.project.property.entity.Comment;

import java.util.List;

@Service
public class CommentService{

    @Resource
    private CommentMapper commentMapper;

    
    public int deleteByPrimaryKey(String ids) {
        return commentMapper.deleteByPrimaryKey(ids);
    }

    
    public int insertSelective(Comment record) {
        return commentMapper.insertSelective(record);
    }

    
    public Comment selectByPrimaryKey(Integer id) {
        return commentMapper.selectByPrimaryKey(id);
    }

    
    public int updateByPrimaryKeySelective(Comment record) {
        return commentMapper.updateByPrimaryKeySelective(record);
    }

    /**
     * 分页查询数据
     * @param comment
     * @param page
     * @param limit
     * @return
     */
    public List<Comment> selectDataByPage(Comment comment, Integer page, Integer limit, String type) {
        // 开启分页
        PageHelper.startPage(page, limit);
        PageInfo<Comment> pageInfo = new PageInfo<Comment>(commentMapper.selectDataByParam(comment, type));
        return pageInfo.getList();
    }

    /**
     * 查询数据总条数
     * @param comment
     * @return
     */
    public Integer selectDataCount(Comment comment, String type) {
        return commentMapper.selectCount(comment, type);
    }

    /**
     * 根据用户ID查询
     * @param ids
     * @return
     */
    public List<Comment> selectInfoByUserId(String ids) {
        return commentMapper.selectInfoByUserId(ids);
    }

    /**
     * 逻辑删除
     * @param delIds
     * @return
     */
    public Integer updateByDelete(String delIds, String type) {
        return commentMapper.updateByDelete(delIds, type);
    }

    /**
     * 根据公告ID查询
     * @param noticeId
     * @return
     */
    public List<Comment> selectInfoByNoticeId(Integer noticeId) {
        return commentMapper.selectInfoByNoticeId(noticeId);
    }
}
