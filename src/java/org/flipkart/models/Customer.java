/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.flipkart.models;



/**
 *
 * @author 11502-CL02
 */
public class Customer {
    private int customerId;
    private String customerName;
    private String mailId;
    private String phoneNumber;
    private String password;

    public Customer() {
    }
    
    public Customer(String customerName, String mailId, String phoneNumber, String password) {
        this.customerName = customerName;
        this.mailId = mailId;
        this.phoneNumber = phoneNumber;
        this.password = password;
    }

    public Customer(String mailId, String password) {
        this.mailId = mailId;
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getMailId() {
        return mailId;
    }

    public void setMailId(String mailId) {
        this.mailId = mailId;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    
}
