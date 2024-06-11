<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">

							<el-col v-if="user_group === '管理员' || $check_field('get','ward_head_nurse') || $check_field('add','ward_head_nurse') || $check_field('set','ward_head_nurse')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="病区护士长" prop="ward_head_nurse">
													<el-select v-if="user_group === '管理员' || (form['dake_approval_id'] && $check_field('set','ward_head_nurse')) || (!form['dake_approval_id'] && $check_field('add','ward_head_nurse'))" id="ward_head_nurse" v-model="form['ward_head_nurse']" :disabled="disabledObj['ward_head_nurse_isDisabled']">
							<el-option v-for="o in list_user_ward_head_nurse" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
						<el-select v-else-if="$check_field('get','ward_head_nurse')" id="ward_head_nurse" v-model="form['ward_head_nurse']" :disabled="true">
							<el-option v-for="o in list_user_ward_head_nurse" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','leave_labor_number') || $check_field('add','leave_labor_number') || $check_field('set','leave_labor_number')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="请假人工号" prop="leave_labor_number">
												<el-input id="leave_labor_number" v-model="form['leave_labor_number']" placeholder="请输入请假人工号"
							  v-if="user_group === '管理员' || (form['dake_approval_id'] && $check_field('set','leave_labor_number')) || (!form['dake_approval_id'] && $check_field('add','leave_labor_number'))" :disabled="disabledObj['leave_labor_number_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','leave_labor_number')">{{form['leave_labor_number']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','please_provide_the_dummys_name') || $check_field('add','please_provide_the_dummys_name') || $check_field('set','please_provide_the_dummys_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="请假人姓名" prop="please_provide_the_dummys_name">
												<el-input id="please_provide_the_dummys_name" v-model="form['please_provide_the_dummys_name']" placeholder="请输入请假人姓名"
							  v-if="user_group === '管理员' || (form['dake_approval_id'] && $check_field('set','please_provide_the_dummys_name')) || (!form['dake_approval_id'] && $check_field('add','please_provide_the_dummys_name'))" :disabled="disabledObj['please_provide_the_dummys_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','please_provide_the_dummys_name')">{{form['please_provide_the_dummys_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','inpatient_area') || $check_field('add','inpatient_area') || $check_field('set','inpatient_area')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="病区" prop="inpatient_area">
												<el-input id="inpatient_area" v-model="form['inpatient_area']" placeholder="请输入病区"
							  v-if="user_group === '管理员' || (form['dake_approval_id'] && $check_field('set','inpatient_area')) || (!form['dake_approval_id'] && $check_field('add','inpatient_area'))" :disabled="disabledObj['inpatient_area_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','inpatient_area')">{{form['inpatient_area']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','reason_for_vacation') || $check_field('add','reason_for_vacation') || $check_field('set','reason_for_vacation')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="休假原因" prop="reason_for_vacation">
												<el-input id="reason_for_vacation" v-model="form['reason_for_vacation']" placeholder="请输入休假原因"
							  v-if="user_group === '管理员' || (form['dake_approval_id'] && $check_field('set','reason_for_vacation')) || (!form['dake_approval_id'] && $check_field('add','reason_for_vacation'))" :disabled="disabledObj['reason_for_vacation_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','reason_for_vacation')">{{form['reason_for_vacation']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','application_materials') || $check_field('add','application_materials') || $check_field('set','application_materials')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="申请资料" prop="application_materials">
												<div v-if="disabledObj['application_materials_isDisabled']">
						<div v-if="$check_field('get','application_materials')">
							<el-button type="primary" @click="$download($fullUrl(form['application_materials']),form['application_materials'])">下载<i
									class="el-icon-download el-icon--right"></i></el-button>
						</div>
					</div>
					<div v-else>
						<el-upload v-if="user_group === '管理员' || (form['dake_approval_id'] && $check_field('set','application_materials')) || (!form['dake_approval_id'] && $check_field('add','application_materials'))" class="upload-demo" drag
								   action="" style="max-width: 300px;width: 100%;" :http-request="upload_application_materials" :limit="1" accept="">
							<i class="el-icon-upload"></i>
							<div class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
						</el-upload>
						<div v-else-if="$check_field('get','application_materials')">
							<el-button type="primary" @click="$download($fullUrl(form['application_materials']),form['application_materials'])">下载<i
									class="el-icon-download el-icon--right"></i></el-button>
						</div>
					</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','authorized_person') || $check_field('add','authorized_person') || $check_field('set','authorized_person')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="授权人" prop="authorized_person">
												<el-input id="authorized_person" v-model="form['authorized_person']" placeholder="请输入授权人"
							  v-if="user_group === '管理员' || (form['dake_approval_id'] && $check_field('set','authorized_person')) || (!form['dake_approval_id'] && $check_field('add','authorized_person'))" :disabled="disabledObj['authorized_person_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','authorized_person')">{{form['authorized_person']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','starting_and_ending_dates_of_vacation') || $check_field('add','starting_and_ending_dates_of_vacation') || $check_field('set','starting_and_ending_dates_of_vacation')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="休假起止日期" prop="starting_and_ending_dates_of_vacation">
												<el-input id="starting_and_ending_dates_of_vacation" v-model="form['starting_and_ending_dates_of_vacation']" placeholder="请输入休假起止日期"
							  v-if="user_group === '管理员' || (form['dake_approval_id'] && $check_field('set','starting_and_ending_dates_of_vacation')) || (!form['dake_approval_id'] && $check_field('add','starting_and_ending_dates_of_vacation'))" :disabled="disabledObj['starting_and_ending_dates_of_vacation_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','starting_and_ending_dates_of_vacation')">{{form['starting_and_ending_dates_of_vacation']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','chief_nurse_of_major_department') || $check_field('add','chief_nurse_of_major_department') || $check_field('set','chief_nurse_of_major_department')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="大科护士长" prop="chief_nurse_of_major_department">
																		<div v-if="user_group !== '管理员'">
							{{ get_user_session_chief_nurse_of_major_department(form['chief_nurse_of_major_department']) }}
							<!--<el-input id="business_name" v-model="form['chief_nurse_of_major_department']" placeholder="请输入大科护士长"-->
							<!--v-if="user_group === '管理员' || (form['dake_approval_id'] && $check_field('set','chief_nurse_of_major_department')) || (!form['dake_approval_id'] && $check_field('add','chief_nurse_of_major_department'))" :disabled="disabledObj['chief_nurse_of_major_department_isDisabled']"></el-input>-->
							<!--<div v-else-if="$check_field('get','chief_nurse_of_major_department')">{{form['chief_nurse_of_major_department']}}</div>-->
							<el-select v-if="user_group === '管理员' || (form['dake_approval_id'] && $check_field('set','chief_nurse_of_major_department')) || (!form['dake_approval_id'] && $check_field('add','chief_nurse_of_major_department'))" id="chief_nurse_of_major_department" v-model="form['chief_nurse_of_major_department']" :disabled="disabledObj['chief_nurse_of_major_department_isDisabled']">
								<el-option v-for="o in list_user_chief_nurse_of_major_department" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
							<el-select v-else-if="$check_field('get','chief_nurse_of_major_department')" id="chief_nurse_of_major_department" v-model="form['chief_nurse_of_major_department']" :disabled="true">
								<el-option v-for="o in list_user_chief_nurse_of_major_department" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
						</div>
						<el-select v-else id="chief_nurse_of_major_department" v-model="form['chief_nurse_of_major_department']" :disabled="disabledObj['chief_nurse_of_major_department_isDisabled']">
							<el-option v-for="o in list_user_chief_nurse_of_major_department" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
																</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','date_of_approval_by_dake') || $check_field('add','date_of_approval_by_dake') || $check_field('set','date_of_approval_by_dake')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="大科批准日期" prop="date_of_approval_by_dake">
								<el-date-picker :disabled="disabledObj['date_of_approval_by_dake_isDisabled']" v-if="user_group === '管理员' || (form['dake_approval_id'] && $check_field('set','date_of_approval_by_dake')) || (!form['dake_approval_id'] && $check_field('add','date_of_approval_by_dake'))" id="date_of_approval_by_dake"
						v-model="form['date_of_approval_by_dake']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','date_of_approval_by_dake')">{{form['date_of_approval_by_dake']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','progress_of_major_department_approval') || $check_field('add','progress_of_major_department_approval') || $check_field('set','progress_of_major_department_approval')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="大科审批进度" prop="progress_of_major_department_approval">
								<el-select id="progress_of_major_department_approval" v-model="form['progress_of_major_department_approval']"
						v-if="user_group === '管理员' || (form['dake_approval_id'] && $check_field('set','progress_of_major_department_approval')) || (!form['dake_approval_id'] && $check_field('add','progress_of_major_department_approval'))">
						<el-option v-for="o in list_progress_of_major_department_approval" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','progress_of_major_department_approval')">{{form['progress_of_major_department_approval']}}</div>
							</el-form-item>
			</el-col>
					
	
	
	
	
	
	
			<el-col :xs="24" :sm="12" :lg="8" class="el_form_btn_warp">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "dake_approval_id",
				url_add: "~/api/dake_approval/add?",
				url_set: "~/api/dake_approval/set?",
				url_get_obj: "~/api/dake_approval/get_obj?",
				url_upload: "~/api/dake_approval/upload?",

				query: {
					"dake_approval_id": 0,
				},

				form: {
								"ward_head_nurse": 0, // 病区护士长
										"leave_labor_number":  '', // 请假人工号
										"please_provide_the_dummys_name":  '', // 请假人姓名
										"inpatient_area":  '', // 病区
										"reason_for_vacation":  '', // 休假原因
										"application_materials":  '', // 申请资料
										"authorized_person":  '', // 授权人
										"starting_and_ending_dates_of_vacation":  '', // 休假起止日期
										"chief_nurse_of_major_department": 0, // 大科护士长
										"date_of_approval_by_dake":  '', // 大科批准日期
										"progress_of_major_department_approval":  '', // 大科审批进度
											"dake_approval_id": 0, // ID
						
				},
				disabledObj:{
								"ward_head_nurse_isDisabled": false,
										"leave_labor_number_isDisabled": false,
										"please_provide_the_dummys_name_isDisabled": false,
										"inpatient_area_isDisabled": false,
										"reason_for_vacation_isDisabled": false,
										"application_materials_isDisabled": false,
										"authorized_person_isDisabled": false,
										"starting_and_ending_dates_of_vacation_isDisabled": false,
										"chief_nurse_of_major_department_isDisabled": false,
										"date_of_approval_by_dake_isDisabled": false,
										"progress_of_major_department_approval_isDisabled": false,
										},

	
					// 用户列表
				list_user_ward_head_nurse: [],
				
		
		
		
		
		
		
		
					// 用户列表
				list_user_chief_nurse_of_major_department: [],
						// 用户组
				group_user_chief_nurse_of_major_department: "",
				
						// 大科审批进度选项列表
				list_progress_of_major_department_approval: ['待护理部审核'],
	
	
			}
		},
		methods: {


	
	
				/**
			 * 获取护士长用户列表
			 */
			async get_list_user_ward_head_nurse() {
                // if(this.user_group !== "管理员" && this.form["ward_head_nurse"] === 0) {
                //     this.form["ward_head_nurse"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=护士长");
                if(json.result && json.result.list){
                    this.list_user_ward_head_nurse = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
					get_user_ward_head_nurse(id){
				var obj = this.list_user_ward_head_nurse.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},
			
	
			
	
			
	
			
	
						/**
			 * 上传申请资料
			 * @param {Object} param 文件参数
			 */
			upload_application_materials(param){
						this.uploadFile(param.file, "application_materials");
					},
	
	
			
	
			
	
			
	
				/**
			 * 获取护士长用户列表
			 */
			async get_list_user_chief_nurse_of_major_department() {
                // if(this.user_group !== "管理员" && this.form["chief_nurse_of_major_department"] === 0) {
                //     this.form["chief_nurse_of_major_department"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=护士长");
                if(json.result && json.result.list){
                    this.list_user_chief_nurse_of_major_department = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
					/**
			 * 获取护士长用户组
			 */
			async get_group_user_chief_nurse_of_major_department() {
							this.form["chief_nurse_of_major_department"] = this.user.user_id;
							var json = await this.$get("~/api/user_group/get_obj?name=护士长");
				if(json.result && json.result.obj){
					this.group_user_chief_nurse_of_major_department = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_chief_nurse_of_major_department(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_chief_nurse_of_major_department.source_table+"/get_obj?"
				this.$get(url, user_id, function(res) {
					if (res.result && res.result.obj) {
						var arr = []
						for (let key in res.result.obj) {
							arr.push(key)
						}
						var arrForm = []
									for (let key in _this.form) {
							arrForm.push(key)
						}
												_this.form["chief_nurse_of_major_department"] = id
									_this.disabledObj['chief_nurse_of_major_department' + '_isDisabled'] = true
						for (var i=0;i<arr.length;i++){
						  if (arr[i]!=='examine_state' && arr[i]!=='examine_reply') {
							for (var j = 0; j < arrForm.length; j++) {
							  if (arr[i] === arrForm[j]) {
								if (arr[i] !== "chief_nurse_of_major_department") {
			                      _this.form[arrForm[j]] = res.result.obj[arr[i]]
			                      _this.disabledObj[arrForm[j] + '_isDisabled'] = true
								  break;
								} else {
								  _this.disabledObj[arrForm[j] + '_isDisabled'] = true
								}
							  }
							}
						  }
						}
					}
				});
			},
					get_user_chief_nurse_of_major_department(id){
				var obj = this.list_user_chief_nurse_of_major_department.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},
			
	
			
	
		
			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
																												// 获取缓存数据附加
				form = $.db.get("form");
							$.push(this.form ,form);
											
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
																				        if (this.form["date_of_approval_by_dake"].indexOf("-")===-1){
          this.form["date_of_approval_by_dake"] = this.$toTime(parseInt(this.form["date_of_approval_by_dake"]),"yyyy-MM-dd")
        }
							$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){


																													        if(this.form["date_of_approval_by_dake"]=="0000-00-00"){
          this.form["date_of_approval_by_dake"] = null;
        }
				if(parseInt(this.form["date_of_approval_by_dake"]) > 9999){
					this.form["date_of_approval_by_dake"] = this.$toTime(parseInt(this.form["date_of_approval_by_dake"]),"yyyy-MM-dd")
				}
					

			},

			/**
			 * 提交前验证事件
			 * @param {Object} 请求参数
			 * @return {String} 验证成功返回null, 失败返回错误提示
			 */
			submit_check(param) {
				let msg = null
																																							return msg;
			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/dake_approval/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/dake_approval/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/dake_approval/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/dake_approval/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/dake_approval/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
					this.get_list_user_ward_head_nurse();
																						this.get_list_user_chief_nurse_of_major_department();
					this.get_group_user_chief_nurse_of_major_department();
									},
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}




</style>
