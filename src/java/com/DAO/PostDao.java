/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.User.post;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Lenovo
 */
public class PostDao {
    private Connection conn;

    public PostDao(Connection conn) {
        super();
        this.conn = conn;
    }
   
    public boolean AddNotes(String ti,String co,int ui)
    {
        boolean f=false;
        try{
            String query="insert into enotes(title,content,id) values(?,?,?)";
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setString(1,ti);
            ps.setString(2,co);
            ps.setInt(3, ui);
            int i=ps.executeUpdate();
            if(i==1)
            {
                f=true;
            }
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        return f;
    }
    public List<post> getData(int id)
    {
        List<post> list=new ArrayList<post>();
        post po=null;
        try{
            String qu="select * from enotes where id=? order by eid DESC";
            PreparedStatement ps=conn.prepareStatement(qu);
            ps.setInt(1, id);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                po=new post();
                po.setEid(rs.getInt(1));
                po.setTitle(rs.getString(2));
                po.setContent(rs.getString(3));
                po.setDa(rs.getTimestamp(4));
                list.add(po);
                
            }
                    
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        return list;
    }
    public post getDataById(int noteId)
    {
        post p=null;
        try{
            String query="select * from enotes where eid=?";
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setInt(1, noteId);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
                p=new post();
                p.setEid(rs.getInt(1));
                p.setTitle(rs.getString(2));
                p.setContent(rs.getString(3));
                
            }
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        return p;
    }
    public boolean postUpdate(int ni,String ti,String co){
        boolean f=false;
        try{
            String query="update enotes set title=?,content=? where eid=?";
             PreparedStatement ps=conn.prepareStatement(query);
             
               ps.setString(1, ti);
                ps.setString(2, co);
                 ps.setInt(3, ni);
                 int i=ps.executeUpdate();
                 if(i==1)
                 {
                     f=true;
                 }
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        return f;
    }
    public boolean deleteNotes(int nid){
        boolean f=false;
        try{
              String query="delete from enotes where  eid=?";
             PreparedStatement ps=conn.prepareStatement(query);
             ps.setInt(1, nid);
              int x=ps.executeUpdate();
                 if(x==1)
                 {
                     f=true;
                 }
            
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        return f;
    }
    
}
