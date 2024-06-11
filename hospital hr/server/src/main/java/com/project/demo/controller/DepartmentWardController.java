package com.project.demo.controller;

import com.project.demo.entity.DepartmentWard;
import com.project.demo.service.DepartmentWardService;
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
 * 科室病区：(DepartmentWard)表控制层
 *
 */
@RestController
@RequestMapping("/department_ward")
public class DepartmentWardController extends BaseController<DepartmentWard, DepartmentWardService> {

    /**
     * 科室病区对象
     */
    @Autowired
    public DepartmentWardController(DepartmentWardService service) {
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
