workers 2
bind "tcp://0.0.0.0:#{ENV.fetch("PORT")}"
threads 1, 10
