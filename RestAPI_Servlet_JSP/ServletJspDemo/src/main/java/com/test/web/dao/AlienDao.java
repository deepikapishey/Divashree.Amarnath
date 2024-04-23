package com.test.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.test.web.model.Alien;

public class AlienDao {
	
	public Alien getAlien(int aid)
	{
		Alien a=new Alien();
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deepi","root","your_password");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("Select * from alien where aid="+aid);
			if(rs.next())
			{
				a.setAid(rs.getInt("aid"));
				a.setAname(rs.getString("aname"));
				a.setTech(rs.getString("tech"));
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return a;
	}

}
