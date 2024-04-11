package service;

import Bean.User;
import dao.UserDao;
public class UserService {

    private UserDao userDao = new UserDao();

    public User Login(String UserName, String PassWord)
    {
        return userDao.Login(UserName, PassWord);
    }

}
