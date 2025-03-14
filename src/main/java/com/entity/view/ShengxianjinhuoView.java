package com.entity.view;

import com.entity.ShengxianjinhuoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 生鲜进货
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-12 22:31:57
 */
@TableName("shengxianjinhuo")
public class ShengxianjinhuoView  extends ShengxianjinhuoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShengxianjinhuoView(){
	}
 
 	public ShengxianjinhuoView(ShengxianjinhuoEntity shengxianjinhuoEntity){
 	try {
			BeanUtils.copyProperties(this, shengxianjinhuoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
