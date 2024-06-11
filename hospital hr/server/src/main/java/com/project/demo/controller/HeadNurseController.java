package com.project.demo.controller;

import com.project.demo.entity.HeadNurse;
import com.project.demo.service.HeadNurseService;
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
 * 护士长：(HeadNurse)表控制层
 *
 */
@RestController
@RequestMapping("/head_nurse")
public class HeadNurseController extends BaseController<HeadNurse, HeadNurseService> {

    /**
     * 护士长对象
     */
    @Autowired
    public HeadNurseController(HeadNurseService service) {
        setService(service);
    }


    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        Map<String, String> mapnurse_head_job_number = new HashMap<>();
        mapnurse_head_job_number.put("nurse_head_job_number",String.valueOf(paramMap.get("nurse_head_job_number")));
        List listnurse_head_job_number = service.select(mapnurse_head_job_number, new HashMap<>()).getResultList();
        if (listnurse_head_job_number.size()>0){
            return error(30000, "字段护士长工号内容不能重复");
        }
        this.addMap(paramMap);
        return success(1);
    }

}
