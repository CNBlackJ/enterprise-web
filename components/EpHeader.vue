<style scoped>
  .layout-logo{
    width: 100px;
    height: 30px;
    /* background: #5b6270; */
    border-radius: 3px;
    float: left;
    position: relative;
    top: 15px;
    left: 20px;
  }
  .layout-nav{
    width: 720px;
    margin: 0 auto;
    margin-right: 20px;
  }
	.logo {
		width: 100%;
		height: 100%;
		position: absolute;
	}

	@media(max-width: 768px) {
		.lg-header {
			display: none;
		}

		.xs-header {
			background-color: #495060;
		}

		.xs-logo {
			padding: 10% 0 5%;
		}

		.xs-logo-img {
			width: 100%;
			height: 100%;
			padding: 10%;
		}

		.xs-menu {
			padding: 2%;
		}

		.xs-menu-btn {
			width: 48px;
			height: 48px;
			font-size: 30px;
			text-align: center;
		}
	}
</style>

<template>
	<div>
		<Header class="lg-header" :style="{position: 'fixed', width: '100%', 'z-index': 1}">
			<Menu mode="horizontal" theme="dark" active-name="1">
				<div class="layout-logo">
					<img class="logo" src="~/static/logo.png">
				</div>
				<div class="layout-nav">
					<MenuItem name="1" v-for="(menuItem, i) in menuItems" :key='i'>
						<Icon :type="menuItem.icon"></Icon>
						{{ menuItem.title }}
					</MenuItem>
				</div>
			</Menu>
		</Header>

		<div class="xs-header">
			<Row>
				<Col :span="6">
					<div class="xs-logo">
						<img class="xs-logo-img" src="~/static/logo.png">
					</div>
				</Col>
				<Col class="xs-menu" :span="4" offset="14">
					<Button class="xs-menu-btn" type="primary" shape="circle" icon="grid"></Button>
				</Col>
			</Row>
		</div>
	</div>
</template>

<script>
export default {
	data () {
		return {
			menuItems: [
				{
					title: '首页',
					icon: 'home'
				},
				{
					title: '产品展示',
					icon: 'grid'
				},
				{
					title: '解决方案',
					icon: 'clipboard'
				},
				{
					title: '渠道合作',
					icon: 'chatboex'
				},
				{
					title: '服务资源',
					icon: 'gear-b'
				},
				{
					title: '消费保障',
					icon: 'checkmark-round'
				}
			],
		}
	}
}
</script>
