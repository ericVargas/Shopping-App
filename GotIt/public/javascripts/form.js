console.log('Form is working!');

$(".delete").on('click', function() {
    let id = $(this).parent().attr('data-id')
  axios.delete("http://localhost:3000/"+id)
  $(this).parent().remove()
})