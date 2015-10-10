package com.algohub.servlets;

import com.algohub.core.*;
import com.algohub.shared.AlgosEnum;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by vladimirpyagay on 10/10/15.
 */
@WebServlet(name = "AlgoManagementServlet")
public class AlgoManagementServlet extends HttpServlet {
    private AlgoManager mgr = new AlgoManager();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String algoName = request.getParameter("selectedAlgo");
        String res = "";

        switch(algoName){
            case "AnagramsTest":
                res = mgr.processAlgo(AlgosEnum.AnagramsTest);
                break;
            case "SubStringTest":
                break;
        }

        //response.getWriter().println(res);
        request.setAttribute("algoName", algoName);
        request.setAttribute("algoResult", res);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/results.jsp");
        dispatcher.forward(request, response);
    }

    /*
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().println("Inside the servlet");
    }
    */
}
