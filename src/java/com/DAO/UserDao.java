/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.User.UserDetails;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Lenovo
 */
public class UserDao {
    private Connection conn;
    public UserDao(Connection conn)
    {
        super();
        this.conn=conn;
        
    }
    public boolean addUser(UserDetails us)
    {
        boolean f=false;
        try{
            String query="insert into eusers(name,email,password) values(?,?,?)";
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setString(1,us.getName());
            ps.setString(2,us.getEmail());
            ps.setString(3,us.getPassword());
            int i=ps.executeUpdate();
            if(i==1)
            {
                f=true;
            }
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        return f;
    }
    public UserDetails loginUser(UserDetails us)
    {
        UserDetails user=null;
        
        try{
            String query="select * from eusers where email=? and password=?";
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setString(1,us.getEmail());
             ps.setString(2,us.getPassword());
             ResultSet rs=ps.executeQuery();
             if(rs.next())
             {
                user=new UserDetails();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword("password");
             }
            
            
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
       return user;
    }
    
}
