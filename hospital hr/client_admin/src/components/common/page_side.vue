<template>
	<el-menu class="side el-menu-vertical-demo" default-active="/" @open="handleOpen" @close="handleClose"
		background-color="#545c64" text-color="#fff" active-text-color="#38f" :collapse="isCollapse" :router="true">
		<el-menu-item index="/">
			<i class="el-icon-s-home"></i>
			<span slot="title">后台首页</span>
		</el-menu-item>




	



		<el-submenu index="user"
					v-show="user_group == '管理员' || user_group == '护士用户'|| $check_group(['/user/table','/user_group/table'
						,'/nurse_users/table'
							,'/head_nurse/table'
							,'/nursing_department/table'
																				])">
			<template slot="title"><i class="el-icon-s-custom"></i><span>系统用户</span></template>
			<el-menu-item index="/user/table" v-show="user_group == '管理员'"><span>管理员</span></el-menu-item>
						<el-menu-item index="/nurse_users/table" v-show="user_group == '管理员' || user_group == '护士用户'|| $check_action('/nurse_users/table')"><span>护士用户</span></el-menu-item>
							<el-menu-item index="/head_nurse/table" v-show="user_group == '管理员' || $check_action('/head_nurse/table')"><span>护士长</span></el-menu-item>
							<el-menu-item index="/nursing_department/table" v-show="user_group == '管理员' || user_group == '护士用户'|| $check_action('/nursing_department/table')"><span>护理部</span></el-menu-item>
																<!-- <el-menu-item index="/user_group/table"><span>用户组</span></el-menu-item> -->
		</el-submenu>

		<el-submenu index="auth"
					v-show="user_group == '管理员'|| user_group == '护士用户'">
			<template slot="title"><i class="el-icon-s-custom"></i><span>权限管理</span></template>
			<el-menu-item index="/auth/table" v-show="user_group == '管理员'"><span>权限列表</span></el-menu-item>
		</el-submenu>

		<el-submenu index="more" v-show="auth.length">
			<template slot="title"><i class="el-icon-menu"></i><span>模块管理</span></template>
			<el-menu-item v-for="(o, idx) in auth" v-show="$check_action(o.path)" :index="o.path">
				<span>{{o.page_title}}</span>
			</el-menu-item>
		</el-submenu>
	</el-menu>
</template>

<script>
	export default {
		props: {
			isCollapse: {
				trye: Boolean,
				default: false
			}
		},
		data: function() {
			return {
				user_group: this.$store.state.user.user_group
			}
		},
		methods: {
			handleOpen(key, keyPath) {
				// console.log(key, keyPath);
			},

			handleClose(key, keyPath) {
				// console.log(key, keyPath);
			},

		},
		computed: {
			auth() {
				var tables = this.$store.state.web.auth;
				var lt = [];
				for (var i = 0; i < tables.length; i++) {
					var o = tables[i];
					if (o.path.indexOf("/table") !== -1) {
						let list = ["exam","article", "article_type", ];
							list.push("nurse_users");
								list.push("head_nurse");
								list.push("nursing_department");
																			if (list.indexOf(o.table_name) === -1) {
							lt.push(o);
						}
					}
				}
				return lt;
			}
		}
	}
</script>


<style scoped="scoped">
	.el-menu-vertical-demo:not(.el-menu--collapse) {
		width: 16rem;
	}

	.side {
		float: left;
		background: #545c64;
		color: #fff;
		overflow-y: scroll;
		height: 100vh;
	}
  .el-side{
    background: black !important;
    color: ghostwhite !important;
  }
	.side::-webkit-scrollbar{
		display: none;
	}
</style>
