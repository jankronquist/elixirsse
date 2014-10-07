Elixir + webmachine + server sent events
========================================

Small sample project for generating Server Sent Events using Elixir.

Compile and run:

    mix deps.get
    iex -S mix

Open [http://localhost:8080/](http://localhost:8080/) to see the amazing events being streamed to the browser! 

Don't forget to also test `curl -v http://localhost:8080/events`.


References
----------

* [Elixir](http://elixir-lang.org/)
* [Webmachine](https://github.com/basho/webmachine/)
* [Elixir wrapper for Webmachine](https://github.com/awetzel/ewebmachine)
* [Server Sent Events tutorial](http://www.w3schools.com/html/html5_serversentevents.asp)
* [Elixir + webmachine](http://blog.distortedthinking.agency/setting-up-elixir-and-ewebmachine/)
* [Webmachine + Server Sent Events](https://github.com/basho/webmachine/issues/167#issuecomment-25219081)

