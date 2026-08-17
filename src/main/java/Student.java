import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Student {
private  int rollno;
private String name;
private int age;
private String course;
private String emailid;
public int getRollno() {
	return rollno;
}
public void setRollno(int rollno) {
	this.rollno = rollno;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public String getCourse() {
	return course;
}
public void setCourse(String course) {
	this.course = course;
}
public String getEmailid() {
	return emailid;
}
public void setEmailid(String emailid) {
	this.emailid = emailid;
}
public int add() {
	Connection connect=null;
	PreparedStatement pstmt1=null;
	try {
		connect=JDBCutils.getConnection();
			String sql="Insert into studentinfo (Rollno,Name,EmailId,Course,Age) values(?,?,?,?,?)";
			 pstmt1=connect.prepareStatement(sql);
			pstmt1.setInt(1, rollno);
			pstmt1.setString(2, name);
			pstmt1.setString(3, emailid);
			pstmt1.setString(4,course);
			pstmt1.setInt(5, age);
			int rowAffected=pstmt1.executeUpdate();
			return rowAffected;
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally {
		try {
			JDBCutils.closeConnection(pstmt1, connect);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	return 0;
	
}

}
