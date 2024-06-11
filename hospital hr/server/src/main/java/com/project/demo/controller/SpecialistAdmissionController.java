package com.project.demo.controller;

import com.project.demo.entity.SpecialistAdmission;
import com.project.demo.service.SpecialistAdmissionService;
import com.project.demo.controller.base.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 专科准入：(SpecialistAdmission)表控制层
 *
 */
@RestController
@RequestMapping("/specialist_admission")
public class SpecialistAdmissionController extends BaseController<SpecialistAdmission, SpecialistAdmissionService> {

    /**
     * 专科准入对象
     */
    @Autowired
    public SpecialistAdmissionController(SpecialistAdmissionService service) {
        setService(service);
    }


    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        this.addMap(paramMap);
        return success(1);
    }

}
