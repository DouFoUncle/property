package com.project.property.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.project.property.entity.Admin;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import com.project.property.dao.CarParkMapper;
import com.project.property.entity.CarPark;

import java.util.List;

/**
 * @Author Mr.Wang
 * @Date 2020/10/26
 * @Description 下一位读我代码的人,有任何疑问请联系我,QQ：943701114
 */
@Service
public class CarParkService{

    @Resource
    private CarParkMapper carParkMapper;

    
    public int deleteByPrimaryKey(String id) {
        // 删除前查询是否有售出的
        List<CarPark> carParks = carParkMapper.selectInfoByIds(id);
        for (CarPark carPark : carParks) {
            if("1".equals(carPark.getParkState())) {
                return -500;
            }
        }
        return carParkMapper.deleteByPrimaryKey(id);
    }

    
    public int insert(CarPark record) {
        return carParkMapper.insert(record);
    }

    
    public int insertSelective(CarPark record) {
        return carParkMapper.insertSelective(record);
    }

    
    public CarPark selectByPrimaryKey(Integer id) {
        return carParkMapper.selectByPrimaryKey(id);
    }

    
    public int updateByPrimaryKeySelective(CarPark record) {
        return carParkMapper.updateByPrimaryKeySelective(record);
    }

    
    public int updateByPrimaryKey(CarPark record) {
        return carParkMapper.updateByPrimaryKey(record);
    }

    /**
     * 分页查询数据
     * @param carPark    查询条件
     * @param page       当前页
     * @param limit      每页显示的数据量
     * @return
     */
    public List<CarPark> selectDataByPage(CarPark carPark, Integer page, Integer limit) {
        // 开启分页插件
        PageHelper.startPage(page, limit);
        // 查询数据
        PageInfo<CarPark> pageInfo = new PageInfo<CarPark>(carParkMapper.selectDataByParam(carPark));
        // 返回分页查询后的数据
        return pageInfo.getList();
    }

    /**
     * 查询数据总数
     * @param carPark   查询条件
     * @return
     */
    public Integer selectDataCount(CarPark carPark) {
        return carParkMapper.selectDataCount(carPark);
    }
}
