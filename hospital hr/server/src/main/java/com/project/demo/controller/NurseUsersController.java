package com.project.demo.controller;

import com.project.demo.entity.NurseUsers;
import com.project.demo.service.NurseUsersService;
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
 * 护士用户：(NurseUsers)表控制层
 *
 */
@RestController
@RequestMapping("/nurse_users")
public class NurseUsersController extends BaseController<NurseUsers, NurseUsersService> {

    /**
     * 护士用户对象
     */
    @Autowired
    public NurseUsersController(NurseUsersService service) {
        setService(service);
    }


    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        Map<String, String> mapnurse_no = new HashMap<>();
        mapnurse_no.put("nurse_no",String.valueOf(paramMap.get("nurse_no")));
        List listnurse_no = service.select(mapnurse_no, new HashMap<>()).getResultList();
        if (listnurse_no.size()>0){
            return error(30000, "字段护士工号内容不能重复");
        }
        this.addMap(paramMap);
        return success(1);
    }

}
