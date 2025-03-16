
var projectName = '网上图书购物系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
	name: '我的订单',
	url: '../shop-order/list.html'
},

{
	name: '我的地址',
	url: '../shop-address/list.html'
},

{
	name: '我的收藏',
	url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '新书榜',
	url: './pages/xinshubang/list.html'
}, 
{
	name: '特价区',
	url: './pages/tejiaqu/list.html'
}, 
{
	name: '旧书回收',
	url: './pages/jiushuhuishou/list.html'
}, 

{
	name: '公告资讯',
	url: './pages/news/list.html'
},
]

var adminurl =  "http://localhost:8080/ssmre1kx/admin/dist/index.html";

var cartFlag = false

var chatFlag = false


chatFlag = true
cartFlag = true


var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"图书分类","menuJump":"列表","tableName":"tushufenlei"}],"menu":"图书分类管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"回收类别","menuJump":"列表","tableName":"huishouleibie"}],"menu":"回收类别管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"新书榜","menuJump":"列表","tableName":"xinshubang"}],"menu":"新书榜管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"特价区","menuJump":"列表","tableName":"tejiaqu"}],"menu":"特价区管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"旧书回收","menuJump":"列表","tableName":"jiushuhuishou"}],"menu":"旧书回收管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"订单评价","menuJump":"列表","tableName":"dingdanpingjia"}],"menu":"订单评价管理"},{"child":[{"buttons":["查看","修改","删除","审核","上门回收"],"menu":"回收预约","menuJump":"列表","tableName":"huishouyuyue"}],"menu":"回收预约管理"},{"child":[{"buttons":["查看","修改","删除","支付"],"menu":"图书回收","menuJump":"列表","tableName":"tushuhuishou"}],"menu":"图书回收管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"管理员","tableName":"users"}],"menu":"管理员管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"公告资讯","tableName":"news"},{"buttons":["新增","查看","修改","删除"],"menu":"客服管理","tableName":"chat"},{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"},{"child":[{"buttons":["查看"],"menu":"未支付订单","tableName":"orders/未支付"},{"buttons":["查看"],"menu":"已取消订单","tableName":"orders/已取消"},{"buttons":["查看","发货"],"menu":"已支付订单","tableName":"orders/已支付"},{"buttons":["查看"],"menu":"已退款订单","tableName":"orders/已退款"},{"buttons":["查看"],"menu":"已完成订单","tableName":"orders/已完成"},{"buttons":["查看"],"menu":"已发货订单","tableName":"orders/已发货"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"新书榜列表","menuJump":"列表","tableName":"xinshubang"}],"menu":"新书榜模块"},{"child":[{"buttons":["查看"],"menu":"特价区列表","menuJump":"列表","tableName":"tejiaqu"}],"menu":"特价区模块"},{"child":[{"buttons":["查看","回收预约"],"menu":"旧书回收列表","menuJump":"列表","tableName":"jiushuhuishou"}],"menu":"旧书回收模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"订单评价","menuJump":"列表","tableName":"dingdanpingjia"}],"menu":"订单评价管理"},{"child":[{"buttons":["查看"],"menu":"回收预约","menuJump":"列表","tableName":"huishouyuyue"}],"menu":"回收预约管理"},{"child":[{"buttons":["查看"],"menu":"图书回收","menuJump":"列表","tableName":"tushuhuishou"}],"menu":"图书回收管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"},{"child":[{"buttons":["查看"],"menu":"已支付订单","tableName":"orders/已支付"},{"buttons":["查看"],"menu":"已退款订单","tableName":"orders/已退款"},{"buttons":["查看"],"menu":"已完成订单","tableName":"orders/已完成"},{"buttons":["查看","确认收货"],"menu":"已发货订单","tableName":"orders/已发货"},{"buttons":["查看"],"menu":"未支付订单","tableName":"orders/未支付"},{"buttons":["查看"],"menu":"已取消订单","tableName":"orders/已取消"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"新书榜列表","menuJump":"列表","tableName":"xinshubang"}],"menu":"新书榜模块"},{"child":[{"buttons":["查看"],"menu":"特价区列表","menuJump":"列表","tableName":"tejiaqu"}],"menu":"特价区模块"},{"child":[{"buttons":["查看","回收预约"],"menu":"旧书回收列表","menuJump":"列表","tableName":"jiushuhuishou"}],"menu":"旧书回收模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
