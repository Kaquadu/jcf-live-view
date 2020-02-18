defmodule JcfBug.JcfLive do
  # uses
  use Phoenix.LiveView
  # aliases
  alias JcfBug.SomeSchema

  def mount(_params, _session, socket) do
    changeset = %SomeSchema{} |> SomeSchema.changeset()
    {:ok, assign(socket, changeset: changeset)}
  end

  def handle_event("search", %{"some_schema" => ss}, socket) do
    changeset = %SomeSchema{} |> SomeSchema.changeset(ss)
    {:noreply, assign(socket, changeset: changeset)}
  end

  def handle_event(_event, _params, socket) do
    {:noreply, assign(socket, unhandled: true)}
  end

  def render(assigns) do
    JcfBugWeb.PageView.render("live_form.html", assigns)
  end
end
