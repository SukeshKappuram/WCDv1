/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.flipkart.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.flipkart.models.Customer;

/**
 *
 * @author 11502-CL02
 */
public class CustomerDAOImpl implements CustomerDAO{
    
    private boolean userValid=false;

    @Override
    public int register(Customer c) throws SQLException {
         Connection con=DriverManager.getConnection("jdbc:odbc:fp");
        Statement st=con.createStatement();
        return st.executeUpdate("insert into Customer(customerName, mailId, phoneNumber, password) values('"+c.getCustomerName()+"','"+c.getMailId()+"','"+c.getPhoneNumber()+"','"+c.getPassword()+"')");
     //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Customer verify(Customer c) throws SQLException {
        Connection con=DriverManager.getConnection("jdbc:odbc:fp");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from Customer where mailId='"+c.getMailId()+"'");
        if(rs.next()){
            if(rs.getString("password").equals(c.getPassword())){
                c.setCustomerName(rs.getString("CustomerName"));
                c.setPhoneNumber(rs.getString("PhoneNumber"));
                setUserValid(true);
            }
        }
        return c;
    }

    public boolean isUserValid() {
        return userValid;
    }

    public void setUserValid(boolean userValid) {
        this.userValid = userValid;
    }

  
    
}
