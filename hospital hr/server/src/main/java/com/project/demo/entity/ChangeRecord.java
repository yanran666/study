package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 变动记录：(ChangeRecord)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "ChangeRecord")
public class ChangeRecord implements Serializable {

    // ChangeRecord编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "change_record_id")
    private Integer change_record_id;

    // 护士工号
    @Basic
    private Integer nurse_no;
    // 护士姓名
    @Basic
    private String nurse_name;
    // 所属大科
    @Basic
    private String major_family;
    // 联系电话
    @Basic
    private String contact_number;
    // 变动类型
    @Basic
    private String change_type;
    // 操作人
    @Basic
    private String operator;
    // 变动时间
    @Basic
    private Timestamp change_time;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
