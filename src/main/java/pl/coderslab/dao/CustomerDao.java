package pl.coderslab.dao;

import pl.coderslab.model.Customer;
import pl.coderslab.utils.DbUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerDao {
    public static Customer create(Customer customer) {
        try (Connection conn = DbUtil.getConn()) {
            String sql = "INSERT INTO customers(first_name, last_name, date_of_birth) VALUES (?, ?, ?)";
            String[] generatedColumns = {"customer_id"};
            PreparedStatement preparedStatement = conn.prepareStatement(sql, generatedColumns);
            preparedStatement.setString(1, customer.getFirstName());
            preparedStatement.setString(2, customer.getLastName());
            preparedStatement.setDate(3, (Date) customer.getDateOfBirth());
            preparedStatement.executeUpdate();
            ResultSet rs = preparedStatement.getGeneratedKeys();
            if (rs.next()) {
                customer.setId(rs.getInt(1));
            }
        } catch (SQLException e) {
            System.out.println("Wystąpił wyjątek, numer błędu: " + e.getErrorCode());
        }
        return customer;
    }

    public static Customer delete(Customer customer) {
        if (customer.getId() != 0) {
            try (Connection conn = DbUtil.getConn()) {
                String sql = "DELETE FROM users WHERE id=?";
                PreparedStatement preparedStatement = conn.prepareStatement(sql);
                preparedStatement.setInt(1, customer.getId());
                preparedStatement.executeUpdate();
                customer.setId(0);
            } catch (SQLException e) {
                System.out.println("Wystąpił wyjątek, numer błędu: " + e.getErrorCode());
            }
        }
    return customer;
    }

    public static List<Customer> loadAllCustomers() {
        List<Customer> customers = new ArrayList<>();
        try (Connection conn = DbUtil.getConn()) {
            String sql = "SELECT * FROM customers";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                customers.add(getCustomersFromResultSet(conn, resultSet));
            }
        } catch (SQLException e) {
            System.out.println("Wystąpił wyjątek, numer błędu: " + e.getErrorCode());
        }


        return customers;
    }

    static private Customer getCustomersFromResultSet(Connection conn, ResultSet resultSet) throws SQLException {
        Customer loadedCustomer = new Customer();
        loadedCustomer.setId(resultSet.getInt("customer_id"));
        loadedCustomer.setFirstName(resultSet.getString("first_name"));
        loadedCustomer.setLastName(resultSet.getString("last_name"));
        loadedCustomer.setDateOfBirth(resultSet.getDate("date_of_birth"));
        return loadedCustomer;
    }
}
