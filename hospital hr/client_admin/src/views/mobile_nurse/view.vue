<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">

							<el-col v-if="user_group === '管理员' || $check_field('get','nurse_no') || $check_field('add','nurse_no') || $check_field('set','nurse_no')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="护士工号" prop="nurse_no">
													<el-select v-if="user_group === '管理员' || (form['mobile_nurse_id'] && $check_field('set','nurse_no')) || (!form['mobile_nurse_id'] && $check_field('add','nurse_no'))" id="nurse_no" v-model="form['nurse_no']" :disabled="disabledObj['nurse_no_isDisabled']">
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
							  v-if="user_group === '管理员' || (form['mobile_nurse_id'] && $check_field('set','nurse_name')) || (!form['mobile_nurse_id'] && $check_field('add','nurse_name'))" :disabled="disabledObj['nurse_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','nurse_name')">{{form['nurse_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','major_family') || $check_field('add','major_family') || $check_field('set','major_family')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="所属大科" prop="major_family">
												<el-input id="major_family" v-model="form['major_family']" placeholder="请输入所属大科"
							  v-if="user_group === '管理员' || (form['mobile_nurse_id'] && $check_field('set','major_family')) || (!form['mobile_nurse_id'] && $check_field('add','major_family'))" :disabled="disabledObj['major_family_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','major_family')">{{form['major_family']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','state') || $check_field('add','state') || $check_field('set','state')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="状态" prop="state">
								<el-select id="state" v-model="form['state']"
						v-if="user_group === '管理员' || (form['mobile_nurse_id'] && $check_field('set','state')) || (!form['mobile_nurse_id'] && $check_field('add','state'))">
						<el-option v-for="o in list_state" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','state')">{{form['state']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','allocation_of_wards') || $check_field('add','allocation_of_wards') || $check_field('set','allocation_of_wards')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="调配病区" prop="allocation_of_wards">
												<el-input id="allocation_of_wards" v-model="form['allocation_of_wards']" placeholder="请输入调配病区"
							  v-if="user_group === '管理员' || (form['mobile_nurse_id'] && $check_field('set','allocation_of_wards')) || (!form['mobile_nurse_id'] && $check_field('add','allocation_of_wards'))" :disabled="disabledObj['allocation_of_wards_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','allocation_of_wards')">{{form['allocation_of_wards']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','contact_number') || $check_field('add','contact_number') || $check_field('set','contact_number')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="联系电话" prop="contact_number">
												<el-input id="contact_number" v-model="form['contact_number']" placeholder="请输入联系电话"
							  v-if="user_group === '管理员' || (form['mobile_nurse_id'] && $check_field('set','contact_number')) || (!form['mobile_nurse_id'] && $check_field('add','contact_number'))" :disabled="disabledObj['contact_number_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','contact_number')">{{form['contact_number']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','warehousing_time') || $check_field('add','warehousing_time') || $check_field('set','warehousing_time')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="入库时间" prop="warehousing_time">
								<el-date-picker :disabled="disabledObj['warehousing_time_isDisabled']" v-if="user_group === '管理员' || (form['mobile_nurse_id'] && $check_field('set','warehousing_time')) || (!form['mobile_nurse_id'] && $check_field('add','warehousing_time'))" id="warehousing_time"
						v-model="form['warehousing_time']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','warehousing_time')">{{form['warehousing_time']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','deployment_status') || $check_field('add','deployment_status') || $check_field('set','deployment_status')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="调配状态" prop="deployment_status">
												<el-input id="deployment_status" v-model="form['deployment_status']" placeholder="请输入调配状态"
							  v-if="user_group === '管理员' || (form['mobile_nurse_id'] && $check_field('set','deployment_status')) || (!form['mobile_nurse_id'] && $check_field('add','deployment_status'))" :disabled="disabledObj['deployment_status_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','deployment_status')">{{form['deployment_status']}}</div>
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
				field: "mobile_nurse_id",
				url_add: "~/api/mobile_nurse/add?",
				url_set: "~/api/mobile_nurse/set?",
				url_get_obj: "~/api/mobile_nurse/get_obj?",
				url_upload: "~/api/mobile_nurse/upload?",

				query: {
					"mobile_nurse_id": 0,
				},

				form: {
								"nurse_no": 0, // 护士工号
										"nurse_name":  '', // 护士姓名
										"major_family":  '', // 所属大科
										"state":  '', // 状态
										"allocation_of_wards":  '', // 调配病区
										"contact_number":  '', // 联系电话
										"warehousing_time":  '', // 入库时间
										"deployment_status":  '', // 调配状态
											"mobile_nurse_id": 0, // ID
						
				},
				disabledObj:{
								"nurse_no_isDisabled": false,
										"nurse_name_isDisabled": false,
										"major_family_isDisabled": false,
										"state_isDisabled": false,
										"allocation_of_wards_isDisabled": false,
										"contact_number_isDisabled": false,
										"warehousing_time_isDisabled": false,
										"deployment_status_isDisabled": false,
										},

	
					// 用户列表
				list_user_nurse_no: [],
				
		
						// 状态选项列表
				list_state: ['已调配','未调配'],
	
		
		
		
		
	
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
														        if (this.form["warehousing_time"].indexOf("-")===-1){
          this.form["warehousing_time"] = this.$toTime(parseInt(this.form["warehousing_time"]),"yyyy-MM-dd")
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


																				        if(this.form["warehousing_time"]=="0000-00-00"){
          this.form["warehousing_time"] = null;
        }
				if(parseInt(this.form["warehousing_time"]) > 9999){
					this.form["warehousing_time"] = this.$toTime(parseInt(this.form["warehousing_time"]),"yyyy-MM-dd")
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
					bl = this.$check_action('/mobile_nurse/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/mobile_nurse/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/mobile_nurse/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/mobile_nurse/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/mobile_nurse/view','get');
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
