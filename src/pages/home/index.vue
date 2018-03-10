<template>
  <div>
    <navbar></navbar>
    <el-main class="main-block">
      <div class="block lg-carousel">
        <el-carousel height="420px">
          <el-carousel-item v-for="item in 3" :key="item">
            <h3>{{ item }}</h3>
          </el-carousel-item>
        </el-carousel>
      </div>
      <div class="block sm-carousel">
          <el-carousel height="370px">
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
import ewFooter from '../../components/EwFooter'
import prodcard from '../../components/ProdCard'
import solution from '../../components/Solution'

export default {
  name: 'Home',
  data () {
    return { }
  },
  components: {
    navbar,
    'ew-footer': ewFooter,
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

@media (max-width: 768px) {
  .main-block {
    margin-top: 50px;
    padding: 0;
  }

  .lg-carousel {
    display: none;
  }
}

@media (min-width: 769px) {
  .sm-carousel {
    display: none;
  }
}
</style>
