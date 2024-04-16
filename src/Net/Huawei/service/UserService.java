package service;

import Bean.User;
import dao.UserDao;
public class UserService
{
        private UserDao UD = new UserDao();

        public User login (String UserName, String PassWord)
        {
            User outUser = UD.Login(UserName, PassWord);
            if(outUser != null)
            {
                System.out.println("outUser is not null");
            }
            else
            {
                System.out.println("outUser is null");
            }
            return outUser;
        }

}
