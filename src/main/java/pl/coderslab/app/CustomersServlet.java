package pl.coderslab.app;

import pl.coderslab.dao.CustomerDao;
import pl.coderslab.model.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

@WebServlet("/CustomersServlet")
public class CustomersServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String dateOfBirth = request.getParameter("dateOfBirth");
        String idString = request.getParameter("id");
        if (dateOfBirth.equals("")) {
            dateOfBirth = "2038-01-19";
        }
        Customer customer = new Customer(firstName, lastName, Date.valueOf(dateOfBirth));
        if (idString == null) {
            CustomerDao.create(customer);
        } else {
            customer.setId(Integer.parseInt(idString));
            CustomerDao.update(customer);
        }
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idString = request.getParameter("customerId");
        if (idString!=null && !"0".equals(idString)) {
            CustomerDao.delete(CustomerDao.loadCustomerById(Integer.parseInt(idString)));
        }
        List<Customer> customers = CustomerDao.loadAllCustomers();
        request.setAttribute("customers", customers);
        getServletContext().getRequestDispatcher("/customersList.jsp")
                .forward(request, response);
    }
}
