package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 科室病区：(DepartmentWard)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "DepartmentWard")
public class DepartmentWard implements Serializable {

    // DepartmentWard编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "department_ward_id")
    private Integer department_ward_id;

    // 科室名称
    @Basic
    private String department_name;
    // 科室类型
    @Basic
    private String department_type;
    // 联系电话
    @Basic
    private String contact_number;
    // 护士人数
    @Basic
    private Integer number_of_nurses;
    // 工作职责
    @Basic
    private String operating_duty;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
