package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 专科准入：(SpecialistAdmission)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "SpecialistAdmission")
public class SpecialistAdmission implements Serializable {

    // SpecialistAdmission编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "specialist_admission_id")
    private Integer specialist_admission_id;

    // 护士工号
    @Basic
    private Integer nurse_no;
    // 护士姓名
    @Basic
    private String nurse_name;
    // 所属大科
    @Basic
    private String major_family;
    // 审批状态
    @Basic
    private String approval_status;
    // 申请日期
    @Basic
    private Timestamp application_date;
    // 批准日期
    @Basic
    private Timestamp approval_date;
    // 申请资料
    @Basic
    private String application_materials;
    // 已通过科室
    @Basic
    private String passed_department;
    // 审批截止日期
    @Basic
    private Timestamp approval_deadline;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
