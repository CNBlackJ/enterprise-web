<template>
  <el-header>
    <el-menu :default-active="activeIndex" class="el-menu-demo lg-nav" mode="horizontal" @select="handleSelect">
      <el-menu-item class="brand" index="0"></el-menu-item>
      <el-menu-item index="1">首页</el-menu-item>
      <el-menu-item index="2">产品展示</el-menu-item>
      <el-menu-item index="3">解决方案</el-menu-item>
      <el-menu-item index="4">渠道合作</el-menu-item>
      <el-menu-item index="5">服务资源</el-menu-item>
      <el-menu-item index="6">消费保障</el-menu-item>
    </el-menu>
  </el-header>
</template>

<script>
export default {
  name: 'NavBar',
  data () {
    return {
      activeIndex: '1'
    }
  },
  methods: {
    handleSelect (key, keyPath) {
      console.log(key, keyPath)
    }
  }
}
</script>

<style scoped>
.brand {
  padding: 0px 20px 0px 20px;
  background-image: url("//img.yzcdn.cn/public_files/2016/11/29/e585d313de3013698ad95968e2456240.png");
  width: 20%;
  background-repeat: no-repeat;
  background-position:center;
}

@media (max-width: 768px) {
  .lg-nav {
    display: none;
  }
}
</style>
