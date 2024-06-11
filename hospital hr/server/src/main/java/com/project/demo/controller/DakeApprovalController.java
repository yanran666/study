package com.project.demo.controller;

import com.project.demo.entity.DakeApproval;
import com.project.demo.service.DakeApprovalService;
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
 * 大科审批：(DakeApproval)表控制层
 *
 */
@RestController
@RequestMapping("/dake_approval")
public class DakeApprovalController extends BaseController<DakeApproval, DakeApprovalService> {

    /**
     * 大科审批对象
     */
    @Autowired
    public DakeApprovalController(DakeApprovalService service) {
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
