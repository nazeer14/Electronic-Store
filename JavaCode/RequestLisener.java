package com.pack1;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

//@WebListener
public class RequestLisener implements ServletRequestListener,ServletRequestAttributeListener
{
	@Override
	public void requestInitialized(ServletRequestEvent sre)
	{
		System.out.println("Request Object Initialized");
	}
	@Override
	public void requestDestroyed(ServletRequestEvent sre)
	{
		System.out.println("Request Object Destroyed");
	}
	@Override
	public void attributeAdded(ServletRequestAttributeEvent srae)
	{
		System.out.println("Attribute added to Servlet Request");
		System.out.println("===>"+srae.getName());
	}
	@Override
	public void attributeRemoved(ServletRequestAttributeEvent srae)
	{
		System.out.println("Attribute removed from Servlet Request");
	}



}
