appendN = (t, n, s) ->
  t.append(new Array(n+1).join(s))

$('[data-stars]').each ->
  $this = $(this)
  appendN $this, $this.data('stars'), '<i class="icon-star"></i>'
  appendN $this, 4-$this.data('stars'), '<i class="icon-star-empty"></i>'
