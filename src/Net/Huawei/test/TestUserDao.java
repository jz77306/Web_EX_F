package test;

import Bean.User;
import dao.UserDao;
import org.junit.Test;
public class TestUserDao {
    @Test
    public void TestLogin()
    {
        String username = "jz77306";
        String password = "jz77306C";

        UserDao userDao = new UserDao();

        User user = userDao.Login(username, password);

        if(user != null)
        {
            System.err.println(username + "登陆成功");
        }
        else
        {
            System.err.println(username + "登陆失败");
        }
    }
}
