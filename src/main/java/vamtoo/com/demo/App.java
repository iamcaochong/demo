package vamtoo.com.demo;

import java.util.UUID;

public class App {
    public static void  main(String[] args){
        System.out.print(UUID.randomUUID().toString().substring(0,12).length());
        System.out.print(UUID.randomUUID().toString().substring(0,12));
    }
}
