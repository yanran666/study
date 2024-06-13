import Vue from 'vue';
import VueRouter from 'vue-router';
import index from '../views/index.vue';
import login from '../views/login.vue';
import forgot from '../views/forgot.vue';
Vue.use(VueRouter)

const routes = [
	// 主页
	{
		path: '/',
		name: 'index',
		component: index,
		meta: {
			index: 0,
			title: '首页'
		}
	},

	// 登录
	{
		path: '/login',
		name: 'login',
		component: login,
		meta: {
			index: 0,
			title: '登录'
		}
	},


	// 忘记密码
	{
		path: '/forgot',
		name: "forgot",
		component: forgot,
		meta: {
			index: 0,
			title: '忘记密码'
		}
	},

	// 修改密码
	{
		path: '/user/password',
		name: "password",
		component: () => import("../views/user/password.vue"),
		meta: {
			index: 0,
			title: '修改密码'
		}
	},

	// 视频播放页
	{
		path: "/media/video",
		name: "video",
		component: () => import('../views/media/video.vue'),
		meta: {
			index: 0,
			title: "视频"
		}
	},

	// 音频播放页
	{
		path: "/media/audio",
		name: "audio",
		component: () => import('../views/media/audio.vue'),
		meta: {
			index: 0,
			title: "音频"
		}
	},

	// 权限路由
	{
		path: '/auth/table',
		name: 'auth_table',
		component: () => import('../views/auth/table.vue'),
		meta: {
			index: 0,
			title: '权限列表'
		}
	},
	{
		path: '/auth/view',
		name: 'auth_view',
		component: () => import('../views/auth/view.vue'),
		meta: {
			index: 0,
			title: '权限详情'
		}
	},







	// 护士用户路由
	{
		path: '/nurse_users/table',
		name: 'nurse_users_table',
		component: () => import('../views/nurse_users/table.vue'),
		meta: {
			index: 0,
			title: '护士用户列表'
		}
	},
	{
		path: '/nurse_users/view',
		name: 'nurse_users_view',
		component: () => import('../views/nurse_users/view.vue'),
		meta: {
			index: 0,
			title: '护士用户详情'
		}
	},
	// 护士长路由
	{
		path: '/head_nurse/table',
		name: 'head_nurse_table',
		component: () => import('../views/head_nurse/table.vue'),
		meta: {
			index: 0,
			title: '护士长列表'
		}
	},
	{
		path: '/head_nurse/view',
		name: 'head_nurse_view',
		component: () => import('../views/head_nurse/view.vue'),
		meta: {
			index: 0,
			title: '护士长详情'
		}
	},
	// 护理部路由
	{
		path: '/nursing_department/table',
		name: 'nursing_department_table',
		component: () => import('../views/nursing_department/table.vue'),
		meta: {
			index: 0,
			title: '护理部列表'
		}
	},
	{
		path: '/nursing_department/view',
		name: 'nursing_department_view',
		component: () => import('../views/nursing_department/view.vue'),
		meta: {
			index: 0,
			title: '护理部详情'
		}
	},
	// 科室病区路由
	{
		path: '/department_ward/table',
		name: 'department_ward_table',
		component: () => import('../views/department_ward/table.vue'),
		meta: {
			index: 0,
			title: '科室病区列表'
		}
	},
	{
		path: '/department_ward/view',
		name: 'department_ward_view',
		component: () => import('../views/department_ward/view.vue'),
		meta: {
			index: 0,
			title: '科室病区详情'
		}
	},
	// 护士档案路由
	{
		path: '/nurse_files/table',
		name: 'nurse_files_table',
		component: () => import('../views/nurse_files/table.vue'),
		meta: {
			index: 0,
			title: '护士档案列表'
		}
	},
	{
		path: '/nurse_files/view',
		name: 'nurse_files_view',
		component: () => import('../views/nurse_files/view.vue'),
		meta: {
			index: 0,
			title: '护士档案详情'
		}
	},
	// 档案审核路由
	{
		path: '/archive_review/table',
		name: 'archive_review_table',
		component: () => import('../views/archive_review/table.vue'),
		meta: {
			index: 0,
			title: '档案审核列表'
		}
	},
	{
		path: '/archive_review/view',
		name: 'archive_review_view',
		component: () => import('../views/archive_review/view.vue'),
		meta: {
			index: 0,
			title: '档案审核详情'
		}
	},
	// 护士转科路由
	{
		path: '/nurse_transfer/table',
		name: 'nurse_transfer_table',
		component: () => import('../views/nurse_transfer/table.vue'),
		meta: {
			index: 0,
			title: '护士转科列表'
		}
	},
	{
		path: '/nurse_transfer/view',
		name: 'nurse_transfer_view',
		component: () => import('../views/nurse_transfer/view.vue'),
		meta: {
			index: 0,
			title: '护士转科详情'
		}
	},
	// 机动护士路由
	{
		path: '/mobile_nurse/table',
		name: 'mobile_nurse_table',
		component: () => import('../views/mobile_nurse/table.vue'),
		meta: {
			index: 0,
			title: '机动护士列表'
		}
	},
	{
		path: '/mobile_nurse/view',
		name: 'mobile_nurse_view',
		component: () => import('../views/mobile_nurse/view.vue'),
		meta: {
			index: 0,
			title: '机动护士详情'
		}
	},
	// 调配记录路由
	{
		path: '/deployment_record/table',
		name: 'deployment_record_table',
		component: () => import('../views/deployment_record/table.vue'),
		meta: {
			index: 0,
			title: '调配记录列表'
		}
	},
	{
		path: '/deployment_record/view',
		name: 'deployment_record_view',
		component: () => import('../views/deployment_record/view.vue'),
		meta: {
			index: 0,
			title: '调配记录详情'
		}
	},
	// 变动记录路由
	{
		path: '/change_record/table',
		name: 'change_record_table',
		component: () => import('../views/change_record/table.vue'),
		meta: {
			index: 0,
			title: '变动记录列表'
		}
	},
	{
		path: '/change_record/view',
		name: 'change_record_view',
		component: () => import('../views/change_record/view.vue'),
		meta: {
			index: 0,
			title: '变动记录详情'
		}
	},
	// 休假申请路由
	{
		path: '/leave_application/table',
		name: 'leave_application_table',
		component: () => import('../views/leave_application/table.vue'),
		meta: {
			index: 0,
			title: '休假申请列表'
		}
	},
	{
		path: '/leave_application/view',
		name: 'leave_application_view',
		component: () => import('../views/leave_application/view.vue'),
		meta: {
			index: 0,
			title: '休假申请详情'
		}
	},
	// 用户路由
	{
		path: '/user/table',
		name: 'user_table',
		component: () => import('../views/user/table.vue'),
		meta: {
			index: 0,
			title: '用户列表'
		}
	},
	{
		path: '/user/view',
		name: 'user_view',
		component: () => import('../views/user/view.vue'),
		meta: {
			index: 0,
			title: '用户详情'
		}
	},
	{
		path: '/user/info',
		name: 'user_info',
		component: () => import('../views/user/info.vue'),
		meta: {
			index: 0,
			title: '个人信息'
		}
	},
	// 用户组路由
	{
		path: '/user_group/table',
		name: 'user_group_table',
		component: () => import('../views/user_group/table.vue'),
		meta: {
			index: 0,
			title: '用户组列表'
		}
	},
	{
		path: '/user_group/view',
		name: 'user_group_view',
		component: () => import('../views/user_group/view.vue'),
		meta: {
			index: 0,
			title: '用户组详情'
		}
	}
]

const router = new VueRouter({
	mode: 'history',
	base: process.env.BASE_URL,
	routes
})

router.beforeEach((to, from, next) => {
	let token = to.query.token;
	if (token){
		$.db.set("token",token,120);
	}
	next();
})

router.afterEach((to, from, next) => {
	let title = "医院护理人力资源管理系统-admin";
	document.title = title;
})

export default router
