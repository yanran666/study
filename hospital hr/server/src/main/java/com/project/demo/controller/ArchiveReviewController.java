package com.project.demo.controller;

import com.project.demo.entity.ArchiveReview;
import com.project.demo.service.ArchiveReviewService;
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
 * 档案审核：(ArchiveReview)表控制层
 *
 */
@RestController
@RequestMapping("/archive_review")
public class ArchiveReviewController extends BaseController<ArchiveReview, ArchiveReviewService> {

    /**
     * 档案审核对象
     */
    @Autowired
    public ArchiveReviewController(ArchiveReviewService service) {
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
