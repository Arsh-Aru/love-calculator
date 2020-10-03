package com.aravind.lc.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class LCApplicationInitializer extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		Class[] arr= {AppConfig.class};
		return arr;
	}

	@Override
	protected String[] getServletMappings() {
		String[] arr= {"/mywebsite.com/*"};
		return arr;
	}

}
