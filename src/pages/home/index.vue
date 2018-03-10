<template>
  <div>
    <navbar></navbar>
    <el-main>
      <div class="block">
        <el-carousel height="420px">
          <el-carousel-item v-for="item in 3" :key="item">
            <h3>{{ item }}</h3>
          </el-carousel-item>
        </el-carousel>
      </div>
      <prodcard></prodcard>
      <solution></solution>
    </el-main>
    <ew-footer></ew-footer>
  </div>
</template>

<script>
import navbar from '../../components/NavBar'
import footer from '../../components/Footer'
import prodcard from '../../components/ProdCard'
import solution from '../../components/Solution'

export default {
  name: 'Home',
  data () {
    return { }
  },
  components: {
    navbar,
    'ew-footer': footer,
    prodcard,
    solution
  }
}
</script>

<style scoped>
.el-carousel__item h3 {
  color: #475669;
  font-size: 14px;
  opacity: 0.75;
  line-height: 150px;
  margin: 0;
}

.el-carousel__item:nth-child(2n) {
  background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n+1) {
  background-color: #d3dce6;
}
</style>
