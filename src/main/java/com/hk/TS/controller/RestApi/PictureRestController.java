package com.hk.TS.controller.RestApi;

import com.hk.TS.pojo.Picture;
import com.hk.TS.service.impl.PictureServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/picture")
public class PictureRestController {

    @Autowired
    private PictureServiceImpl pictureService;

    @PostMapping("/create")
    public Boolean create(@RequestBody Picture picture) {
        return pictureService.insert(picture);
    }

    @GetMapping("/{id}")
    public Picture getById(@PathVariable Long id) {
        return pictureService.getById(id);
    }

    @GetMapping("/delete/{id}")
    public Boolean deleteById(@PathVariable Long id) {
        return pictureService.deleteById(id);
    }

    @GetMapping("/all")
    public List<Picture> getAll() {
        return pictureService.getPics(1, Integer.MAX_VALUE);
    }
//    Integer.MAX_VALUE
    @PostMapping("/update")
    public Boolean updatePerson(@RequestBody Picture picture) {
        return pictureService.update(picture);
    }



}
