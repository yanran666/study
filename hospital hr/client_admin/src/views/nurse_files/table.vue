<template>
	<el-main class="bg table_wrap">
		<el-form label-position="right" :model="query" class="form p_4" label-width="120">
			<el-row>


																<el-col :xs="24" :sm="24" :lg="8" class="el_form_search_wrap">
					<el-form-item label="性别">
									<el-select v-model="query.gender">
				                            <el-option v-for="o in list_gender" :key="o" :label="o"
                            	:value="o">
                            </el-option>
										</el-select>
								</el-form-item>
				</el-col>
																																													<el-col :xs="24" :sm="24" :lg="8" class="el_form_search_wrap">
					<el-form-item label="来院工作日期">
									<el-input v-model="query.date_of_work_in_the_hospital"></el-input>
								</el-form-item>
				</el-col>
																			<el-col :xs="24" :sm="10" :lg="8" class="search_btn_wrap_1">
					<el-form-item>
						<el-button type="primary" @click="search()" class="search_btn_find">查询</el-button>
						<el-button @click="reset()" style="margin-right: 74px;" class="search_btn_reset">重置</el-button>
						<router-link v-if="user_group == '管理员' || user_group == '护士用户' || $check_action('/nurse_files/table','add') || $check_action('/nurse_files/view','add')" class="el-button el-button--default el-button--primary search_btn_add" to="./view?">添加
						</router-link>
            			<el-button v-if="user_group == '管理员' || user_group == '护士用户'|| $check_action('/nurse_files/table','del') || $check_action('/nurse_files/view','del')" class="search_btn_del" type="danger" @click="delInfo()">删除</el-button>
					</el-form-item>
				</el-col>

			</el-row>
		</el-form>
		<el-table :data="list" @selection-change="selectionChange" @sort-change="$sortChange" style="width: 100%" id="dataTable">
			<el-table-column fixed type="selection" tooltip-effect="dark" width="55">
			</el-table-column>
				<el-table-column prop="head_nurse" @sort-change="$sortChange" label="护士长"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','head_nurse')" min-width="200">
						<template slot-scope="scope">
					{{ get_user_head_nurse(scope.row['head_nurse']) }}
				</template>
					</el-table-column>
					<el-table-column prop="nurse_no" @sort-change="$sortChange" label="护士工号"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','nurse_no')" min-width="200">
						<template slot-scope="scope">
					{{ get_user_nurse_no(scope.row['nurse_no']) }}
				</template>
					</el-table-column>
					<el-table-column prop="nurse_name" @sort-change="$sortChange" label="护士姓名"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','nurse_name')" min-width="200">
					</el-table-column>
					<el-table-column prop="gender" @sort-change="$sortChange" label="性别"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','gender')" min-width="200">
					</el-table-column>
					<el-table-column prop="id_no" @sort-change="$sortChange" label="身份证号码"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','id_no')" min-width="200">
					</el-table-column>
					<el-table-column prop="marital_status" @sort-change="$sortChange" label="婚姻状态"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','marital_status')" min-width="200">
					</el-table-column>
					<el-table-column prop="native_place" @sort-change="$sortChange" label="籍贯"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','native_place')" min-width="200">
					</el-table-column>
					<el-table-column prop="birthday" @sort-change="$sortChange" label="生日"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','birthday')" min-width="200">
					</el-table-column>
					<el-table-column prop="nation" @sort-change="$sortChange" label="民族"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','nation')" min-width="200">
					</el-table-column>
					<el-table-column prop="political_landscape" @sort-change="$sortChange" label="政治面貌"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','political_landscape')" min-width="200">
					</el-table-column>
					<el-table-column prop="contact_number" @sort-change="$sortChange" label="联系电话"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','contact_number')" min-width="200">
					</el-table-column>
					<el-table-column prop="e_mail" @sort-change="$sortChange" label="电子邮箱"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','e_mail')" min-width="200">
					</el-table-column>
					<el-table-column prop="home_address" @sort-change="$sortChange" label="家庭住址"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','home_address')" min-width="200">
					</el-table-column>
					<el-table-column prop="family_contact" @sort-change="$sortChange" label="家庭联系人"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','family_contact')" min-width="200">
					</el-table-column>
					<el-table-column prop="contact_phone_number" @sort-change="$sortChange" label="联系人电话"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','contact_phone_number')" min-width="200">
					</el-table-column>
					<el-table-column prop="date_of_participation_in_work" @sort-change="$sortChange" label="参加工作日期"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','date_of_participation_in_work')" min-width="200">
		                <template slot-scope="scope">
                	{{ $toTime(scope.row["date_of_participation_in_work"],"yyyy-MM-dd") }}
                </template>
					</el-table-column>
					<el-table-column prop="date_of_work_in_the_hospital" @sort-change="$sortChange" label="来院工作日期"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','date_of_work_in_the_hospital')" min-width="200">
		                <template slot-scope="scope">
                	{{ $toTime(scope.row["date_of_work_in_the_hospital"],"yyyy-MM-dd") }}
                </template>
					</el-table-column>
					<el-table-column prop="nursing_age" @sort-change="$sortChange" label="护龄"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','nursing_age')" min-width="200">
					</el-table-column>
					<el-table-column prop="education" @sort-change="$sortChange" label="学历"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','education')" min-width="200">
					</el-table-column>
					<el-table-column prop="title" @sort-change="$sortChange" label="职称"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','title')" min-width="200">
					</el-table-column>
					<el-table-column prop="age" @sort-change="$sortChange" label="年龄"
				v-if="user_group == '管理员' || user_group == '护士用户'|| $check_field('get','age')" min-width="200">
					</el-table-column>
	



            <el-table-column sortable prop="create_time" label="创建时间" min-width="200">
                <template slot-scope="scope">
                	{{ $toTime(scope.row["create_time"],"yyyy-MM-dd hh:mm:ss") }}
                </template>
            </el-table-column>

			<el-table-column sortable prop="update_time" label="更新时间" min-width="200">
                <template slot-scope="scope">
                	{{ $toTime(scope.row["update_time"],"yyyy-MM-dd hh:mm:ss") }}
                </template>
			</el-table-column>







			<el-table-column fixed="right" label="操作" min-width="120" v-if="user_group == '管理员' || user_group == '护士用户'|| $check_action('/nurse_files/table','set') || $check_action('/nurse_files/view','set') || $check_action('/nurse_files/view','get') || $check_action('/档案审核/table','add') || $check_action('/档案审核/view','add')" >


				<template slot-scope="scope">
					<router-link class="el-button el-button--small is-plain el-button--success" style="margin: 5px !important;"
					v-if="user_group == '管理员' || user_group == '护士用户'|| $check_action('/nurse_files/table','set') || $check_action('/nurse_files/view','set') || $check_action('/nurse_files/view','get')"
						:to="'./view?' + field + '=' + scope.row[field]"
						 size="small">
						<span>详情</span>
					</router-link>
						<!--跨表按钮-->
							<el-button class="el-button el-button--small is-plain el-button--default" style="margin: 5px !important;" size="small" @click="to_table(scope.row,'/archive_review/view')" v-if="user_group == '管理员' || $check_action('/archive_review/table','add') || $check_action('/archive_review/view','add')">
						<span>档案审核</span>
					</el-button>
							</template>
			</el-table-column>

		</el-table>

		<!-- 分页器 -->
		<div class="mt text_center">
			<el-pagination @size-change="handleSizeChange" @current-change="handleCurrentChange"
				:current-page="query.page" :page-sizes="[7, 10, 30, 100]" :page-size="query.size"
				layout="total, sizes, prev, pager, next, jumper" :total="count">
			</el-pagination>
		</div>
		<!-- /分页器 -->

																					
		<div class="modal_wrap" v-if="showModal">
			<div class="modal_box">
				<!-- <div class="modal_box_close" @click="closeModal">X</div> -->
				<p class="modal_box_title">重要提醒</p>
				<p class="modal_box_text">当前有数据达到预警值！</p>
				<div class="btn_box">
					<span @click="closeModal">取消</span>
					<span @click="closeModal">确定</span>
				</div>
			</div>
		</div>


	</el-main>
