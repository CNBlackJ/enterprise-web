<template>
  <div class="solution-block">
    <el-row>
      <el-col :lg="{span:8, offset: 3, push: (i % 2 == 0) ? 1 : 0, pull: (i % 2 == 1) ? 2 : 0}" :span="12" v-for="(solution, i) in solutions" :key="i"  :class="{ 'solution-right': (i % 2 === 0), 'solution-left': (i % 2 === 1) }" >
        <el-card class="lg-solution">
          <img :src="'/static/' + solution.img" class="image">
          <div class="solution-content">
            <el-row>
              <a href="#">
                <el-col :span="24">
                  <span class="solution-title">{{ solution.title }}</span>
                  <div class="solution-detail">
                    {{ solution.description }}
                    <i class="el-icon-arrow-right"></i>
                  </div>
                </el-col>
              </a>
            </el-row>
          </div>
        </el-card>

        <el-col :xs="{span: 12, push: (i % 2 == 0) ? 3 : 0, pull: (i % 2 == 1) ? 1 : 0}" class="sm-solution">
          <div class="sm-image" v-bind:style="{'background-image': `url('/static/${solution.img}')`}">
            <div class="solution-content">
              <div class="solution-title">{{ solution.title }}</div>
            </div>
          </div>
        </el-col>
      </el-col>
    </el-row>
  </div>
</template>

<script>
export default {
  name: 'solution',
  data () {
    return {
      solutions: [
        {
          title: '种类1',
          description: '利用互联网制定完整解决方案，让改变随时发生',
          img: 'solution1.png'
        },
        {
          title: '种类2',
          description: '广大客户群体通过该服务成功与互联网接轨，改善效率',
          img: 'solution2.png'
        },
        {
          title: '种类3',
          description: '通过与全球顶尖算法团队合作，实现了高效运作',
          img: 'solution3.png'
        },
        {
          title: '种类4',
          description: '编了这么多，很难再继续编写测试数据了',
          img: 'solution4.png'
        },
        {
          title: '种类5',
          description: '产品具备抗腐蚀的特点，保证在室外使用的寿命',
          img: 'solution5.png'
        },
        {
          title: '种类6',
          description: '采用进口机器加工，保证产品精度与质量',
          img: 'solution6.png'
        }
      ]
    }
  },
  methods: {
  }
}
</script>

<style scoped>
a {
  color: #333;
}

.image {
  width: 100%;
  height: 100%;
}

.solution-block {
  margin-top: 30px;
}

.solution-right {
  padding: 10px 10px 10px 0px;
}

.solution-left {
  padding: 10px 0px 10px 10px;
}

.solution-content {
  text-align: left;
  padding: 20px 0 5px 0px;
}

.solution-content:hover {
  text-align: left;
  padding: 20px 0 5px 0px;
  background-color: #eee;
}

.solution-title {
  font-size: 2vw;
  line-height: 28px;
}

.solution-detail {
  font-size: 1.1vw;
  line-height: 24px;
}

.solution-arrow {
  font-size: 3em;
}

@media (max-width: 768px) {
  .lg-solution {
    display: none;
  }

  .sm-image {
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    height: 160px;
    width: 160px;
  }

  .solution-content {
    padding-top: 120px;
  }

  .solution-title {
    background-color: rgba(0,0,0,.5);
    text-align: center;
    font-size: 6vw;
    color: #eeeeee;
    padding: 5px;
  }
}

@media (min-width: 769px) {
  .sm-solution {
    display: none;
  }
}
</style>
