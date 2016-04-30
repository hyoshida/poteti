$tip_poster = $('.tip.new')
$tip_poster.after("<%= j render 'show_with_folding', tip: @tip %>")
$tip_poster.find('form').trigger('reset')
