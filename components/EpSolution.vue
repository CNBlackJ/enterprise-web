<style scoped>
  .solution {
    padding: 5% 0;
  }

  .solution-card-left {
    padding: 0 1% 2% 15%;
  }

  .solution-card-rigth {
    padding: 0 15% 2% 1%;
  }

  .solution-img {
    width: 100%;
    height: 100%;
  }

  .solution-title {
    font-size: 2vw;
  }

  .solution-desc {
    font-size: 1vw;
  }
</style>

<template>
	<Row class="solution">
		<Col :class="{ 'solution-card-left': (i % 2 == 0), 'solution-card-rigth': (i % 2 == 1) }" span="12" v-for="(solution, i) in solutions" :key="i">
			<Card>
				<div>
					<img :src="solution.img" class="solution-img">
					<h3 class="solution-title">{{ solution.title }}</h3>
					<p class="solution-desc">{{ solution.desc }}</p>
				</div>
			</Card>
		</Col>
	</Row>
</template>

<script>
	export default {
		data () {
			return {
        solutions: [
          {
            title: '种类1',
            desc: '面向该种类，利用互联网制定完整解决方案，让改变随时发生',
            img: 'solution1.png'
          },
          {
            title: '种类2',
            desc: '广大客户群体通过该服务成功与互联网接轨，改善效率',
            img: 'solution2.png'
          },
          {
            title: '种类3',
            desc: '通过与全球顶尖算法团队合作，实现了高效运作',
            img: 'solution3.png'
          },
          {
            title: '种类4',
            desc: '编了这么多，很难再继续编写测试数据了',
            img: 'solution4.png'
          },
          {
            title: '种类5',
            desc: '产品具备抗腐蚀的特点，在室外使用能很好的保证使用寿命',
            img: 'solution5.png'
          },
          {
            title: '种类6',
            desc: '采用进口机器加工，保证产品精度与质量',
            img: 'solution6.png'
          }
        ]
			}
		}
	}
</script>