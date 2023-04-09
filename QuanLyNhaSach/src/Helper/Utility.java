/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Helper;

/**
 *
 * @author Chau Thinh
 */
public class Utility {
     private static Utility instance;
    public static Utility getInstance() {
        if(instance == null)
            instance = new Utility();
        return instance;
    }
    private Utility() {}
    
    public static int createID(String query, Object[] params) throws Exception {
        int id = JDBCHelper.getInstance().ExecuteScalar(query, params);
        return id + 1;
    }
    public static boolean checkNumber(String number) {
        if(number.matches("^[1-9][0-9]+$")){
            return true;
        }
        return false;
    }
}
