package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 护理部：(NursingDepartment)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "NursingDepartment")
public class NursingDepartment implements Serializable {

    // NursingDepartment编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "nursing_department_id")
    private Integer nursing_department_id;

    // 护理部工号
    @Basic
    private String nursing_department_job_number;
    // 护理部姓名
    @Basic
    private String name_of_nursing_department;












    // 用户编号
    @Id
    @Column(name = "user_id")
    private Integer userId;


    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
