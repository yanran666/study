<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">

							<el-col v-if="user_group === '管理员' || $check_field('get','head_nurse') || $check_field('add','head_nurse') || $check_field('set','head_nurse')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="护士长" prop="head_nurse">
																		<div v-if="user_group !== '管理员'">
							{{ get_user_session_head_nurse(form['head_nurse']) }}
							<!--<el-input id="business_name" v-model="form['head_nurse']" placeholder="请输入护士长"-->
							<!--v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','head_nurse')) || (!form['nurse_files_id'] && $check_field('add','head_nurse'))" :disabled="disabledObj['head_nurse_isDisabled']"></el-input>-->
							<!--<div v-else-if="$check_field('get','head_nurse')">{{form['head_nurse']}}</div>-->
							<el-select v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','head_nurse')) || (!form['nurse_files_id'] && $check_field('add','head_nurse'))" id="head_nurse" v-model="form['head_nurse']" :disabled="disabledObj['head_nurse_isDisabled']">
								<el-option v-for="o in list_user_head_nurse" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
							<el-select v-else-if="$check_field('get','head_nurse')" id="head_nurse" v-model="form['head_nurse']" :disabled="true">
								<el-option v-for="o in list_user_head_nurse" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
						</div>
						<el-select v-else id="head_nurse" v-model="form['head_nurse']" :disabled="disabledObj['head_nurse_isDisabled']">
							<el-option v-for="o in list_user_head_nurse" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
																</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','nurse_no') || $check_field('add','nurse_no') || $check_field('set','nurse_no')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="护士工号" prop="nurse_no">
													<el-select v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','nurse_no')) || (!form['nurse_files_id'] && $check_field('add','nurse_no'))" id="nurse_no" v-model="form['nurse_no']" :disabled="disabledObj['nurse_no_isDisabled']">
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
							  v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','nurse_name')) || (!form['nurse_files_id'] && $check_field('add','nurse_name'))" :disabled="disabledObj['nurse_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','nurse_name')">{{form['nurse_name']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','gender') || $check_field('add','gender') || $check_field('set','gender')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="性别" prop="gender">
								<el-select id="gender" v-model="form['gender']"
						v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','gender')) || (!form['nurse_files_id'] && $check_field('add','gender'))">
						<el-option v-for="o in list_gender" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','gender')">{{form['gender']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','id_no') || $check_field('add','id_no') || $check_field('set','id_no')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="身份证号码" prop="id_no">
												<el-input id="id_no" v-model="form['id_no']" placeholder="请输入身份证号码"
							  v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','id_no')) || (!form['nurse_files_id'] && $check_field('add','id_no'))" :disabled="disabledObj['id_no_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','id_no')">{{form['id_no']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','marital_status') || $check_field('add','marital_status') || $check_field('set','marital_status')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="婚姻状态" prop="marital_status">
												<el-input id="marital_status" v-model="form['marital_status']" placeholder="请输入婚姻状态"
							  v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','marital_status')) || (!form['nurse_files_id'] && $check_field('add','marital_status'))" :disabled="disabledObj['marital_status_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','marital_status')">{{form['marital_status']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','native_place') || $check_field('add','native_place') || $check_field('set','native_place')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="籍贯" prop="native_place">
												<el-input id="native_place" v-model="form['native_place']" placeholder="请输入籍贯"
							  v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','native_place')) || (!form['nurse_files_id'] && $check_field('add','native_place'))" :disabled="disabledObj['native_place_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','native_place')">{{form['native_place']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','birthday') || $check_field('add','birthday') || $check_field('set','birthday')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="生日" prop="birthday">
												<el-input id="birthday" v-model="form['birthday']" placeholder="请输入生日"
							  v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','birthday')) || (!form['nurse_files_id'] && $check_field('add','birthday'))" :disabled="disabledObj['birthday_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','birthday')">{{form['birthday']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','nation') || $check_field('add','nation') || $check_field('set','nation')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="民族" prop="nation">
												<el-input id="nation" v-model="form['nation']" placeholder="请输入民族"
							  v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','nation')) || (!form['nurse_files_id'] && $check_field('add','nation'))" :disabled="disabledObj['nation_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','nation')">{{form['nation']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','political_landscape') || $check_field('add','political_landscape') || $check_field('set','political_landscape')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="政治面貌" prop="political_landscape">
												<el-input id="political_landscape" v-model="form['political_landscape']" placeholder="请输入政治面貌"
							  v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','political_landscape')) || (!form['nurse_files_id'] && $check_field('add','political_landscape'))" :disabled="disabledObj['political_landscape_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','political_landscape')">{{form['political_landscape']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','contact_number') || $check_field('add','contact_number') || $check_field('set','contact_number')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="联系电话" prop="contact_number">
												<el-input id="contact_number" v-model="form['contact_number']" placeholder="请输入联系电话"
							  v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','contact_number')) || (!form['nurse_files_id'] && $check_field('add','contact_number'))" :disabled="disabledObj['contact_number_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','contact_number')">{{form['contact_number']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','e_mail') || $check_field('add','e_mail') || $check_field('set','e_mail')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="电子邮箱" prop="e_mail">
												<el-input id="e_mail" v-model="form['e_mail']" placeholder="请输入电子邮箱"
							  v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','e_mail')) || (!form['nurse_files_id'] && $check_field('add','e_mail'))" :disabled="disabledObj['e_mail_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','e_mail')">{{form['e_mail']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','home_address') || $check_field('add','home_address') || $check_field('set','home_address')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="家庭住址" prop="home_address">
												<el-input id="home_address" v-model="form['home_address']" placeholder="请输入家庭住址"
							  v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','home_address')) || (!form['nurse_files_id'] && $check_field('add','home_address'))" :disabled="disabledObj['home_address_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','home_address')">{{form['home_address']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','family_contact') || $check_field('add','family_contact') || $check_field('set','family_contact')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="家庭联系人" prop="family_contact">
												<el-input id="family_contact" v-model="form['family_contact']" placeholder="请输入家庭联系人"
							  v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','family_contact')) || (!form['nurse_files_id'] && $check_field('add','family_contact'))" :disabled="disabledObj['family_contact_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','family_contact')">{{form['family_contact']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','contact_phone_number') || $check_field('add','contact_phone_number') || $check_field('set','contact_phone_number')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="联系人电话" prop="contact_phone_number">
												<el-input id="contact_phone_number" v-model="form['contact_phone_number']" placeholder="请输入联系人电话"
							  v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','contact_phone_number')) || (!form['nurse_files_id'] && $check_field('add','contact_phone_number'))" :disabled="disabledObj['contact_phone_number_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','contact_phone_number')">{{form['contact_phone_number']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','date_of_participation_in_work') || $check_field('add','date_of_participation_in_work') || $check_field('set','date_of_participation_in_work')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="参加工作日期" prop="date_of_participation_in_work">
								<el-date-picker :disabled="disabledObj['date_of_participation_in_work_isDisabled']" v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','date_of_participation_in_work')) || (!form['nurse_files_id'] && $check_field('add','date_of_participation_in_work'))" id="date_of_participation_in_work"
						v-model="form['date_of_participation_in_work']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','date_of_participation_in_work')">{{form['date_of_participation_in_work']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','date_of_work_in_the_hospital') || $check_field('add','date_of_work_in_the_hospital') || $check_field('set','date_of_work_in_the_hospital')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="来院工作日期" prop="date_of_work_in_the_hospital">
								<el-date-picker :disabled="disabledObj['date_of_work_in_the_hospital_isDisabled']" v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','date_of_work_in_the_hospital')) || (!form['nurse_files_id'] && $check_field('add','date_of_work_in_the_hospital'))" id="date_of_work_in_the_hospital"
						v-model="form['date_of_work_in_the_hospital']" type="date" placeholder="选择日期">
					</el-date-picker>
					<div v-else-if="$check_field('get','date_of_work_in_the_hospital')">{{form['date_of_work_in_the_hospital']}}</div>
							</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','nursing_age') || $check_field('add','nursing_age') || $check_field('set','nursing_age')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="护龄" prop="nursing_age">
												<el-input id="nursing_age" v-model="form['nursing_age']" placeholder="请输入护龄"
							  v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','nursing_age')) || (!form['nurse_files_id'] && $check_field('add','nursing_age'))" :disabled="disabledObj['nursing_age_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','nursing_age')">{{form['nursing_age']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','education') || $check_field('add','education') || $check_field('set','education')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="学历" prop="education">
												<el-input id="education" v-model="form['education']" placeholder="请输入学历"
							  v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','education')) || (!form['nurse_files_id'] && $check_field('add','education'))" :disabled="disabledObj['education_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','education')">{{form['education']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','title') || $check_field('add','title') || $check_field('set','title')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="职称" prop="title">
												<el-input id="title" v-model="form['title']" placeholder="请输入职称"
							  v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','title')) || (!form['nurse_files_id'] && $check_field('add','title'))" :disabled="disabledObj['title_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','title')">{{form['title']}}</div>
											</el-form-item>
			</el-col>
								<el-col v-if="user_group === '管理员' || $check_field('get','age') || $check_field('add','age') || $check_field('set','age')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="年龄" prop="age">
												<el-input id="age" v-model="form['age']" placeholder="请输入年龄"
							  v-if="user_group === '管理员' || (form['nurse_files_id'] && $check_field('set','age')) || (!form['nurse_files_id'] && $check_field('add','age'))" :disabled="disabledObj['age_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','age')">{{form['age']}}</div>
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
				field: "nurse_files_id",
				url_add: "~/api/nurse_files/add?",
				url_set: "~/api/nurse_files/set?",
				url_get_obj: "~/api/nurse_files/get_obj?",
				url_upload: "~/api/nurse_files/upload?",

				query: {
					"nurse_files_id": 0,
				},

				form: {
								"head_nurse": 0, // 护士长
										"nurse_no": 0, // 护士工号
										"nurse_name":  '', // 护士姓名
										"gender":  '', // 性别
										"id_no":  '', // 身份证号码
										"marital_status":  '', // 婚姻状态
										"native_place":  '', // 籍贯
										"birthday":  '', // 生日
										"nation":  '', // 民族
										"political_landscape":  '', // 政治面貌
										"contact_number":  '', // 联系电话
										"e_mail":  '', // 电子邮箱
										"home_address":  '', // 家庭住址
										"family_contact":  '', // 家庭联系人
										"contact_phone_number":  '', // 联系人电话
										"date_of_participation_in_work":  '', // 参加工作日期
										"date_of_work_in_the_hospital":  '', // 来院工作日期
										"nursing_age":  '', // 护龄
										"education":  '', // 学历
										"title":  '', // 职称
										"age":  '', // 年龄
											"nurse_files_id": 0, // ID
						
				},
				disabledObj:{
								"head_nurse_isDisabled": false,
										"nurse_no_isDisabled": false,
										"nurse_name_isDisabled": false,
										"gender_isDisabled": false,
										"id_no_isDisabled": false,
										"marital_status_isDisabled": false,
										"native_place_isDisabled": false,
										"birthday_isDisabled": false,
										"nation_isDisabled": false,
										"political_landscape_isDisabled": false,
										"contact_number_isDisabled": false,
										"e_mail_isDisabled": false,
										"home_address_isDisabled": false,
										"family_contact_isDisabled": false,
										"contact_phone_number_isDisabled": false,
										"date_of_participation_in_work_isDisabled": false,
										"date_of_work_in_the_hospital_isDisabled": false,
										"nursing_age_isDisabled": false,
										"education_isDisabled": false,
										"title_isDisabled": false,
										"age_isDisabled": false,
										},

	
					// 用户列表
				list_user_head_nurse: [],
						// 用户组
				group_user_head_nurse: "",
				
					// 用户列表
				list_user_nurse_no: [],
				
						// 性别选项列表
				list_gender: ['男','女'],
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
			}
		},
		methods: {


	
	
				/**
			 * 获取护士长用户列表
			 */
			async get_list_user_head_nurse() {
                // if(this.user_group !== "管理员" && this.form["head_nurse"] === 0) {
                //     this.form["head_nurse"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=护士长");
                if(json.result && json.result.list){
                    this.list_user_head_nurse = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
					/**
			 * 获取护士长用户组
			 */
			async get_group_user_head_nurse() {
							this.form["head_nurse"] = this.user.user_id;
							var json = await this.$get("~/api/user_group/get_obj?name=护士长");
				if(json.result && json.result.obj){
					this.group_user_head_nurse = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_head_nurse(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_head_nurse.source_table+"/get_obj?"
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
												_this.form["head_nurse"] = id
									_this.disabledObj['head_nurse' + '_isDisabled'] = true
						for (var i=0;i<arr.length;i++){
						  if (arr[i]!=='examine_state' && arr[i]!=='examine_reply') {
							for (var j = 0; j < arrForm.length; j++) {
							  if (arr[i] === arrForm[j]) {
								if (arr[i] !== "head_nurse") {
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
					get_user_head_nurse(id){
				var obj = this.list_user_head_nurse.getObj({"user_id":id});
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
																																        if (this.form["date_of_participation_in_work"].indexOf("-")===-1){
          this.form["date_of_participation_in_work"] = this.$toTime(parseInt(this.form["date_of_participation_in_work"]),"yyyy-MM-dd")
        }
			        if (this.form["date_of_work_in_the_hospital"].indexOf("-")===-1){
          this.form["date_of_work_in_the_hospital"] = this.$toTime(parseInt(this.form["date_of_work_in_the_hospital"]),"yyyy-MM-dd")
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


																																															        if(this.form["date_of_participation_in_work"]=="0000-00-00"){
          this.form["date_of_participation_in_work"] = null;
        }
				if(parseInt(this.form["date_of_participation_in_work"]) > 9999){
					this.form["date_of_participation_in_work"] = this.$toTime(parseInt(this.form["date_of_participation_in_work"]),"yyyy-MM-dd")
				}
				        if(this.form["date_of_work_in_the_hospital"]=="0000-00-00"){
          this.form["date_of_work_in_the_hospital"] = null;
        }
				if(parseInt(this.form["date_of_work_in_the_hospital"]) > 9999){
					this.form["date_of_work_in_the_hospital"] = this.$toTime(parseInt(this.form["date_of_work_in_the_hospital"]),"yyyy-MM-dd")
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
					bl = this.$check_action('/nurse_files/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/nurse_files/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/nurse_files/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/nurse_files/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/nurse_files/view','get');
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
					this.get_list_user_head_nurse();
					this.get_group_user_head_nurse();
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
