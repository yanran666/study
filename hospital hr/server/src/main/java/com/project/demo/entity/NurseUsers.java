package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 护士用户：(NurseUsers)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "NurseUsers")
public class NurseUsers implements Serializable {

    // NurseUsers编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "nurse_users_id")
    private Integer nurse_users_id;

    // 护士工号
    @Basic
    private String nurse_no;
    // 护士姓名
    @Basic
    private String nurse_name;
    // 当前科室
    @Basic
    private String current_department;












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
