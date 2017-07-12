/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.mavenspring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pe.edu.upeu.mavenspring.dao.UsuarioDAO;
import pe.edu.upeu.mavenspring.model.UsuarioDTO;



/**
 *
 * @author UPEU
 */
@Controller
public class HomeController {
    @Autowired
    private static UsuarioDAO uO;
//    
//    @RequestMapping(value="/")
//    public String main(){	
//            return "main";
//    }
//    @RequestMapping(value="/kk")
//    public String ListarRol(){	
//            return "ListarRol";
//    }
//    
    @RequestMapping(value="/")
    public String login(){	
            return "inicio";
    }
    @RequestMapping(value = "/loguea" ,  method = RequestMethod.POST)
        public ModelAndView Logueo(ModelAndView model ,HttpServletRequest resquest, HttpServletResponse response){
            String user = resquest.getParameter("user");
            String Pass = resquest.getParameter("pass");
            HttpSession sesion = resquest.getSession();
        UsuarioDTO d =uO.Validar(user, Pass);
             if (d != null ) {
                 resquest.getSession().setAttribute("user", d);
                 model.setViewName("main");
             }else{
                 sesion.setAttribute("Persona", null);
                model.setViewName("index");

             }
        return model;
         }
    
}

