package modal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class MemberDao {
	private static MemberDao instance;
	private Connection conn;
	
	String driverName ="com.mysql.jdbc.Driver";
	String url ="jdbc:mysql://localhost:3306/campe4s";
	String user="root";
	String password ="0000";
	
	public static MemberDao getInstance() {
		if(instance == null)
			instance = new MemberDao();
		return instance;
	}


	private MemberDao() {
		try{
			Class.forName(driverName);
			conn = DriverManager.getConnection(url, user, password);
		}catch (ClassNotFoundException e){
			System.out.println("mysql jdbc driver can't loading..");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("커넥션이 연결하지 못하였습니다.");
		}
	}
	
	/*insert Member */
	public void insertMember(Member member) {
		String sql_append = "insert into member values(?,?,?,?,?,?)";
		PreparedStatement ps =null;
		
		try {
			
			ps =  conn.prepareStatement(sql_append);
			ps.setString(1, member.getId());
			ps.setString(2, member.getPassword());
			ps.setString(3, member.getName());
			ps.setString(4, member.getMobile());
			ps.setString(5, member.getEmail());
			ps.setString(6, member.getBirthday());
			
			int result = ps.executeUpdate();
			if(result>0) {
				System.out.println("등록 되었습니다.");
			}
			
		} catch (SQLException e) {
			System.out.println("SQL Error: insertMember()");
		}finally {
			 if(ps !=null)
				try {
					ps.close();
					conn.close();
				} catch (SQLException e) {
					System.out.println("Exception connection close();");
				}
		}
		
		
	}
	
	/*Exist Member Check*/
	public int getMemberExist(Member member) {
		int result = 0;
		//[0]:미등록,[1]등록,[-1]오류.
		String sql = "select count(id)as cnt member where id='?'";
		PreparedStatement ps =null;
		ResultSet rs =null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, member.getId());
			rs = ps.executeQuery();
			result = rs.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}finally {
			 if(ps !=null)
				try {
					ps.close();
					conn.close();
				} catch (SQLException e) {
					System.out.println("Exception connection close();");
				}
		}
		
		
		return result;
		
	}
	
}