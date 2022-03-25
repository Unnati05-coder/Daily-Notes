/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Lenovo
 */
public class Dbconnector {
      private static Connection conn;
    public static Connection getConn()
    {
        try
        {
            if(conn==null)
            {
                Class.forName("oracle.jdbc.OracleDriver");
                 conn=DriverManager.getConnection("jdbc:oracle:thin:@//DESKTOP-MT7DBES:1521","notes","mystudents");
            }
        }
        catch(Exception ex)
        {
             ex.printStackTrace();
        }
        return conn;
    }
    public static void closeconnection()
    {
        try{
            conn.close();
            System.out.println("connection closed");
        }
        
         catch(Exception ex)
        {
            System.out.println("exception while fetching the data!");
        }
        
    }
    
}
