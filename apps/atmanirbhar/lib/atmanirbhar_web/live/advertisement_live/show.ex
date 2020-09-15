defmodule AtmanirbharWeb.AdvertisementLive.Show do
  use AtmanirbharWeb, :live_view

  alias Atmanirbhar.Marketplace

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:advertisement, Marketplace.get_advertisement!(id))}
  end

  defp page_title(:show), do: "Show Advertisement"
  defp page_title(:edit), do: "Edit Advertisement"
end