package com.project.demo.controller;

import com.project.demo.entity.NursingDepartment;
import com.project.demo.service.NursingDepartmentService;
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
 * 护理部：(NursingDepartment)表控制层
 *
 */
@RestController
@RequestMapping("/nursing_department")
public class NursingDepartmentController extends BaseController<NursingDepartment, NursingDepartmentService> {

    /**
     * 护理部对象
     */
    @Autowired
    public NursingDepartmentController(NursingDepartmentService service) {
        setService(service);
    }


    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        Map<String, String> mapnursing_department_job_number = new HashMap<>();
        mapnursing_department_job_number.put("nursing_department_job_number",String.valueOf(paramMap.get("nursing_department_job_number")));
        List listnursing_department_job_number = service.select(mapnursing_department_job_number, new HashMap<>()).getResultList();
        if (listnursing_department_job_number.size()>0){
            return error(30000, "字段护理部工号内容不能重复");
        }
        this.addMap(paramMap);
        return success(1);
    }

}
