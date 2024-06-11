package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 机动护士：(MobileNurse)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "MobileNurse")
public class MobileNurse implements Serializable {

    // MobileNurse编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "mobile_nurse_id")
    private Integer mobile_nurse_id;

    // 护士工号
    @Basic
    private Integer nurse_no;
    // 护士姓名
    @Basic
    private String nurse_name;
    // 所属大科
    @Basic
    private String major_family;
    // 状态
    @Basic
    private String state;
    // 调配病区
    @Basic
    private String allocation_of_wards;
    // 联系电话
    @Basic
    private String contact_number;
    // 入库时间
    @Basic
    private Timestamp warehousing_time;
    // 调配状态
    @Basic
    private String deployment_status;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
