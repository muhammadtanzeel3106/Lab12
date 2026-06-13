package com.temperature;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/convert")
public class TemperatureServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        String celsiusParam = request.getParameter("celsius");
        String result = "";
        String errorMsg = "";

        if (celsiusParam != null && !celsiusParam.isEmpty()) {
            try {
                double celsius = Double.parseDouble(celsiusParam);
                double fahrenheit = (celsius * 9 / 5) + 32;
                result = String.format("%.2f", fahrenheit);
            } catch (NumberFormatException e) {
                errorMsg = "Invalid input. Please enter a valid number.";
            }
        } else {
            errorMsg = "Please enter a temperature value.";
        }

        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html lang='en'>");
        out.println("<head>");
        out.println("  <meta charset='UTF-8'>");
        out.println("  <title>Temperature Converter - Result</title>");
        out.println("  <style>");
        out.println("    body { font-family: Arial, sans-serif; background: #f0f4f8; display: flex;");
        out.println("           justify-content: center; align-items: center; height: 100vh; margin: 0; }");
        out.println("    .card { background: white; border-radius: 12px; padding: 40px;");
        out.println("            box-shadow: 0 4px 20px rgba(0,0,0,0.1); text-align: center; max-width: 400px; }");
        out.println("    h2 { color: #2c3e50; }");
        out.println("    .result { font-size: 2rem; color: #e74c3c; font-weight: bold; margin: 20px 0; }");
        out.println("    .error  { color: #c0392b; font-size: 1.1rem; margin: 20px 0; }");
        out.println("    a { display: inline-block; margin-top: 20px; padding: 10px 25px;");
        out.println("        background: #3498db; color: white; border-radius: 6px;");
        out.println("        text-decoration: none; font-size: 1rem; }");
        out.println("    a:hover { background: #2980b9; }");
        out.println("  </style>");
        out.println("</head>");
        out.println("<body>");
        out.println("  <div class='card'>");
        out.println("    <h2>🌡️ Conversion Result</h2>");

        if (!errorMsg.isEmpty()) {
            out.println("    <div class='error'>⚠️ " + errorMsg + "</div>");
        } else {
            out.println("    <p>" + celsiusParam + " °C is equal to:</p>");
            out.println("    <div class='result'>" + result + " °F</div>");
        }

        out.println("    <a href='index.jsp'>← Convert Another</a>");
        out.println("  </div>");
        out.println("</body>");
        out.println("</html>");
    }
}