package Net.Huawei.dao;

import Net.Huawei.Bean.User;
import Net.Huawei.DButils.ConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class UserDao {
    public User Login(String UserName, String PassWord)
    {
        User user = null;
        Connection Conn = ConnectionManager.getConnection();
        try
        {
            //创建预制语句对象
            String strSQL = "SELECT * FROM t_user WHERE UserName = ? AND PassWord = ?";
            PreparedStatement PreStat = Conn.prepareStatement(strSQL);
            //设置占位符
            PreStat.setString(1, UserName);
            PreStat.setString(2, PassWord);

            ResultSet rs = PreStat.executeQuery();

            if(rs.next())
            {
                user = new User();
                user.SetID(rs.getInt("ID"));
                user.SetUsrName(rs.getString("UserName"));
                user.setPassWord(rs.getString("PassWord"));
                user.setCataLog(rs.getString("CataLog"));
            }
        }
        catch(SQLException e)
        {
            System.err.println(e.getMessage());
        }
        finally {
            ConnectionManager.CloseConnection(Conn);
        }
        return user;
    }
}
