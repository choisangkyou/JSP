package modal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class MemberDao {
	private static MemberDao instance;
	private  Connection conn;
	
	String driverName ="com.mysql.jdbc.Driver";
	String url ="jdbc:mysql://localhost:3306/campe4s";
	String user="root";
	String password ="0000";
	
	public static MemberDao getInstance() {
		if(instance == null)
			instance = new MemberDao();
		return instance;
	}

	/*public static void CloseConnction() {
		if(conn !=null)
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	*/
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
	public boolean insertMember(Member member) {
		boolean result =false;
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
			
			int row = ps.executeUpdate();
			if(row>0) {
				result = true;
				//System.out.println("등록 되었습니다.");
			}
			
		} catch (SQLException e) {
			System.out.println("SQL Error: insertMember()");
		}finally {
			 if(ps !=null)
				try {
					ps.close();
					//conn.close();
				} catch (SQLException e) {
					System.out.println("Exception connection close();");
				}
		}
		
		return result;
		
	}
	
	/* Member Exist Check*/
	public boolean getMemberExist(Member member) {
		boolean result = false;//[true]등록,[false]미등록
		String sql =null;
			
		sql = "select * From member where id=?";
		
		PreparedStatement ps =null;
		ResultSet rs =null;
		try {
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, member.getId());
							
			rs= ps.executeQuery();
			
			if(rs.next()) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("SQL Error: Exist()");
			
		}finally {
			
			 if(ps !=null)
				try {
					ps.close();
					//conn.close();
				} catch (SQLException e) {
					System.out.println("Exception connection close();");
				}
		}
		
		
		return result;
		
	}
	
	/* MemberCheck */
	public Member MemberCheck(String id,String password) {
		Member member = new Member();
		String sql = "select * From member where id=? and password =?";
		PreparedStatement ps =null;
		ResultSet rs =null;
		try {
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, password);
			rs= ps.executeQuery();
			
			if(rs.next()) {
				member.setId(rs.getString("id"));
				member.setPassword(rs.getString("password"));
				member.setName("name");
				member.setEmail("email");
				member.setMobile("mobile");
				member.setBirthday("birthday");
				//System.out.println("MemberCheck:"+ rs.getString("id") );
			}
		
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("SQL Error: MemberCheck()");
			
		}finally {

			 if(ps !=null)
				try {
					ps.close();
					//conn.close();
				} catch (SQLException e) {
					System.out.println("Exception connection close();");
				}
		}
		
		
		return member;
		
	}
	
	
}