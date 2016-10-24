/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.flipkart.DAO;

import java.sql.SQLException;
import org.flipkart.models.Customer;

/**
 *
 * @author 11502-CL02
 */
public interface CustomerDAO {
    public int register(Customer c) throws SQLException;
    public Customer verify(Customer c) throws SQLException;
    public boolean isUserValid();
}
