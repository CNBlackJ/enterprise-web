<style scoped>
  .footer {
    background-color: #495060;
    color: #d7dde4;
  }

  .footer-row {
    padding: 5% 0 10% 15%;
  }
  .footer .title {
    font-size: 2vw;
    font-weight: 500;
  }

  .footer-list {
    padding: 1% 0;
    font-size: 1.5vw;
  }

	@media (max-width: 768px) {
		.footer-row {
			padding: 5% 0 5% 5%;
		}

		.footer-col {
			padding-bottom: 10%;
		}
	}
</style>

<template>
	<div class="footer">
		<Row class="footer-row">
			<Col span="8" :xs="16" class="footer-col">
				<div class="footer-content">
					<span class="title">联系我们</span>
					<div class="footer-list">电话：010-123456</div>
					<div class="footer-list">地址：北京市北京区北京路01号</div>
					<div class="footer-list">时间：工作日 09:00～17:00</div>
				</div>
			</Col>
			<Col span="4" :xs="8" class="footer-col">
				<div class="footer-content">
					<span class="title">关于我们</span>
					<div class="footer-list">渠道合作</div>
					<div class="footer-list">加入我们</div>
					<div class="footer-list">反馈建议</div>
					<div class="footer-list">服务资源</div>
				</div>
			</Col>
			<Col span="12" :xs="24" class="footer-col">
				<div class="footer-content">
					<span class="title">公司动态</span>
					<div class="footer-list">
						合作 | 2018年与顺丰合作，共同打造物流新局面
					</div>
					<div class="footer-list">
						产品 | 恭贺最新产品成功研发
					</div>
					<div class="footer-list">
						欢乐 | 庆祝公司成立20周年，全体人员派发纪念T恤
					</div>
					<div class="footer-list">
						凤凰 | 携手新媒体共同发展
					</div>
					<div class="footer-list">
						投资 | 欢迎全球总部领导
					</div>
				</div>
			</Col>
		</Row>
	</div>
</template>

<script>
	export default {
		data () {
			return {}
		}
	}
</script>