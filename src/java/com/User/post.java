/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.User;

import java.util.Date;

/**
 *
 * @author Lenovo
 */
public class post {
       private int eid;
    private String title;
    private String content;
    private Date da;
    private UserDetails user;
      public post()
    {
        super();
    }
  public post(int eid, String title, String content, Date da, UserDetails user) {
        this.eid = eid;
        this.title = title;
        this.content = content;
        this.da = da;
        this.user = user;
    }
    public void setEid(int eid) {
        this.eid = eid;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setDa(Date da) {
        this.da = da;
    }

    public void setUser(UserDetails user) {
        this.user = user;
    }

    public int getEid() {
        return eid;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public Date getDa() {
        return da;
    }

    public UserDetails getUser() {
        return user;
    }

  
    
    
    
}
