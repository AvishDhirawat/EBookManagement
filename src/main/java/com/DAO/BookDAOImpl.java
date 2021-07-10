package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BookDAOImpl implements BookDAO {
	
	private Connection conn;
	
	public BookDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addBooks(BookDtls b) {
		boolean f = false;
		try {
			//below line is partial
			String sql = "insert into book_dtls(booknamem, author, price, bookCatagory, status, photo, email) values ";
			PreparedStatement ps = conn.preparedStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getBookCatagory());
			ps.setString(5, b.getStatus());
			ps.setString(6, b.getPhotoName());
			ps.setString(7, b.getEmail());
			
			int i = ps.executeUpdate();
			if(i==1)
			{
				f = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public List<BookDtls> getAllBooks(){
		
		List<BookDtls> list = new ArrayList<BookDtls>();
		BookDtls b = null;
		
		try {
			String sql = "select * from book_dtls";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs  = ps.executeQuery();
			while(rs.next()) {
				b = new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCatagory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public BookDtls getBookById(int id) {
		BookDtls b = null;
		try {
			String sql = "select * from book_dtls where bookid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				b = new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCatagory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
//				list.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}
	
	public boolean updateEditBooks(BookDtls b) {
		boolean f = false;
		try {
			String sql = "update book_dtls set bookname=?, author=?, price=?, status=? where bookId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getStatus());
			ps.setString(5, b.getBookId());
			
			int i = ps.executeUpdate();
			if(i==1)
			{
				f = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean deleteBooks(int id) {
		// TODO Auto-generated method stub
		boolean f = false;
		try {
			
			String sql = "delete from book_dtls where bookId=? ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			int i = ps.executeUpdate();
			if(i==1)
			{
				f = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
//		return false;
		return f;
	}
	
	
	
}
