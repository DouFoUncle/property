package com.project.property.dao;

import com.project.property.entity.Menu;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @Author Mr.Wang
 * @Date 2020/10/27
 * @Description 下一位读我代码的人,有任何疑问请联系我,QQ：943701114
 */
@Mapper
public interface MenuMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);

    List<Menu> selectByAllInfo();
}