</template>
<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				// 弹框
				showModal: false,
				// 获取数据地址
				url_get_list: "~/api/nurse_files/get_list?like=0",
				url_del: "~/api/nurse_files/del?",

				// 字段ID
				field: "nurse_files_id",

				// 查询
				query: {
					"size": 7,
					"page": 1,
											"gender": "",
																							"date_of_work_in_the_hospital": "",
												"login_time": "",
					"create_time": "",
					"orderby": `create_time desc`
				},

				// 数据
				list: [],
																													// 用户列表
				list_user_head_nurse: [],
									// 用户列表
				list_user_nurse_no: [],
								// 性别列表
				list_gender: ['男','女'],
																																							}
		},
		methods: {
			// 关闭弹框
			closeModal(){
				this.showModal = false;
				},

			get_list_before(param){
				var user_group = this.user.user_group;
				if(user_group != "管理员"){
						let sqlwhere = "(";
										if(user_group=="护士长"){
						sqlwhere+= "head_nurse = " + this.user.user_id + " or ";
					}
													if(user_group=="护士用户"){
						sqlwhere+= "nurse_no = " + this.user.user_id + " or ";
					}
																																																																																																									if (sqlwhere.length>1){
						sqlwhere = sqlwhere.substr(0,sqlwhere.length-4);
						sqlwhere += ")";
						param["sqlwhere"] = sqlwhere;
					}
					}
				return param;
			},

																																										
			open_tip() {
				const h = this.$createElement;

				var message = "";
				var list = this.list;

				var ifs = [
																									];
				for (var n = 0; n < ifs.length; n++) {
					var o = ifs[n];
					for (var i = 0; i < list.length; i++) {
						var lt = list[i];
						if (o.type == "数内") {
							if ((o.start || o.start === 0) && (o.end || o.end === 0)) {
								if (lt[o.factor] > o.start && lt[o.factor] < o.end) {
									o["idx"] = o["idx"] + 1;
								}
							} else if (o.start || o.start === 0) {
								if (lt[o.factor] > o.start) {
									o["idx"] = o["idx"] + 1;
								}
							} else if (o.end || o.end === 0) {
								if (lt[o.factor] < o.end) {
									o["idx"] = o["idx"] + 1;
								}
							}
						} else if (o.type == "数外") {
							if ((o.start || o.start === 0) && (o.end || o.end === 0)) {
								if (lt[o.factor] < o.start || lt[o.factor] > o.end) {
									o["idx"] = o["idx"] + 1;
								}
							} else if (o.start || o.start === 0) {
								if (lt[o.factor] < o.start) {
									o["idx"] = o["idx"] + 1;
								}
							} else if (o.end || o.end === 0) {
								if (lt[o.factor] > o.end) {
									o["idx"] = o["idx"] + 1;
								}
							}
						} else if (o.type == "日内") {
							if ((o.start) && (o.end)) {
								if (lt[o.factor] > o.start && lt[o.factor] < o.end) {
									o["idx"] = o["idx"] + 1;
								}
							} else if (o.start) {
								if (lt[o.factor] < o.start) {
									o["idx"] = o["idx"] + 1;
								}
							} else if (o.end) {
								if (lt[o.factor] > o.end) {
									o["idx"] = o["idx"] + 1;
								}
							}
						} else if (o.type == "日外") {
							if (o.start && o.end) {
								if (lt[o.factor] < o.start || lt[o.factor] > o.end) {
									o["idx"] = o["idx"] + 1;
								}
							} else if (o.start) {
								if (lt[o.factor] < o.start) {
									o["idx"] = o["idx"] + 1;
								}
							} else if (o.end) {
								if (lt[o.factor] > o.end) {
									o["idx"] = o["idx"] + 1;
								}
							}
						}
					}

					if (o["idx"]) {
						message += o.title;
						if (o["type"] == "数内") {
							if (o.start || o.start === 0) {
								message += "大于" + o.start;
							}
							if ((o.start || o.start === 0) && (o.end || o.end === 0)) {
								message += "并且";
							}
							if (o.end || o.end === 0) {
								message += "小于" + o.end;
							}
						} else if (o["type"] == "数外") {
							if (o.start || o.start === 0) {
								message += "小于" + o.start;
							}
							if ((o.start || o.start === 0) || (o.end || o.end === 0)) {
								message += "或者";
							}
							if (o.end || o.end === 0) {
								message += "大于" + o.end;
							}
						} else if (o["type"] == "日内") {
							if (o.start) {
								message += "在" + o.start + "之后";
							}
							if (o.start && o.end) {
								message += "并且";
							}
							if (o.end) {
								message += "在" + o.end + "之前";
							}
						} else if (o["type"] == "日外") {
							if (o.start) {
								message += "在" + o.start + "之前";
							}
							if (o.start || o.end) {
								message += "或者";
							}
							if (o.end) {
								message += "在" + o.end + "之后";
							}
						}
						message += "的有" + o["idx"] + "条";
					}
				}

				if (message) {
					message += "，需要处理、请尽快处理。";
					this.showModal = true;
					// this.$notify({
					// 	title: '提醒',
					// 	dangerouslyUseHTMLString: true,
					// 	message: h('i', {
					// 		style: 'color: teal'
					// 	}, message)
					// });
				}
			},




				/**
			 * 获取护士长用户列表
			 */
			async get_list_user_head_nurse() {
				var json = await this.$get("~/api/user/get_list?user_group=护士长");
				if(json.result && json.result.list){
					this.list_user_head_nurse = json.result.list;
				}
				else if(json.error){
					console.error(json.error);
				}
			},

			get_user_head_nurse(id){
				var obj = this.list_user_head_nurse.getObj({"user_id":id});
				var ret = "";
				if(obj){
					ret = obj.nickname+"-"+obj.username;
					// if(obj.nickname){
					// 	ret = obj.nickname;
					// }
					// else{
					// 	ret = obj.username;
					// }
				}
				return ret;
			},
						/**
			 * 获取护士用户用户列表
			 */
			async get_list_user_nurse_no() {
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
					ret = obj.nickname+"-"+obj.username;
					// if(obj.nickname){
					// 	ret = obj.nickname;
					// }
					// else{
					// 	ret = obj.username;
					// }
				}
				return ret;
			},
																																											deleteRow(index, rows) {
				rows.splice(index, 1);
			}

		},
		created() {
							this.get_list_user_head_nurse();
								this.get_list_user_nurse_no();
																																										setTimeout(() => {
				this.open_tip();
			}, 1000)
		}
	}
