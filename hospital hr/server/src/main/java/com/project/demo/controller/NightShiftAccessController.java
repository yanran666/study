package com.project.demo.controller;

import com.project.demo.entity.NightShiftAccess;
import com.project.demo.service.NightShiftAccessService;
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
 * 夜班准入：(NightShiftAccess)表控制层
 *
 */
@RestController
@RequestMapping("/night_shift_access")
public class NightShiftAccessController extends BaseController<NightShiftAccess, NightShiftAccessService> {

    /**
     * 夜班准入对象
     */
    @Autowired
    public NightShiftAccessController(NightShiftAccessService service) {
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