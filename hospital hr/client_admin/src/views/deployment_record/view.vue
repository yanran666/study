<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">

							<el-col v-if="user_group === '管理员' || $check_field('get','nurse_no') || $check_field('add','nurse_no') || $check_field('set','nurse_no')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="护士工号" prop="nurse_no">
													<el-select v-if="user_group === '管理员' || (form['deployment_record_id'] && $check_field('set','nurse_no')) || (!form['deployment_record_id'] && $check_field('add','nurse_no'))" id="nurse_no" v-model="form['nurse_no']" :disabled="disabledObj['nurse_no_isDisabled']">
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
							  v-if="user_group === '管理员' || (form['deployment_record_id'] && $check_field('set','nurse_name')) || (!form['deployment_record_id'] && $check_field('add','nurse_name'))" :disabled="disabledObj['nurse_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','nurse_name')">{{form['nurse_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','major_family') || $check_field('add','major_family') || $check_field('set','major_family')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="所属大科" prop="major_family">
												<el-input id="major_family" v-model="form['major_family']" placeholder="请输入所属大科"
							  v-if="user_group === '管理员' || (form['deployment_record_id'] && $check_field('set','major_family')) || (!form['deployment_record_id'] && $check_field('add','major_family'))" :disabled="disabledObj['major_family_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','major_family')">{{form['major_family']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','allocation_of_wards') || $check_field('add','allocation_of_wards') || $check_field('set','allocation_of_wards')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="调配病区" prop="allocation_of_wards">
												<el-input id="allocation_of_wards" v-model="form['allocation_of_wards']" placeholder="请输入调配病区"
							  v-if="user_group === '管理员' || (form['deployment_record_id'] && $check_field('set','allocation_of_wards')) || (!form['deployment_record_id'] && $check_field('add','allocation_of_wards'))" :disabled="disabledObj['allocation_of_wards_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','allocation_of_wards')">{{form['allocation_of_wards']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','start_time') || $check_field('add','start_time') || $check_field('set','start_time')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="开始时间" prop="start_time">
								<el-date-picker :disabled="disabledObj['start_time_isDisabled']" v-if="user_group === '管理员' || (form['deployment_record_id'] && $check_field('set','start_time')) || (!form['deployment_record_id'] && $check_field('add','start_time'))" id="start_time"
						v-model="form['start_time']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','start_time')">{{form['start_time']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','end_time') || $check_field('add','end_time') || $check_field('set','end_time')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="结束时间" prop="end_time">
								<el-date-picker :disabled="disabledObj['end_time_isDisabled']" v-if="user_group === '管理员' || (form['deployment_record_id'] && $check_field('set','end_time')) || (!form['deployment_record_id'] && $check_field('add','end_time'))" id="end_time"
						v-model="form['end_time']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','end_time')">{{form['end_time']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','score') || $check_field('add','score') || $check_field('set','score')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="评分" prop="score">
												<el-input id="score" v-model="form['score']" placeholder="请输入评分"
							  v-if="user_group === '管理员' || (form['deployment_record_id'] && $check_field('set','score')) || (!form['deployment_record_id'] && $check_field('add','score'))" :disabled="disabledObj['score_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','score')">{{form['score']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','evaluation_content') || $check_field('add','evaluation_content') || $check_field('set','evaluation_content')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="评价内容" prop="evaluation_content">
								<el-input type="textarea" id="evaluation_content" v-model="form['evaluation_content']" placeholder="请输入评价内容"
						v-if="user_group === '管理员' || (form['deployment_record_id'] && $check_field('set','evaluation_content')) || (!form['deployment_record_id'] && $check_field('add','evaluation_content'))" :disabled="disabledObj['evaluation_content_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','evaluation_content')">{{form['evaluation_content']}}</div>
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
				field: "deployment_record_id",
				url_add: "~/api/deployment_record/add?",
				url_set: "~/api/deployment_record/set?",
				url_get_obj: "~/api/deployment_record/get_obj?",
				url_upload: "~/api/deployment_record/upload?",

				query: {
					"deployment_record_id": 0,
				},

				form: {
								"nurse_no": 0, // 护士工号
										"nurse_name":  '', // 护士姓名
										"major_family":  '', // 所属大科
										"allocation_of_wards":  '', // 调配病区
										"start_time":  '', // 开始时间
										"end_time":  '', // 结束时间
										"score":  '', // 评分
										"evaluation_content":  '', // 评价内容
											"deployment_record_id": 0, // ID
						
				},
				disabledObj:{
								"nurse_no_isDisabled": false,
										"nurse_name_isDisabled": false,
										"major_family_isDisabled": false,
										"allocation_of_wards_isDisabled": false,
										"start_time_isDisabled": false,
										"end_time_isDisabled": false,
										"score_isDisabled": false,
										"evaluation_content_isDisabled": false,
										},

	
					// 用户列表
				list_user_nurse_no: [],
				
		
		
		
		
		
		
	
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
										        if (this.form["start_time"].indexOf("-")===-1){
          this.form["start_time"] = this.$toTime(parseInt(this.form["start_time"]),"yyyy-MM-dd")
        }
			        if (this.form["end_time"].indexOf("-")===-1){
          this.form["end_time"] = this.$toTime(parseInt(this.form["end_time"]),"yyyy-MM-dd")
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


														        if(this.form["start_time"]=="0000-00-00"){
          this.form["start_time"] = null;
        }
				if(parseInt(this.form["start_time"]) > 9999){
					this.form["start_time"] = this.$toTime(parseInt(this.form["start_time"]),"yyyy-MM-dd")
				}
				        if(this.form["end_time"]=="0000-00-00"){
          this.form["end_time"] = null;
        }
				if(parseInt(this.form["end_time"]) > 9999){
					this.form["end_time"] = this.$toTime(parseInt(this.form["end_time"]),"yyyy-MM-dd")
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
					bl = this.$check_action('/deployment_record/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/deployment_record/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/deployment_record/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/deployment_record/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/deployment_record/view','get');
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
