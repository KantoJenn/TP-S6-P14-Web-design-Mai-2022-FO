package com.blogia.blogiafrontoffice.control;

import com.blogia.blogiafrontoffice.hibernate.HibernateDAO;
import com.blogia.blogiafrontoffice.modele.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Collections;
import java.util.List;

@Controller
public class FOcontroller {
    @Autowired
    HibernateDAO dao;

    @GetMapping("Liste")
    private String ListeArticle(Model model) {
        model.addAttribute("liste",dao.findAll(Article.class));
        return "Liste";
    }

    @GetMapping("/Details")
    private String Details(@RequestParam("id") int id, Model model){
        List<Article> liste = Collections.singletonList(dao.findById(Article.class, id));
        model.addAttribute("liste",liste);
        return "Details";
    }

}
