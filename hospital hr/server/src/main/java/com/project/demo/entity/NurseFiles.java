package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 护士档案：(NurseFiles)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "NurseFiles")
public class NurseFiles implements Serializable {

    // NurseFiles编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "nurse_files_id")
    private Integer nurse_files_id;

    // 护士长
    @Basic
    private Integer head_nurse;
    // 护士工号
    @Basic
    private Integer nurse_no;
    // 护士姓名
    @Basic
    private String nurse_name;
    // 性别
    @Basic
    private String gender;
    // 身份证号码
    @Basic
    private String id_no;
    // 婚姻状态
    @Basic
    private String marital_status;
    // 籍贯
    @Basic
    private String native_place;
    // 生日
    @Basic
    private String birthday;
    // 民族
    @Basic
    private String nation;
    // 政治面貌
    @Basic
    private String political_landscape;
    // 联系电话
    @Basic
    private String contact_number;
    // 电子邮箱
    @Basic
    private String e_mail;
    // 家庭住址
    @Basic
    private String home_address;
    // 家庭联系人
    @Basic
    private String family_contact;
    // 联系人电话
    @Basic
    private String contact_phone_number;
    // 参加工作日期
    @Basic
    private Timestamp date_of_participation_in_work;
    // 来院工作日期
    @Basic
    private Timestamp date_of_work_in_the_hospital;
    // 护龄
    @Basic
    private String nursing_age;
    // 学历
    @Basic
    private String education;
    // 职称
    @Basic
    private String title;
    // 年龄
    @Basic
    private String age;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
