<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">

							<el-col v-if="user_group === '管理员' || $check_field('get','nurse_no') || $check_field('add','nurse_no') || $check_field('set','nurse_no')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="护士工号" prop="nurse_no">
													<el-select v-if="user_group === '管理员' || (form['specialist_admission_id'] && $check_field('set','nurse_no')) || (!form['specialist_admission_id'] && $check_field('add','nurse_no'))" id="nurse_no" v-model="form['nurse_no']" :disabled="disabledObj['nurse_no_isDisabled']">
							<el-option v-for="o in list_user_nurse_no" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
						<el-select v-else-if="$check_field('get','nurse_no')" id="nurse_no" v-model="form['nurse_no']" :disabled="true">
							<el-option v-for="o in list_user_nurse_no" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','nurse_name') || $check_field('add','nurse_name') || $check_field('set','nurse_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="护士姓名" prop="nurse_name">
												<el-input id="nurse_name" v-model="form['nurse_name']" placeholder="请输入护士姓名"
							  v-if="user_group === '管理员' || (form['specialist_admission_id'] && $check_field('set','nurse_name')) || (!form['specialist_admission_id'] && $check_field('add','nurse_name'))" :disabled="disabledObj['nurse_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','nurse_name')">{{form['nurse_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','major_family') || $check_field('add','major_family') || $check_field('set','major_family')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="所属大科" prop="major_family">
												<el-input id="major_family" v-model="form['major_family']" placeholder="请输入所属大科"
							  v-if="user_group === '管理员' || (form['specialist_admission_id'] && $check_field('set','major_family')) || (!form['specialist_admission_id'] && $check_field('add','major_family'))" :disabled="disabledObj['major_family_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','major_family')">{{form['major_family']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','approval_status') || $check_field('add','approval_status') || $check_field('set','approval_status')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="审批状态" prop="approval_status">
								<el-select id="approval_status" v-model="form['approval_status']"
						v-if="user_group === '管理员' || (form['specialist_admission_id'] && $check_field('set','approval_status')) || (!form['specialist_admission_id'] && $check_field('add','approval_status'))">
						<el-option v-for="o in list_approval_status" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','approval_status')">{{form['approval_status']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','application_date') || $check_field('add','application_date') || $check_field('set','application_date')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="申请日期" prop="application_date">
								<el-date-picker :disabled="disabledObj['application_date_isDisabled']" v-if="user_group === '管理员' || (form['specialist_admission_id'] && $check_field('set','application_date')) || (!form['specialist_admission_id'] && $check_field('add','application_date'))" id="application_date"
						v-model="form['application_date']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','application_date')">{{form['application_date']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','approval_date') || $check_field('add','approval_date') || $check_field('set','approval_date')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="批准日期" prop="approval_date">
								<el-date-picker :disabled="disabledObj['approval_date_isDisabled']" v-if="user_group === '管理员' || (form['specialist_admission_id'] && $check_field('set','approval_date')) || (!form['specialist_admission_id'] && $check_field('add','approval_date'))" id="approval_date"
						v-model="form['approval_date']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','approval_date')">{{form['approval_date']}}</div>
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
						<el-upload v-if="user_group === '管理员' || (form['specialist_admission_id'] && $check_field('set','application_materials')) || (!form['specialist_admission_id'] && $check_field('add','application_materials'))" class="upload-demo" drag
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
								<el-col v-if="user_group === '管理员' || $check_field('get','passed_department') || $check_field('add','passed_department') || $check_field('set','passed_department')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="已通过科室" prop="passed_department">
												<el-input id="passed_department" v-model="form['passed_department']" placeholder="请输入已通过科室"
							  v-if="user_group === '管理员' || (form['specialist_admission_id'] && $check_field('set','passed_department')) || (!form['specialist_admission_id'] && $check_field('add','passed_department'))" :disabled="disabledObj['passed_department_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','passed_department')">{{form['passed_department']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','approval_deadline') || $check_field('add','approval_deadline') || $check_field('set','approval_deadline')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="审批截止日期" prop="approval_deadline">
								<el-date-picker :disabled="disabledObj['approval_deadline_isDisabled']" v-if="user_group === '管理员' || (form['specialist_admission_id'] && $check_field('set','approval_deadline')) || (!form['specialist_admission_id'] && $check_field('add','approval_deadline'))" id="approval_deadline"
						v-model="form['approval_deadline']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','approval_deadline')">{{form['approval_deadline']}}</div>
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
				field: "specialist_admission_id",
				url_add: "~/api/specialist_admission/add?",
				url_set: "~/api/specialist_admission/set?",
				url_get_obj: "~/api/specialist_admission/get_obj?",
				url_upload: "~/api/specialist_admission/upload?",

				query: {
					"specialist_admission_id": 0,
				},

				form: {
								"nurse_no": 0, // 护士工号
										"nurse_name":  '', // 护士姓名
										"major_family":  '', // 所属大科
										"approval_status":  '', // 审批状态
										"application_date":  '', // 申请日期
										"approval_date":  '', // 批准日期
										"application_materials":  '', // 申请资料
										"passed_department":  '', // 已通过科室
										"approval_deadline":  '', // 审批截止日期
											"specialist_admission_id": 0, // ID
						
				},
				disabledObj:{
								"nurse_no_isDisabled": false,
										"nurse_name_isDisabled": false,
										"major_family_isDisabled": false,
										"approval_status_isDisabled": false,
										"application_date_isDisabled": false,
										"approval_date_isDisabled": false,
										"application_materials_isDisabled": false,
										"passed_department_isDisabled": false,
										"approval_deadline_isDisabled": false,
										},

	
					// 用户列表
				list_user_nurse_no: [],
				
		
						// 审批状态选项列表
				list_approval_status: ['待大科审核','待护理部审核','通过'],
	
		
		
		
		
		
	
			}
		},
		methods: {


	
	
				/**
			 * 获取护士用户用户列表
			 */
			async get_list_user_nurse_no() {
                // if(this.user_group !== "管理员" && this.form["nurse_no"] === 0) {
                //     this.form["nurse_no"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=护士用户");
                if(json.result && json.result.list){
                    this.list_user_nurse_no = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
					get_user_nurse_no(id){
				var obj = this.list_user_nurse_no.getObj({"user_id":id});
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
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
																														
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
										        if (this.form["application_date"].indexOf("-")===-1){
          this.form["application_date"] = this.$toTime(parseInt(this.form["application_date"]),"yyyy-MM-dd")
        }
			        if (this.form["approval_date"].indexOf("-")===-1){
          this.form["approval_date"] = this.$toTime(parseInt(this.form["approval_date"]),"yyyy-MM-dd")
        }
							        if (this.form["approval_deadline"].indexOf("-")===-1){
          this.form["approval_deadline"] = this.$toTime(parseInt(this.form["approval_deadline"]),"yyyy-MM-dd")
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


														        if(this.form["application_date"]=="0000-00-00"){
          this.form["application_date"] = null;
        }
				if(parseInt(this.form["application_date"]) > 9999){
					this.form["application_date"] = this.$toTime(parseInt(this.form["application_date"]),"yyyy-MM-dd")
				}
				        if(this.form["approval_date"]=="0000-00-00"){
          this.form["approval_date"] = null;
        }
				if(parseInt(this.form["approval_date"]) > 9999){
					this.form["approval_date"] = this.$toTime(parseInt(this.form["approval_date"]),"yyyy-MM-dd")
				}
										        if(this.form["approval_deadline"]=="0000-00-00"){
          this.form["approval_deadline"] = null;
        }
				if(parseInt(this.form["approval_deadline"]) > 9999){
					this.form["approval_deadline"] = this.$toTime(parseInt(this.form["approval_deadline"]),"yyyy-MM-dd")
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
					bl = this.$check_action('/specialist_admission/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/specialist_admission/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/specialist_admission/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/specialist_admission/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/specialist_admission/view','get');
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
					this.get_list_user_nurse_no();
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
