<style scoped>
	.carousel {
		margin-top: 64px;
		width: 100%;
	}
	.carsousel-img {
		width: 100%;
	}
</style>

<template>
	<Carousel autoplay loop class="carousel" heigth=420>
		<CarouselItem v-for="carsouselItem in carsouselItems" :key="carsouselItem.id">
			<img class="carsousel-img" :src="carsouselItem">
		</CarouselItem>
	</Carousel>
</template>

<script>
	export default {
		data () {
			return {
        carsouselItems: [
          'carsousel1.jpg',
          'carsousel2.jpg',
        ],
			}
		}
	}
</script>