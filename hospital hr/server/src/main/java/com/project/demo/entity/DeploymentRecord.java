package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 调配记录：(DeploymentRecord)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "DeploymentRecord")
public class DeploymentRecord implements Serializable {

    // DeploymentRecord编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "deployment_record_id")
    private Integer deployment_record_id;

    // 护士工号
    @Basic
    private Integer nurse_no;
    // 护士姓名
    @Basic
    private String nurse_name;
    // 所属大科
    @Basic
    private String major_family;
    // 调配病区
    @Basic
    private String allocation_of_wards;
    // 开始时间
    @Basic
    private Timestamp start_time;
    // 结束时间
    @Basic
    private Timestamp end_time;
    // 评分
    @Basic
    private String score;
    // 评价内容
    @Basic
    private String evaluation_content;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
