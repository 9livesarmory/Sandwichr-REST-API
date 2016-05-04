$(document).on('ready', function() {
	
	$('.js-btn-ingredient-add').on('click', addIngredient)

});

	function addIngredient() {
		event.preventDefault();
		var sandwich_id = $('.js-sandwich').data('sandwich-id');
		console.log(sandwich_id)
		var ingredientId = $('.js-btn-ingredient-add').data('ingredient-id');
		console.log(ingredientId)
		var ingredientName = $(this).data('ingredient-name');


		$.ajax ({
			url: `http://localhost:3000/api/sandwiches/${sandwich_id}/ingredients/add`,
			type: 'POST',
			data: { ingredient: ingredientId },  //params key in rails to var value from this function 
			success: function (){
				console.log("success woot");
				//console.log(objectData);
				displayAddedIngredient(ingredientName);

			},

			error: function (error) {
				console.log("oops");
				console.log(error.responseJSON);
			}
		});

		function displayAddedIngredient(name){
			var html = `
				<li>
					${name}
				</li>`;
				$('.js-ingredients').append(html);
		}
	};
