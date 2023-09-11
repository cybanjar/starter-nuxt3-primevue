<template>
	<div class="container">
		<div class="flex flex-column align-items-center mt-1">
			<img alt="Vue logo" src="./assets/images/primevue-logo.png" />
			<Toast />

			<div class="mt-4 flex">
				<MultiSelect v-model="selectedCities" :options="cities" optionLabel="name" placeholder="Select Cities"
            :maxSelectedLabels="3" class="w-full md:w-20rem" />

				<AutoComplete v-model="value" class="mx-3" :suggestions="items" @complete="search" />

				<form @submit.prevent="greet">
					<InputText type="text" v-model="text" />
					<Button type="submit" label="Submit" />
				</form>
			</div>
		</div>
	</div>
</template>

<script setup>
import { ref } from "vue";
import { useToast } from "primevue/usetoast";

const text = ref();
const toast = useToast();
const greet = () => {
	toast.add({ severity: 'success', summary: 'Info' + text.value, detail: 'Message Content', life: 3000 });
};

const selectedCities = ref();
const cities = ref([
    { name: 'New York', code: 'NY' },
    { name: 'Rome', code: 'RM' },
    { name: 'London', code: 'LDN' },
    { name: 'Istanbul', code: 'IST' },
    { name: 'Paris', code: 'PRS' }
])

const value = ref("");
const items = ref([]);

const search = (event) => {
    items.value = [...Array(10).keys()].map((item) => event.query + '-' + item);
}
</script>

<style>
.container {
	margin: 0 auto;
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>