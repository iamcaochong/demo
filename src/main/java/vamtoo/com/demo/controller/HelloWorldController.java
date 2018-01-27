package vamtoo.com.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    @RequestMapping("/")
    public String helloworld (String name){
        String result = String.format("hello, i am %s", name);
        System.out.print(result);
        return result;
    }
}
