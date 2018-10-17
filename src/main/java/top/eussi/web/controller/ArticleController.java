package top.eussi.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import top.eussi.domain.Article;
import top.eussi.service.ArticleService;

import javax.servlet.http.HttpServletRequest;

@Controller
public class ArticleController {

    @Autowired
    ArticleService articleService;

    @RequestMapping("/article")
    public ModelAndView detail(HttpServletRequest request){
        String id=request.getParameter("id");
        Article article=articleService.get(id);

        ModelAndView modelAndView=new ModelAndView("article");
        modelAndView.addObject("article",article);
        return modelAndView;
    }
}
