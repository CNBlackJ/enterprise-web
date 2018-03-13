<style scoped>
	.card-bg {
    background-color: #efefef;
  }
  .card-img-right {
    width: 100%;
    height: 100%;
    padding: 10% 30% 10% 20%;
  }
  .card-img-left {
    width: 100%;
    height: 100%;
    padding: 10% 20% 10% 30%;
  }
  .card-desc-right {
    text-align: left;
    padding: 10% 0 10% 20%;
  }
  .card-desc-left {
    text-align: left;
    padding: 10% 0 10% 30%;
  }
  .card-title {
    font-size: 3vw;
    padding-bottom: 2vw;
  }
  .card-detail {
    font-size: 1.5vw;
    padding-bottom: 1vw;
  }

	@media(max-width: 768px) {
    .card-img-right {
      width: 100%;
      height: 100%;
      padding: 1% 2% 5% 2%;
    }
    .card-img-left {
      width: 100%;
      height: 100%;
      padding: 1% 2% 2% 2%;
    }
    .card-desc-right {
      text-align: center;
      padding: 0 0 5% 0;
    }
    .card-desc-left {
      text-align: center;
      padding: 2% 0;
    }
  }

</style>

<template>
	<div>
		<Row>
			<Col :xs="24" :sm="12" :md="12" :lg="12" span="12">
				<div class="card-desc-left">
					<div class="card-content">
						<h2 class="card-title">产品A</h2>
						<div class="card-detail">
							在这里可以填写产品A的简单介绍
						</div>
						<div class="card-detail">
							比如，产品A是业界领头羊，拥有稳定的客户群
						</div>
						<div class="card-detail">
							提供安全可靠的服务
						</div>
					</div>
				</div>
			</Col>
			<Col :xs="24" :sm="12" :md="12" :lg="12" span="12">
				<img class="card-img-right" src="~/static/card1.jpg">
			</Col>
		</Row>

		<Row class="card-bg">
			<Col :xs="24" :sm="12" :md="12" :lg="12" span="12">
				<img class="card-img-left" src="~/static/card2.jpg">
			</Col>
			<Col :xs="24" :sm="12" :md="12" :lg="12" span="12">
				<div class="card-desc-right">
					<div class="card-content">
						<h2 class="card-title">产品B</h2>
						<div class="card-detail">
							产品B可以提供安全可靠的服务
						</div>
						<div class="card-detail">
							严格控制产品质量，转换率高
						</div>
						<div class="card-detail">
							适用用市面上大部分产品
						</div>
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