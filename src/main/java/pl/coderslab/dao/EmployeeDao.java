package pl.coderslab.dao;

import pl.coderslab.model.Customer;
import pl.coderslab.model.Employee;
import pl.coderslab.utils.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDao {
    public static Employee create(Employee employee) {
        try {
            Connection conn = DbUtil.getConn();
            String sql = "INSERT INTO employees (first_name, last_name, street, zip_code, city, phone_number, note, cost_work_hour) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            String[] generatedColumns = {"id"};
            PreparedStatement preparedStatement = conn.prepareStatement(sql, generatedColumns);
            preparedStatementEmployee(employee, preparedStatement);
            preparedStatement.executeUpdate();
            ResultSet rs = preparedStatement.getGeneratedKeys();
            if (rs.next()) {
                employee.setId(rs.getInt(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Wystąpił wyjątek, numer błędu: " + e.getErrorCode());
        }
        return employee;
    }

    private static void preparedStatementEmployee(Employee employee, PreparedStatement preparedStatement) throws SQLException {
        preparedStatement.setString(1, employee.getFirstName());
        preparedStatement.setString(2, employee.getLastName());
        preparedStatement.setString(3, employee.getStreet());
        preparedStatement.setString(4, employee.getZipCode());
        preparedStatement.setString(5, employee.getCity());
        preparedStatement.setString(6, employee.getPhoneNumber());
        preparedStatement.setString(7, employee.getNote());
        preparedStatement.setInt(8, employee.getCostWorkHour());
    }

    public static void update(Employee employee) {
        try (Connection conn = DbUtil.getConn()) {
            String sql = "UPDATE employees SET first_name=?, last_name=?, street=?, zip_code=?, city=?, phone_number=?, note=?, cost_work_hour=? where id=?";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatementEmployee(employee, preparedStatement);
            preparedStatement.setInt(9, employee.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Wystąpił wyjątek, numer błędu: " + e.getErrorCode());
        }
    }

    public static Employee delete(Employee employee) {
        if (employee.getId() != 0) {
            try (Connection conn = DbUtil.getConn()) {
                String sql = "DELETE FROM employees WHERE id=?";
                PreparedStatement preparedStatement = conn.prepareStatement(sql);
                preparedStatement.setInt(1, employee.getId());
                preparedStatement.executeUpdate();
                employee.setId(0);
            } catch (SQLException e) {
                System.out.println("Wystąpił wyjątek, numer błędu: " + e.getErrorCode());
            }
        }
        return employee;
    }

    public static Employee loadEmployeeById(int id) {
        if (id != 0) {
            try (Connection conn = DbUtil.getConn()) {
                String sql = "SELECT * FROM employees WHERE id=?";
                PreparedStatement preparedStatement = conn.prepareStatement(sql);
                preparedStatement.setInt(1, id);
                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet.next()) {
                    return getEmployeeFromResultSet(conn, resultSet);
                }
            } catch (SQLException e) {
                System.out.println("Wystąpił wyjątek, numer błędu: " + e.getErrorCode());
            }
        }
        return new Employee();
    }

    static private Employee getEmployeeFromResultSet(Connection conn, ResultSet resultSet) throws SQLException {
        Employee loadedEmployee = new Employee();
        loadedEmployee.setId(resultSet.getInt("id"));
        loadedEmployee.setFirstName(resultSet.getString("first_name"));
        loadedEmployee.setLastName(resultSet.getString("last_name"));
        loadedEmployee.setStreet(resultSet.getString("street"));
        loadedEmployee.setZipCode(resultSet.getString("zip_code"));
        loadedEmployee.setCity(resultSet.getString("city"));
        loadedEmployee.setPhoneNumber(resultSet.getString("phone_number"));
        loadedEmployee.setNote(resultSet.getString("note"));
        loadedEmployee.setCostWorkHour(resultSet.getInt("cost_work_hour"));
        return loadedEmployee;

    }
    public static List<Employee> loadAllEmployee() {
        List<Employee> employees = new ArrayList<>();
        try (Connection conn = DbUtil.getConn()) {
            String sql = "SELECT * FROM employees";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                employees.add(getEmployeeFromResultSet(conn, resultSet));
            }
        } catch (SQLException e) {
            System.out.println("Wystąpił wyjątek, numer błędu: " + e.getErrorCode());
        }
        return employees;
    }
}
