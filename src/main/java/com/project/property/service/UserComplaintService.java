package com.project.property.service;

import cn.hutool.core.date.DateUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import com.project.property.entity.UserComplaint;
import com.project.property.dao.UserComplaintMapper;

import java.util.List;

/**
 * @Author Mr.Wang
 * @Date 2020/10/26
 * @Description 下一位读我代码的人, 有任何疑问请联系我, QQ：943701114
 */
@Service
public class UserComplaintService {

    @Resource
    private UserComplaintMapper userComplaintMapper;

    /**
     * 根据主键删除
     * @param ids
     * @return
     */
    public int deleteByPrimaryKey(String ids) {
        // 判断是否可以删除（未处理不可删除）
        List<UserComplaint> complaintList = userComplaintMapper.selectByIdAndStatus(ids);
        if(complaintList != null && complaintList.size() > 0) {
            return -500;
        }
        return userComplaintMapper.deleteByPrimaryKey(ids);
    }

    /**
     * 选择性插入
     * @param record
     * @return
     */
    public int insertSelective(UserComplaint record) {
        // 补充数据
        record.setCreateDate(DateUtil.now());
        record.setIsSolve("0");
        return userComplaintMapper.insertSelective(record);
    }

    /**
     * 根据主键查询单条数据
     *
     * @param id
     * @return
     */
    public UserComplaint selectByPrimaryKey(Integer id) {
        return userComplaintMapper.selectByPrimaryKey(id);
    }

    /**
     * 根据主键选择性更新
     * @param record
     * @return
     */
    public int updateByPrimaryKeySelective(UserComplaint record) {
        return userComplaintMapper.updateByPrimaryKeySelective(record);
    }

    /**
     * 分页查询数据
     * @param userComplaint
     * @param page
     * @param limit
     * @return
     */
    public List<UserComplaint> selectDataByPage(UserComplaint userComplaint, Integer page, Integer limit) {
        // 开启分页插件
        PageHelper.startPage(page, limit);
        // 使用分页插件处理数据
        PageInfo<UserComplaint> pageInfo = new PageInfo<UserComplaint>(userComplaintMapper.selectDataByParam(userComplaint));
        // 返回数据
        return pageInfo.getList();
    }

    /**
     * 查询数据总量
     * @param userComplaint
     * @return
     */
    public Integer selectDataCount(UserComplaint userComplaint) {
        return userComplaintMapper.selectDataCount(userComplaint);
    }
}
