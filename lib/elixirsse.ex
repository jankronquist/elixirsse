defmodule ElixirSSE do
  use Ewebmachine

  def generate_stream(counter) do
    receive do
    after 2000 -> {"data: " <> to_string(counter) <> "\n\n", fn -> generate_stream(counter+1) end}
    end
  end

  resource ['events'] do
    content_types_provided do: [{'text/event-stream', :to_stream}]
    to_stream do
      {:stream, {<<>>, fn -> ElixirSSE.generate_stream(1) end}}
    end
  end

  resource [] do
    to_html do
"<html>
<script>
var source = new EventSource('/events');
source.onmessage = function (event) {
document.getElementById('result').innerHTML = event.data;
};
</script>
<body>
<div id='result'></div>
</body>
</html>"
    end
  end
      
end