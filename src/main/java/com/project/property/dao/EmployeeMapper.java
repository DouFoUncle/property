package com.project.property.dao;

import com.project.property.entity.Employee;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author 斗佛
 * @Date 2022/1/10
 * @description 员工表对应的mapper层
 */
@Mapper
public interface EmployeeMapper {

    int deleteByPrimaryKey(@Param("ids") String ids);

    int insertSelective(Employee record);

    Employee selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Employee record);

    List<Employee> selectDataByParam(Employee employee);

    Integer selectDataCount(Employee employee);
}