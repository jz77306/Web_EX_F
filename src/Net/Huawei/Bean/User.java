package Bean;
import java.util.*;

public class User {
    private int ID;
    private String UserName;
    private String PassWord;
    private String CataLog;

    public int GetID() {return ID;}
    public void SetID(int ID) {this.ID = ID;}
    public String GetUserName() {return UserName;}
    public void SetUsrName(String UserName) {this.UserName = UserName;}
    public String getPassWord() {return PassWord;}
    public void setPassWord(String passWord) {PassWord = passWord;}
    public String getCataLog() {return CataLog;}
    public void setCataLog(String cataLog) {CataLog = cataLog;}

    public String ToString()
    {
        return "User" + ID + ", UserName" + UserName + ", CataLog" + CataLog;
    }
}