</script>

<style type="text/css">
	.bg {
		background: white;
	}

	.form.p_4 {
		padding: 1rem;
	}

	.form .el-input {
		width: initial;
	}

	.mt {
		margin-top: 1rem;
	}

	.text_center {
		text-align: center;
	}

	.float-right {
		float: right;
	}


	.modal_wrap{
		width: 100vw;
		height: 100vh;
		position: fixed;
		top: 0;
		left: 0;
		background: rgba(0,0,0,0.5);
		z-index: 9999999999;
	}
	.modal_wrap .modal_box{
		width: 400px;
		height: 200px;
		background: url("../../assets/modal_bg.jpg") no-repeat center;
		background-size: cover;
		position: absolute;
		top: 50%;
		left: 50%;
		margin-left: -200px;
		margin-top: -100px;
		border-radius: 10px;
		}
	.modal_wrap .modal_box .modal_box_close{
		font-size: 20px;
		position: absolute;
		top: 10px;
		right: 10px;
		cursor: pointer;
		}
	.modal_wrap .modal_box .modal_box_title{
	  text-align: center;
    font-size: 18px;
    margin: 16px auto;
    color: #fff;
    border-bottom: 1px solid rgba(117, 116, 116,0.5);
    padding-bottom: 16px;
    width: 356px;
		}
	.modal_wrap .modal_box .modal_box_text{
			text-align: center;
		font-size: 15px;
		color: #fff;
		margin-top: 25px;
		}
	.modal_wrap .modal_box .btn_box{
		display: flex;
		flex-direction: row;
		justify-content: center;
		margin-top: 42px;
		}
			.modal_wrap .modal_box .btn_box span{
				display: inline-block;
				width: 80px;
				height: 30px;
				line-height: 30px;
				text-align: center;
				border: 1px solid #ccc;
				font-size: 14px;
				cursor: pointer;
				color: #fff;
			}
	.modal_wrap .modal_box .btn_box span:nth-child(2){
		background: #409EFF;
		color: #fff;
		border-color: #409EFF;
		margin-left: 15px;
	}
</style>
