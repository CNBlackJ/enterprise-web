<template>
  <div class="footer">
    <el-row class="footer-desc">
      <el-col :span="7" class="contact">
        <h2>联系我们</h2>
        <div>邮箱：123@123.com</div>
        <div>电话：010-123456</div>
        <div>地址：北京市北京区北京路001号</div>
        <div>时间：周一到周五 9:00～18:00</div>
      </el-col>
      <el-col :span="7" class="about">
        <h2>关于我们</h2>
        <div>
          <a href="#">公司文化</a>
        </div>
        <div>
          <a href="#">合作联系</a>
        </div>
        <div>
          <a href="#">加入我们</a>
        </div>
        <div>
          <a href="#">品牌物料</a>
        </div>
      </el-col>
      <el-col :span="10" class="news">
        <h2>公司动态</h2>
        <div>
          <a href="#">合作 | 2018年与顺丰合作，共同打造物流新局面</a>
        </div>
        <div>
          <a href="#">产品 | 恭贺最新产品成功研发</a>
        </div>
        <div>
          <a href="#">欢乐 | 庆祝公司成立20周年，全体人员派发纪念T恤</a>
        </div>
        <div>
          <a href="#">凤凰 | 携手新媒体共同发展</a>
        </div>
        <div>
          <a href="#">投资 | 欢迎全球总部领导</a>
        </div>
      </el-col>
    </el-row>
    <div class="copyright">
      <div class="copyright-detail">®2017-2018 wifihi.cn 备案号 123456789</div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'footer',
  data () {
    return {}
  }
}
</script>

<style scoped>
a {
  text-decoration: none;
  color: #FFFFFF;
}

.footer {
  background-color: #373D44;
  color: #FFFFFF;
  text-align: left;
  padding: 10% 5% 0 5%;
}

.footer-desc {
  padding-bottom: 5%;
}

.copyright {
  text-align: center;
  font-size: 8px;
  border-top: 1px solid rgba(229,229,229,0.2);
}

.copyright-detail {
  padding: 1% 0 1% 0;
}
</style>
