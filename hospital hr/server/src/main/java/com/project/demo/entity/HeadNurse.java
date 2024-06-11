package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 护士长：(HeadNurse)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "HeadNurse")
public class HeadNurse implements Serializable {

    // HeadNurse编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "head_nurse_id")
    private Integer head_nurse_id;

    // 护士长工号
    @Basic
    private String nurse_head_job_number;
    // 护士长姓名
    @Basic
    private String nurse_head_name;
    // 职位
    @Basic
    private String position;












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
