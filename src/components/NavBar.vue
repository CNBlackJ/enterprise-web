<template>
  <div class="header">
    <el-menu :default-active="activeIndex" class="el-menu-demo lg-nav" mode="horizontal" @select="handleSelect">
      <el-menu-item class="brand" index="0"></el-menu-item>
      <el-menu-item index="1">首页</el-menu-item>
      <el-menu-item index="2">产品展示</el-menu-item>
      <el-menu-item index="3">解决方案</el-menu-item>
      <el-menu-item index="4">渠道合作</el-menu-item>
      <el-menu-item index="5">服务资源</el-menu-item>
      <el-menu-item index="6">消费保障</el-menu-item>
    </el-menu>

    <div class="sm-nav">
      <el-row>
        <el-col :span="2">
          <a href="#" class="sm-brand">
            <img src="/static/logo.png" class="brand">
          </a>
        </el-col>
        <el-col :span="2" :offset="19">
          <i class="el-icon-menu sm-menu"></i>
        </el-col>
      </el-row>
    </div>
  </div>
</template>

<script>
export default {
  name: 'NavBar',
  data () {
    return {
      activeIndex: '1',
      isCollapse: true
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
@media (max-width: 768px) {
  .lg-nav {
    display: none;
  }

  .sm-nav {
    position: fixed;
  }

  .brand {
    padding: 10px 0 10px 10px;
  }

  .header {
    border-bottom: 1px solid #efefef;
  }

  .sm-menu {
    font-size: 10vw;
    padding: 5px 5px 5px 0;
  }
}

@media (min-width: 769px) {
  .brand {
    padding: 0px 20px 0px 20px;
    background-image: url("//img.yzcdn.cn/public_files/2016/11/29/e585d313de3013698ad95968e2456240.png");
    width: 20%;
    background-repeat: no-repeat;
    background-position:center;
  }

  .sm-nav {
    display: none;
  }
}
</style>
