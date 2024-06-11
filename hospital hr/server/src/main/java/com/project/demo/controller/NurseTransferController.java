package com.project.demo.controller;

import com.project.demo.entity.NurseTransfer;
import com.project.demo.service.NurseTransferService;
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
 * 护士转科：(NurseTransfer)表控制层
 *
 */
@RestController
@RequestMapping("/nurse_transfer")
public class NurseTransferController extends BaseController<NurseTransfer, NurseTransferService> {

    /**
     * 护士转科对象
     */
    @Autowired
    public NurseTransferController(NurseTransferService service) {
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
