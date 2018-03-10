<template>
  <div>
    <div class="block" v-for="(card, i) in cards" :key="i">
      <el-row class="card" v-bind:class="{ 'card-bg': (i % 2 === 1) }">
        <el-col v-if="i === 0"  :lg="{span: 8, offset: 2, push: 1}" :span="12">
          <img :src="'/static/' + card.img" class="card-img">
        </el-col>
        <el-col :lg="{ span: 8, offset: 2, push:(i % 2 === 0) ? 0 : 1 }" :span="12">
          <div class="card-content">
            <span class="card-title">{{card.title}}</span>
            <div class="card-intro">
              <div v-for="(intro, j) in card.introduction" :key="j">{{intro}}</div>
            </div>
            <div class="bottom clearfix">
              <el-button type="primary">免费试用</el-button>
              <el-button>产品详情</el-button>
            </div>
          </div>
        </el-col>
        <el-col v-if="i === 1"  :lg="{span: 8, offset: 2}" :span="12">
            <img :src="'/static/' + card.img" class="card-img">
          </el-col>
      </el-row>
    </div>
  </div>
</template>

<script>
export default {
  name: 'prodcard',
  data () {
    return {
      cards: [
        {
          title: '产品A',
          introduction: ['在这里可以填写产品A的简单介绍', '比如，产品A是业界领头羊，拥有稳定的客户群', '提供安全可靠的服务'],
          img: 'card1.jpg'
        },
        {
          title: '产品B',
          introduction: ['产品B可以提供安全可靠的服务', '严格控制产品质量，转换率高', '适用用市面上大部分产品'],
          img: 'card2.jpg'
        }
      ]
    }
  }
}
</script>

<style scoped>
.card {
  padding: 100px 0 50px 0;
}

.card-bg {
  background-color: #F8F8F8;
}

.card-content {
  text-align: left;
  padding-left: 20%;
}

.card-img {
  width: 80%;
  height: 100%;
}

.card-title {
  font-size: 2vw;
  line-height: 40px;
}

.card-intro {
  font-size: 1vw;
  line-height: 30px;
  margin: 10% 0 10% 0;
}
</style>
