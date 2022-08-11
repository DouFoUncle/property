package com.project.property.service;

import cn.hutool.core.date.DateUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.project.property.entity.User;
import com.project.property.entity.UserComplaint;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.project.property.entity.UserRepair;
import com.project.property.dao.UserRepairMapper;

import java.util.List;

/**
 * @Author Mr.Wang
 * @Date 2020/10/26
 * @Description 下一位读我代码的人,有任何疑问请联系我,QQ：943701114
 */
@Service
public class UserRepairService{

    /**
     * 数据访问层对象
     */
    @Resource
    private UserRepairMapper userRepairMapper;

    /**
     * 根据主键删除
     * @param ids
     * @return
     */
    public int deleteByPrimaryKey(String ids) {
        // 判断是否可以删除（未处理不可删除）
        List<UserRepair> repairs = userRepairMapper.selectByIdAndStatus(ids);
        if(repairs != null && repairs.size() > 1) {
            return -500;
        }
        return userRepairMapper.deleteByPrimaryKey(ids);
    }

    /**
     * 选择性插入
     * @param record
     * @return
     */
    public int insertSelective(UserRepair record) {
        // 补充数据
        record.setCreateDate(DateUtil.now());
        record.setIsSolve("0");
        return userRepairMapper.insertSelective(record);
    }

    /**
     * 根据主键查询单条数据
     * @param id
     * @return
     */
    public UserRepair selectByPrimaryKey(Integer id) {
        return userRepairMapper.selectByPrimaryKey(id);
    }

    /**
     * 根据主键选择性更新
     * @param record
     * @return
     */
    public int updateByPrimaryKeySelective(UserRepair record) {
        return userRepairMapper.updateByPrimaryKeySelective(record);
    }

    /**
     * 分页查询全部数据
     * @param userRepair    查询条件
     * @param page          当前页
     * @param limit         每页显示的数据量
     * @return
     */
    public List<UserRepair> selectDataByPage(UserRepair userRepair, Integer page, Integer limit) {
        // 开启分页插件
        PageHelper.startPage(page, limit);
        // 使用分页插件查询
        PageInfo<UserRepair> pageInfo = new PageInfo<UserRepair>(userRepairMapper.selectDataByParam(userRepair));
        // 返回数据
        return pageInfo.getList();
    }

    /**
     * 查询数据总量
     * @param userRepair
     * @return
     */
    public Integer selectDataCount(UserRepair userRepair) {
        return userRepairMapper.selectDataCount(userRepair);
    }
}
