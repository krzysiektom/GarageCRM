package pl.coderslab.app;

import pl.coderslab.dao.CustomerDao;
import pl.coderslab.dao.EmployeeDao;
import pl.coderslab.model.Customer;
import pl.coderslab.model.Employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/EmployeesServlet")
public class EmployeesServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String street = request.getParameter("street");
        String zipCode = request.getParameter("zipCode");
        String city = request.getParameter("city");
        String phoneNumber = request.getParameter("phoneNumber");
        String note = request.getParameter("note");
        String costWorkHour = request.getParameter("costWorkHour");
        String idString = request.getParameter("id");
        Employee employee = new Employee(firstName, lastName, street, zipCode, city, phoneNumber, note, Integer.parseInt(costWorkHour));
        if (idString == null || "0".equals(idString)) {
            EmployeeDao.create(employee);
        } else {
            employee.setId(Integer.parseInt(idString));
            EmployeeDao.update(employee);
        }
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String employeeIdToDelete = request.getParameter("employeeIdToDelete");
        if (employeeIdToDelete != null && !"0".equals(employeeIdToDelete)) {
            EmployeeDao.delete(EmployeeDao.loadEmployeeById(Integer.parseInt(employeeIdToDelete)));
        }
        List<Employee> employees = EmployeeDao.loadAllEmployee();
        request.setAttribute("employees", employees);
        getServletContext().getRequestDispatcher("/employeesList.jsp")
                .forward(request, response);
    }
}
