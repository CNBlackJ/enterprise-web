<style scoped>
  .layout{
    border: 1px solid #d7dde4;
    background: #f5f7f9;
    position: relative;
    border-radius: 4px;
    overflow: hidden;
  }
  .layout-footer-center{
    text-align: center;
  }
</style>
<template>
  <div class="layout">
    <Layout>
      <ep-header></ep-header>
      <ep-carousel></ep-carousel>
      <ep-card></ep-card>
      <ep-solution></ep-solution>
      <ep-footer></ep-footer>
      <Footer class="layout-footer-center">2016-2018 &copy; enterprise-web by Vinli</Footer>
    </Layout>
  </div>
</template>

<script>
  import EpHeader from '~/components/EpHeader'
  import EpCarousel from '~/components/EpCarousel'
  import EpCard from '~/components/EpCard'
  import EpSolution from '~/components/EpSolution'
  import EpFooter from '~/components/EpFooter'

  export default {
    data () {
      return {
      }
    },
    components: {
      'ep-header': EpHeader,
      'ep-carousel': EpCarousel,
      'ep-card': EpCard,
      'ep-solution': EpSolution,
      'ep-footer': EpFooter
    }
  }
</script>
