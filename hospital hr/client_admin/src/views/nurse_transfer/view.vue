<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">

							<el-col v-if="user_group === '管理员' || $check_field('get','nurse_no') || $check_field('add','nurse_no') || $check_field('set','nurse_no')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="护士工号" prop="nurse_no">
																		<div v-if="user_group !== '管理员'">
							{{ get_user_session_nurse_no(form['nurse_no']) }}
							<!--<el-input id="business_name" v-model="form['nurse_no']" placeholder="请输入护士工号"-->
							<!--v-if="user_group === '管理员' || (form['nurse_transfer_id'] && $check_field('set','nurse_no')) || (!form['nurse_transfer_id'] && $check_field('add','nurse_no'))" :disabled="disabledObj['nurse_no_isDisabled']"></el-input>-->
							<!--<div v-else-if="$check_field('get','nurse_no')">{{form['nurse_no']}}</div>-->
							<el-select v-if="user_group === '管理员' || (form['nurse_transfer_id'] && $check_field('set','nurse_no')) || (!form['nurse_transfer_id'] && $check_field('add','nurse_no'))" id="nurse_no" v-model="form['nurse_no']" :disabled="disabledObj['nurse_no_isDisabled']">
								<el-option v-for="o in list_user_nurse_no" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
							<el-select v-else-if="$check_field('get','nurse_no')" id="nurse_no" v-model="form['nurse_no']" :disabled="true">
								<el-option v-for="o in list_user_nurse_no" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
						</div>
						<el-select v-else id="nurse_no" v-model="form['nurse_no']" :disabled="disabledObj['nurse_no_isDisabled']">
							<el-option v-for="o in list_user_nurse_no" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
																</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','nurse_name') || $check_field('add','nurse_name') || $check_field('set','nurse_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="护士姓名" prop="nurse_name">
												<el-input id="nurse_name" v-model="form['nurse_name']" placeholder="请输入护士姓名"
							  v-if="user_group === '管理员' || (form['nurse_transfer_id'] && $check_field('set','nurse_name')) || (!form['nurse_transfer_id'] && $check_field('add','nurse_name'))" :disabled="disabledObj['nurse_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','nurse_name')">{{form['nurse_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','current_department') || $check_field('add','current_department') || $check_field('set','current_department')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="当前科室" prop="current_department">
												<el-input id="current_department" v-model="form['current_department']" placeholder="请输入当前科室"
							  v-if="user_group === '管理员' || (form['nurse_transfer_id'] && $check_field('set','current_department')) || (!form['nurse_transfer_id'] && $check_field('add','current_department'))" :disabled="disabledObj['current_department_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','current_department')">{{form['current_department']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','transfer_department') || $check_field('add','transfer_department') || $check_field('set','transfer_department')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="转科科室" prop="transfer_department">
												<el-input id="transfer_department" v-model="form['transfer_department']" placeholder="请输入转科科室"
							  v-if="user_group === '管理员' || (form['nurse_transfer_id'] && $check_field('set','transfer_department')) || (!form['nurse_transfer_id'] && $check_field('add','transfer_department'))" :disabled="disabledObj['transfer_department_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','transfer_department')">{{form['transfer_department']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','transfer_time') || $check_field('add','transfer_time') || $check_field('set','transfer_time')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="转科时间" prop="transfer_time">
								<el-date-picker :disabled="disabledObj['transfer_time_isDisabled']" v-if="user_group === '管理员' || (form['nurse_transfer_id'] && $check_field('set','transfer_time')) || (!form['nurse_transfer_id'] && $check_field('add','transfer_time'))" id="transfer_time"
						v-model="form['transfer_time']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','transfer_time')">{{form['transfer_time']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','reason_for_transfer') || $check_field('add','reason_for_transfer') || $check_field('set','reason_for_transfer')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="转科原因" prop="reason_for_transfer">
								<el-input type="textarea" id="reason_for_transfer" v-model="form['reason_for_transfer']" placeholder="请输入转科原因"
						v-if="user_group === '管理员' || (form['nurse_transfer_id'] && $check_field('set','reason_for_transfer')) || (!form['nurse_transfer_id'] && $check_field('add','reason_for_transfer'))" :disabled="disabledObj['reason_for_transfer_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','reason_for_transfer')">{{form['reason_for_transfer']}}</div>
							</el-form-item>
			</el-col>
							<el-col :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="审核状态" prop="examine_state">
					<el-select id="examine_state" v-model="form['examine_state']"
						v-if="user_group === '管理员' || (form['examine_state'] && $check_examine()) || (!form['examine_state'] && $check_examine())">
						<el-option key="未审核" label="未审核" value="未审核"></el-option>
						<el-option key="已通过" label="已通过" value="已通过"></el-option>
						<el-option key="未通过" label="未通过" value="未通过"></el-option>
					</el-select>
					<div v-else>{{form["examine_state"]}}</div>
				</el-form-item>
			</el-col>
					<el-col :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="审核回复" prop="examine_reply">
					<el-input id="examine_reply" v-model="form['examine_reply']" placeholder="请输入审核回复"
						v-if="user_group === '管理员' || (form['examine_reply'] && $check_examine()) || (!form['examine_reply'] && $check_examine())"></el-input>
					<div v-else>{{form["examine_reply"]}}</div>
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
				field: "nurse_transfer_id",
				url_add: "~/api/nurse_transfer/add?",
				url_set: "~/api/nurse_transfer/set?",
				url_get_obj: "~/api/nurse_transfer/get_obj?",
				url_upload: "~/api/nurse_transfer/upload?",

				query: {
					"nurse_transfer_id": 0,
				},

				form: {
								"nurse_no": 0, // 护士工号
										"nurse_name":  '', // 护士姓名
										"current_department":  '', // 当前科室
										"transfer_department":  '', // 转科科室
										"transfer_time":  '', // 转科时间
										"reason_for_transfer":  '', // 转科原因
									"examine_state": "未审核",
							"examine_reply": "",
							"nurse_transfer_id": 0, // ID
						
				},
				disabledObj:{
								"nurse_no_isDisabled": false,
										"nurse_name_isDisabled": false,
										"current_department_isDisabled": false,
										"transfer_department_isDisabled": false,
										"transfer_time_isDisabled": false,
										"reason_for_transfer_isDisabled": false,
										},

	
					// 用户列表
				list_user_nurse_no: [],
						// 用户组
				group_user_nurse_no: "",
				
		
		
		
		
	
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
					/**
			 * 获取护士用户用户组
			 */
			async get_group_user_nurse_no() {
							this.form["nurse_no"] = this.user.user_id;
							var json = await this.$get("~/api/user_group/get_obj?name=护士用户");
				if(json.result && json.result.obj){
					this.group_user_nurse_no = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_nurse_no(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_nurse_no.source_table+"/get_obj?"
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
												_this.form["nurse_no"] = id
									_this.disabledObj['nurse_no' + '_isDisabled'] = true
						for (var i=0;i<arr.length;i++){
						  if (arr[i]!=='examine_state' && arr[i]!=='examine_reply') {
							for (var j = 0; j < arrForm.length; j++) {
							  if (arr[i] === arrForm[j]) {
								if (arr[i] !== "nurse_no") {
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
										        if (this.form["transfer_time"].indexOf("-")===-1){
          this.form["transfer_time"] = this.$toTime(parseInt(this.form["transfer_time"]),"yyyy-MM-dd")
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


														        if(this.form["transfer_time"]=="0000-00-00"){
          this.form["transfer_time"] = null;
        }
				if(parseInt(this.form["transfer_time"]) > 9999){
					this.form["transfer_time"] = this.$toTime(parseInt(this.form["transfer_time"]),"yyyy-MM-dd")
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
					bl = this.$check_action('/nurse_transfer/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/nurse_transfer/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/nurse_transfer/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/nurse_transfer/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/nurse_transfer/view','get');
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
					this.get_group_user_nurse_no();
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
