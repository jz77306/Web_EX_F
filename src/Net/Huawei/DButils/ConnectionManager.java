package DButils;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConnectionManager {

    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/test?usessl=false&useUnicode=true&characterEncoding=utf8";
    private static final String USER = "root";
    private static final String PASSWORD = "zjz031030";

    private ConnectionManager(){}

   //获取数据库连接
    public static Connection getConnection()
    {
        Connection Conn = null;
        try
        {
            Class.forName(DRIVER);
            Conn = DriverManager.getConnection(URL, USER, PASSWORD);
        }
        catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return Conn;
    }

    //关闭数据库连接
    public static void CloseConnection(Connection Conn)
    {
        if(Conn != null)
        {
            try
            {
                if(!Conn.isClosed())
                {
                    Conn.close();
                }
            }
            catch(SQLException e)
            {
                e.printStackTrace();
            }
        }
    }

    //测试静态方法
    public static void main(String[] args)
    {
        Connection Conn = getConnection();
        if(Conn != null)
        {
            System.out.println("Successfully Connected");
        }
        else
        {
            System.out.println("Connect Failed");
        }

        CloseConnection(Conn);
        System.out.println("Connection Shut");
    }

}
