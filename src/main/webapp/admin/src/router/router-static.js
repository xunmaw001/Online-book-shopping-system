import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import dingdanpingjia from '@/views/modules/dingdanpingjia/list'
    import tejiaqu from '@/views/modules/tejiaqu/list'
    import discussxinshubang from '@/views/modules/discussxinshubang/list'
    import jiushuhuishou from '@/views/modules/jiushuhuishou/list'
    import storeup from '@/views/modules/storeup/list'
    import users from '@/views/modules/users/list'
    import huishouleibie from '@/views/modules/huishouleibie/list'
    import discusstejiaqu from '@/views/modules/discusstejiaqu/list'
    import tushufenlei from '@/views/modules/tushufenlei/list'
    import huishouyuyue from '@/views/modules/huishouyuyue/list'
    import yonghu from '@/views/modules/yonghu/list'
    import chat from '@/views/modules/chat/list'
    import xinshubang from '@/views/modules/xinshubang/list'
    import discussjiushuhuishou from '@/views/modules/discussjiushuhuishou/list'
    import orders from '@/views/modules/orders/list'
    import tushuhuishou from '@/views/modules/tushuhuishou/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/news',
        name: '公告资讯',
        component: news
      }
          ,{
	path: '/dingdanpingjia',
        name: '订单评价',
        component: dingdanpingjia
      }
          ,{
	path: '/tejiaqu',
        name: '特价区',
        component: tejiaqu
      }
          ,{
	path: '/discussxinshubang',
        name: '新书榜评论',
        component: discussxinshubang
      }
          ,{
	path: '/jiushuhuishou',
        name: '旧书回收',
        component: jiushuhuishou
      }
          ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
          ,{
	path: '/users',
        name: '管理员',
        component: users
      }
          ,{
	path: '/huishouleibie',
        name: '回收类别',
        component: huishouleibie
      }
          ,{
	path: '/discusstejiaqu',
        name: '特价区评论',
        component: discusstejiaqu
      }
          ,{
	path: '/tushufenlei',
        name: '图书分类',
        component: tushufenlei
      }
          ,{
	path: '/huishouyuyue',
        name: '回收预约',
        component: huishouyuyue
      }
          ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
          ,{
	path: '/chat',
        name: '客服管理',
        component: chat
      }
          ,{
	path: '/xinshubang',
        name: '新书榜',
        component: xinshubang
      }
          ,{
	path: '/discussjiushuhuishou',
        name: '旧书回收评论',
        component: discussjiushuhuishou
      }
          ,{
        path: '/orders/:status',
        name: '订单管理',
        component: orders
      }
          ,{
	path: '/tushuhuishou',
        name: '图书回收',
        component: tushuhuishou
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
