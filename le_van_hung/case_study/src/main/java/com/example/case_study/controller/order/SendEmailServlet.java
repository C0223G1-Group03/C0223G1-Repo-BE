package com.example.case_study.controller.order;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

@WebServlet(name = "SendEmailServlet", value = "/send")
public class SendEmailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/order/send_email.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final String username = "lehuy0311@gmail.com";
        final String passwoed = "xspxtrltwicsqpgr";
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication(){
                return  new PasswordAuthentication(username, passwoed);
            }
        });
        // Dang nhap dc email
        String emailTo = req.getParameter("to");
        String emailSubject = req.getParameter("subject");
        String emailContent = req.getParameter("content");
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(emailTo)
                    //
            );
            message.setSubject(emailSubject);
            message.setContent(emailContent, "text/html; charset=UTF-8");
            Transport.send(message);
            System.out.println("Done");
            resp.sendRedirect("/order?message=Da Gui Thu Den Email Cua Ban");
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
