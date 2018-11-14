package com.hk.TS.controller.backmanage;

import com.hk.TS.service.PictureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/pic")
public class PictureController {

    @Autowired
    private PictureService pictureService;

    @RequestMapping("/save")
    @ResponseBody
    public Map<String, Object> save(@RequestParam MultipartFile file) throws Exception {
        Map<String, Object> location = new HashMap<>();
        location.put("location", "/up/image/" + pictureService.save(file));
        return location;
    }
}
