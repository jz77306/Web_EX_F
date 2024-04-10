package Net.Huawei.service;

import Net.Huawei.Bean.User;
import Net.Huawei.dao.UserDao;
public class UserService {

    private UserDao userDao = new UserDao();

    public User Login(String UserName, String PassWord)
    {
        return userDao.Login(UserName, PassWord);
    }

}
