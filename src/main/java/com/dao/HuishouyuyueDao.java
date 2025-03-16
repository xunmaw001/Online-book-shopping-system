package com.dao;

import com.entity.HuishouyuyueEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.HuishouyuyueVO;
import com.entity.view.HuishouyuyueView;


/**
 * 回收预约
 * 
 * @author 
 * @email 
 * @date 2021-01-18 07:36:34
 */
public interface HuishouyuyueDao extends BaseMapper<HuishouyuyueEntity> {
	
	List<HuishouyuyueVO> selectListVO(@Param("ew") Wrapper<HuishouyuyueEntity> wrapper);
	
	HuishouyuyueVO selectVO(@Param("ew") Wrapper<HuishouyuyueEntity> wrapper);
	
	List<HuishouyuyueView> selectListView(@Param("ew") Wrapper<HuishouyuyueEntity> wrapper);

	List<HuishouyuyueView> selectListView(Pagination page,@Param("ew") Wrapper<HuishouyuyueEntity> wrapper);
	
	HuishouyuyueView selectView(@Param("ew") Wrapper<HuishouyuyueEntity> wrapper);
	
}
