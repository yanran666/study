<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">

							<el-col v-if="user_group === '管理员' || $check_field('get','department_name') || $check_field('add','department_name') || $check_field('set','department_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="科室名称" prop="department_name">
												<el-input id="department_name" v-model="form['department_name']" placeholder="请输入科室名称"
							  v-if="user_group === '管理员' || (form['department_ward_id'] && $check_field('set','department_name')) || (!form['department_ward_id'] && $check_field('add','department_name'))" :disabled="disabledObj['department_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','department_name')">{{form['department_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','department_type') || $check_field('add','department_type') || $check_field('set','department_type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="科室类型" prop="department_type">
								<el-select id="department_type" v-model="form['department_type']"
						v-if="user_group === '管理员' || (form['department_ward_id'] && $check_field('set','department_type')) || (!form['department_ward_id'] && $check_field('add','department_type'))">
						<el-option v-for="o in list_department_type" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','department_type')">{{form['department_type']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','contact_number') || $check_field('add','contact_number') || $check_field('set','contact_number')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="联系电话" prop="contact_number">
								<el-input id="contact_number" v-model="form['contact_number']" placeholder="请输入联系电话" type="tel"
						v-if="user_group === '管理员' || (form['department_ward_id'] && $check_field('set','contact_number')) || (!form['department_ward_id'] && $check_field('add','contact_number'))">
					</el-input>
					<div v-else-if="$check_field('get','contact_number')">{{form['contact_number']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','number_of_nurses') || $check_field('add','number_of_nurses') || $check_field('set','number_of_nurses')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="护士人数" prop="number_of_nurses">
								<el-input-number id="number_of_nurses" v-model.number="form['number_of_nurses']"
						v-if="user_group === '管理员' || (form['department_ward_id'] && $check_field('set','number_of_nurses')) || (!form['department_ward_id'] && $check_field('add','number_of_nurses'))" :disabled="disabledObj['number_of_nurses_isDisabled']"></el-input-number>
					<div v-else-if="$check_field('get','number_of_nurses')">{{form['number_of_nurses']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','operating_duty') || $check_field('add','operating_duty') || $check_field('set','operating_duty')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="工作职责" prop="operating_duty">
								<el-input type="textarea" id="operating_duty" v-model="form['operating_duty']" placeholder="请输入工作职责"
						v-if="user_group === '管理员' || (form['department_ward_id'] && $check_field('set','operating_duty')) || (!form['department_ward_id'] && $check_field('add','operating_duty'))" :disabled="disabledObj['operating_duty_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','operating_duty')">{{form['operating_duty']}}</div>
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
				field: "department_ward_id",
				url_add: "~/api/department_ward/add?",
				url_set: "~/api/department_ward/set?",
				url_get_obj: "~/api/department_ward/get_obj?",
				url_upload: "~/api/department_ward/upload?",

				query: {
					"department_ward_id": 0,
				},

				form: {
								"department_name":  '', // 科室名称
										"department_type":  '', // 科室类型
										"contact_number":  '', // 联系电话
										"number_of_nurses":  0, // 护士人数
										"operating_duty":  '', // 工作职责
											"department_ward_id": 0, // ID
						
				},
				disabledObj:{
								"department_name_isDisabled": false,
										"department_type_isDisabled": false,
										"contact_number_isDisabled": false,
					          			"number_of_nurses_isDisabled": false,
										"operating_duty_isDisabled": false,
										},

	
						// 科室类型选项列表
				list_department_type: ['大科','病区'],
	
		
		
		
	
			}
		},
		methods: {


	
	
			
	
			
	
			
	
			
	
		
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
														$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){


															

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
					bl = this.$check_action('/department_ward/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/department_ward/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/department_ward/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/department_ward/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/department_ward/view','get');
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
