package com.models;

import java.util.ArrayList;
import java.util.List;

import com.beans.BookInfo;

public class Utilities {
	public static List<BookInfo> getBooklist(){
		List<BookInfo> itemlist = new ArrayList<BookInfo>();
		BookInfo info = new BookInfo();
		info.setName("Head First HTML与CSS 第2版");
		info.setAuthor("（美）罗布森（Robson,E）");
		info.setIsbn("978-7-5123-4477-8");
		info.setPress("中国电力出版社");
		info.setPrice("98.00元");
		itemlist.add(info);
		info = new BookInfo();
		info.setName("软件工程：实践者的研究方法（第8版）");
		info.setAuthor("（美）罗杰 S.普莱斯曼（Roger S.Pressman）");
		info.setIsbn("978-7-111-55501-8");
		info.setPress("机械工业出版社");
		info.setPrice("59.00元");
		itemlist.add(info);
		info = new BookInfo();
		info.setName("Head First Servlets and JSP：第二版：中文版");
		info.setAuthor("（美）巴萨姆（Basham,B.）");
		info.setIsbn("978-7-5083-8897-7");
		info.setPress("中国电力出版社");
		info.setPrice("118.00元");
		itemlist.add(info);
		info = new BookInfo();
		info.setName("大学计算机第四版");
		info.setAuthor("蒋加伏");
		info.setIsbn("978-7-5635-3444-9");
		info.setPress("北京邮电大学出版社");
		info.setPrice("38.00元");
		itemlist.add(info);
		info = new BookInfo();
		info.setName("习近平谈治国理政");
		info.setAuthor("国务院新闻办公室会同中央文献研究室、中国外文局");
		info.setIsbn("978-7-1190-9087-0");
		info.setPress("外文出版社");
		info.setPrice("80.00元");
		itemlist.add(info);
		return itemlist;
	}
}
