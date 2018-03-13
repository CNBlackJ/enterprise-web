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

  .header {

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

  .footer {
    background-color: #495060;
    color: #d7dde4;
  }

  .footer-row {
    padding: 5% 0 10% 15%;
  }
  .footer .title {
    font-size: 2vw;
    font-weight: 500;
  }

  .footer-list {
    padding: 1% 0;
    font-size: 1.5vw;
  }
</style>
<template>
  <div class="layout">
    <Layout>
      <Header :style="{position: 'fixed', width: '100%', 'z-index': 1}">
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
      <Carousel autoplay loop class="carousel" heigth=420>
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

      <!-- <div class="timeline">
        <light-timeline :items="timelines"></light-timeline>
      </div> -->

      <div class="footer">
        <Row class="footer-row">
          <Col span="8">
            <div class="footer-content">
              <span class="title">联系我们</span>
              <div class="footer-list">电话：010-123456</div>
              <div class="footer-list">地址：北京市北京区北京路01号</div>
              <div class="footer-list">时间：工作日 09:00～17:00</div>
            </div>
          </Col>
          <Col span="4">
            <div class="footer-content">
              <span class="title">关于我们</span>
              <div class="footer-list">渠道合作</div>
              <div class="footer-list">加入我们</div>
              <div class="footer-list">反馈建议</div>
              <div class="footer-list">服务资源</div>
            </div>
          </Col>
          <Col span="12">
            <div class="footer-content">
              <span class="title">公司动态</span>
              <div class="footer-list">
                合作 | 2018年与顺丰合作，共同打造物流新局面
              </div>
              <div class="footer-list">
                产品 | 恭贺最新产品成功研发
              </div>
              <div class="footer-list">
                欢乐 | 庆祝公司成立20周年，全体人员派发纪念T恤
              </div>
              <div class="footer-list">
                凤凰 | 携手新媒体共同发展
              </div>
              <div class="footer-list">
                投资 | 欢迎全球总部领导
              </div>
            </div>
          </Col>
        </Row>
      </div>

      <Footer class="layout-footer-center">2016-2018 &copy; enterprise-web by Vinli</Footer>
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
        ],
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
