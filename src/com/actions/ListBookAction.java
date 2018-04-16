package com.actions;

import java.util.List;

import com.beans.BookInfo;
import com.beans.User;
import com.dao.BookDAO;
import com.models.Utilities;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

public class ListBookAction {
	
	BookDAO bookDAO = new BookDAO();
    BookInfo bookinfo;
    List<BookInfo> books;
     
    public List<BookInfo> getBooks() {
        return books;
    }
 
    public void setBooks(List<BookInfo> books) {
        this.books = books;
    }
 
    public BookInfo getBook() {
        return bookinfo;
    }
 
    public void setBookInfo(BookInfo bookInfo) {
        this.bookinfo = bookInfo;
    }
	
    public String add() {
        bookDAO.add(bookinfo);
        return "list";
    }
    public String edit() {
        bookinfo =bookDAO.get(bookinfo.getId());
        return "edit";
    }
    public String delete() {
        bookDAO.delete(bookinfo.getId());
        return "list";
    }
    public String update() {
        bookDAO.update(bookinfo);
        return "list";
    }
	public String list() {
		books = bookDAO.listBook();
		return "listJsp";
	}
	
	public String showList() {
		ValueStack vs = ActionContext.getContext().getValueStack();
		
		List<BookInfo> itemlist = Utilities.getBooklist();
		vs.set("itemlist", itemlist);
		return "success";
	}
}
