package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 护理部审批：(NursingDepartmentApproval)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "NursingDepartmentApproval")
public class NursingDepartmentApproval implements Serializable {

    // NursingDepartmentApproval编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "nursing_department_approval_id")
    private Integer nursing_department_approval_id;

    // 病区护士长
    @Basic
    private Integer ward_head_nurse;
    // 请假人工号
    @Basic
    private String leave_labor_number;
    // 请假人姓名
    @Basic
    private String please_provide_the_dummys_name;
    // 病区
    @Basic
    private String inpatient_area;
    // 休假原因
    @Basic
    private String reason_for_vacation;
    // 申请资料
    @Basic
    private String application_materials;
    // 授权人
    @Basic
    private String authorized_person;
    // 休假起止日期
    @Basic
    private String starting_and_ending_dates_of_vacation;
    // 大科护士长
    @Basic
    private Integer chief_nurse_of_major_department;
    // 大科批准日期
    @Basic
    private Timestamp date_of_approval_by_dake;
    // 护理部
    @Basic
    private Integer nursing_department;
    // 护理部批准日期
    @Basic
    private Timestamp approval_date_of_nursing_department;
    // 审批状态
    @Basic
    private String approval_status;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
