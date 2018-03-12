<style scoped>
  .layout{
    border: 1px solid #d7dde4;
    background: #f5f7f9;
    position: relative;
    border-radius: 4px;
    overflow: hidden;
  }
  .layout-logo{
    width: 100px;
    height: 30px;
    /* background: #5b6270; */
    border-radius: 3px;
    float: left;
    position: relative;
    top: 15px;
    left: 20px;
  }
  .layout-nav{
    width: 720px;
    margin: 0 auto;
    margin-right: 20px;
  }
  .layout-footer-center{
    text-align: center;
  }
  .logo {
    width: 100%;
    height: 100%;
    position: absolute;
  }
  .carousel {
    margin-top: 64px;
    width: 100%;
  }
  .carsousel-img {
    width: 100%;
  }

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
</style>
<template>
  <div class="layout">
    <Layout>
      <Header :style="{position: 'fixed', width: '100%'}">
        <Menu mode="horizontal" theme="dark" active-name="1">
          <div class="layout-logo">
            <img class="logo" src="~/static/logo.png">
          </div>
          <div class="layout-nav">
            <MenuItem name="1" v-for="(menuItem, i) in menuItems" :key='i'>
              <Icon :type="menuItem.icon"></Icon>
              {{ menuItem.title }}
            </MenuItem>
          </div>
        </Menu>
      </Header>
      <Carousel autoplay v-model="value2" loop class="carousel" heigth=420>
        <CarouselItem v-for="carsouselItem in carsouselItems" :key="carsouselItem.id">
          <img class="carsousel-img" :src="carsouselItem">
        </CarouselItem>
      </Carousel>

      <Row>
        <Col span="12">
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
        <Col span="12">
          <img class="card-img-right" src="~/static/card1.jpg">
        </Col>
      </Row>

      <Row class="card-bg">
        <Col span="12">
          <img class="card-img-left" src="~/static/card2.jpg">
        </Col>
        <Col span="12">
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

      <Footer class="layout-footer-center">2011-2016 &copy; TalkingData</Footer>
    </Layout>
  </div>
</template>

<script>
  export default {
    data () {
      return {
        menuItems: [
          {
            title: '首页',
            icon: 'home'
          },
          {
            title: '产品展示',
            icon: 'grid'
          },
          {
            title: '解决方案',
            icon: 'clipboard'
          },
          {
            title: '渠道合作',
            icon: 'chatboex'
          },
          {
            title: '服务资源',
            icon: 'gear-b'
          },
          {
            title: '消费保障',
            icon: 'checkmark-round'
          }
        ],
        carsouselItems: [
          'carsousel1.jpg',
          'carsousel2.jpg',
        ]
      }
    }
  }
</script>
