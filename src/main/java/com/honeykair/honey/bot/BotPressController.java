package com.honeykair.honey.bot;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BotPressController {
    Object botAnswer;
    @PostMapping("/bot/getBotState")
    public String getBotState(@RequestBody Object req){
        botAnswer = req;
        System.out.println(req); return  req.toString();
    }

    @PostMapping("/bot/getUserState")
    public String getUserState(@RequestBody String res ){
        return res;
    }
    @GetMapping("/bot/hookResponse")
    public Object getHookRes( ){
        return botAnswer;
    }
}
