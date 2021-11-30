package sql;

import java.sql.*;

/**
 * @author 25090
 */
public class DBUtil {
    private static Connection connection=null;
    public static boolean createConnection() throws ClassNotFoundException, SQLException {
        String URL = "jdbc:mysql://localhost:3306/student";
        String USER = "root";
        String PASSWORD = "123456";
        //1.加载驱动程序
        Class.forName("C");
        //2.获得数据库链接
        connection = DriverManager.getConnection(URL, USER, PASSWORD);
        return true;
    }

    public static void main(String[] args) throws ClassNotFoundException, SQLException {

        //3.通过数据库的连接操作数据库，实现增删改查（使用Statement类）
        Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery("select * from studentbase");
        //4.处理数据库的返回结果(使用ResultSet类)
        while (rs.next()) {
            System.out.println(rs.getString("id") + " "
                    + rs.getString("name"));
        }

        //关闭资源
        rs.close();
        statement.close();
        connection.close();
    }
}
