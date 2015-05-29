package com.yc.controller.init;

import javax.annotation.Resource;

import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Repository;

import com.yc.entity.user.User;
import com.yc.service.IUserService;

@Repository
public class InitDate implements ApplicationListener{
	
	@Resource
	IUserService nationService;
	
	@Override
	public void onApplicationEvent(ApplicationEvent arg0) {
		initArticleCategory();
	}

	private void initArticleCategory() {
		User nat = nationService.findById(1);
		if (nat==null) {
			nat = new User();
			nat.setUserName("金牌农资管理员");
			nat.setLoginName("admin");
			nat.setPassword("000000");
			nationService.save(nat);
		}
	}

}
