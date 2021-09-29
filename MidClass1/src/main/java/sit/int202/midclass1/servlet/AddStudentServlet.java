package sit.int202.midclass1.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import sit.int202.midclass1.models.Student;
import sit.int202.midclass1.models.StudentRepository;

import java.io.IOException;

@WebServlet(name = "AddStudentServlet", value = "/add-student")
public class AddStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/StudentForm.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String gpax = request.getParameter("gpax");


        if (id == null || id.length() == 0 || name == null || name.trim().length() == 0 || gpax == null || gpax.length() == 0) {
            request.setAttribute("msg", "Invalid input all field are required");
            getServletContext().getRequestDispatcher("/StudentForm.jsp").forward(request, response);
            return;
        }
        Student s = new Student(Integer.valueOf(id), name, Double.valueOf(gpax));
        StudentRepository studentRepository = new StudentRepository();
        studentRepository.save(s);
        request.setAttribute("student", s);
        //getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        getServletContext().getRequestDispatcher("/ShowStudentInfo.jsp").forward(request, response);
    }
}
