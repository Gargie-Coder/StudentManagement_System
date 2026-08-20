import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

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
public List<List<Object>> view() {
	Connection connect=null;
	PreparedStatement pstmt=null;
	try {
			connect=JDBCutils.getConnection();
		String query="Select * from studentinfo";
		pstmt=connect.prepareStatement(query);
	ResultSet result=pstmt.executeQuery();
		List<List<Object>>  dataList=new ArrayList<>();
		while(result.next()) { 
				int rollno=result.getInt("Rollno");
				String name=result.getString("Name");
				int age=result.getInt("Age");
				String email=result.getString("Emailid");
				String course=result.getString("Course");
				dataList.add(Arrays.asList(rollno,name,age,email,course));
		}
		return dataList;
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally {
		try {
			JDBCutils.closeConnection(pstmt, connect);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	return null;
	}
public int delete(int rollno2) {
	Connection connect=null;
	PreparedStatement pstmt=null;
	try {
		connect=JDBCutils.getConnection();
		String query = "DELETE FROM studentinfo WHERE Rollno = ?";

        pstmt = connect.prepareStatement(query);

        pstmt.setInt(1, rollno2);
		int rowAffected=pstmt.executeUpdate();
		return rowAffected;
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally {
		try {
			JDBCutils.closeConnection(pstmt, connect);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	return 0;
}
public int update(int rollno,String name,String course,int age,String emailid) {
	Connection connect=null;
	PreparedStatement pstmt=null;
	try {
		connect=JDBCutils.getConnection();
		String query="Update studentinfo SET Name=?, Age=?, Course=?, Emailid=? WHERE Rollno=?";
		pstmt=connect.prepareStatement(query);
		pstmt.setString(1,name);
		pstmt.setInt(2,age);
		pstmt.setString(3,course);
		pstmt.setString(4, emailid);
		pstmt.setInt(5,rollno);
		int result=pstmt.executeUpdate();
		return result;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	finally {
		try {
			JDBCutils.closeConnection(pstmt, connect);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	return 0;
}
public List<Object> search(int rollno) {
	Connection connect=null;
	PreparedStatement pstmt=null;
	List<Object> list=new ArrayList<>();
	// TODO Auto-generated method stub
	try {
		connect=JDBCutils.getConnection();
		String query="Select * from studentinfo where Rollno=?";
		pstmt=connect.prepareStatement(query);
		pstmt.setInt(1,rollno);
		ResultSet result=pstmt.executeQuery();
		while(result.next()) {
			list.add(rollno);
			list.add(result.getString("Name"));
			list.add(result.getString("Course"));
			list.add(result.getInt("Age"));
			list.add(result.getString("Emailid"));
		}	
		return list;
	} catch (SQLException e) {
		e.printStackTrace();
	}
	finally {
		try {
			JDBCutils.closeConnection(pstmt, connect);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	return null;
}
public List<Integer> details() {
    Connection connect = null;
    PreparedStatement pstmt = null;
    ResultSet result = null;

    List<Integer> list = new ArrayList<>();

    try {
        connect = JDBCutils.getConnection();

        String query =
            "SELECT " +
            "(SELECT COUNT(*) FROM studentinfo) AS total, " +
            "(SELECT COUNT(DISTINCT Course) FROM studentinfo) AS courses, " +
            "(SELECT COUNT(*) FROM studentinfo " +
            " WHERE created_at >= NOW() - INTERVAL 7 DAY) AS newStudents";

        pstmt = connect.prepareStatement(query);
        result = pstmt.executeQuery();

        if (result.next()) {
            list.add(result.getInt("total"));
            list.add(result.getInt("courses"));
            list.add(result.getInt("newStudents"));
        }

    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        try {
            if (result != null) {
                result.close();
            }

            if (pstmt != null) {
                pstmt.close();
            }

            if (connect != null) {
                connect.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    return list;
}
}