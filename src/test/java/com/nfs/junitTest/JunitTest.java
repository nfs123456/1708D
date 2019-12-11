package com.nfs.junitTest;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.Test;

import com.bawei.util.DateUtilssss;

/**
 * @author nfs
 *
 *         2019年12月11日
 */
public class JunitTest {

	@Test
	public void test() {
		long years = DateUtilssss.getYears("1998-07-28");
		System.out.println("今年的年龄是：" + years);
	}

	@Test
	public void test1() {
		String string = DateUtilssss.getDateByMonthInit("2019-02-11");
		System.out.println(string);
	}

	@Test
	public void test2() {
		long daysByDeparted = DateUtilssss.getDaysByDeparted("2020-07-28");
		System.out.println("未来的日期距离今天的天数："+daysByDeparted);
	}
	@Test
	public void test3() {
		long daysByDeparted = DateUtilssss.getDaysByDeparted("1998-07-28");
		System.out.println("过去的日期距离今天的天数："+daysByDeparted);
	}
	

}
