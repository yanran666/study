package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 护士转科：(NurseTransfer)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "NurseTransfer")
public class NurseTransfer implements Serializable {

    // NurseTransfer编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "nurse_transfer_id")
    private Integer nurse_transfer_id;

    // 护士工号
    @Basic
    private Integer nurse_no;
    // 护士姓名
    @Basic
    private String nurse_name;
    // 当前科室
    @Basic
    private String current_department;
    // 转科科室
    @Basic
    private String transfer_department;
    // 转科时间
    @Basic
    private Timestamp transfer_time;
    // 转科原因
    @Basic
    private String reason_for_transfer;



    // 审核状态
    @Basic
    private String examine_state;








    // 审核回复
    @Basic
    private String examine_reply;



    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
