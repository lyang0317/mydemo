package entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="m_Comment")
public class Comment {
	@Id
	@GeneratedValue
     private int id;
     private Date comment_date=new Date();
     private String content;
     @ManyToOne
     private User user;
     @ManyToOne
     private Mv mv;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getComment_date() {
		return comment_date.toString().substring(0,10);
	}
	public void setComment_date(Date comment_date) {
		this.comment_date = comment_date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Mv getMv() {
		return mv;
	}
	public void setMv(Mv mv) {
		this.mv = mv;
	}
     
}
