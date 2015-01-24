<timer>

  <span>{ time } el.</span>

  this.time = opts.start || 0

  tick() {
    this.update({ time: ++this.time })
  }

  var timer = setInterval(this.tick, 1000)

  this.on('unmount', function() {
    console.info('timer cleared')
    clearInterval(timer)
  })

</timer>
