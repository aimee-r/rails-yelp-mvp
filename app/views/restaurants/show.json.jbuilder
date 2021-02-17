json.partial! "restaurants/restaurant", restaurant: @restaurant

<ul class="list-group">
  <% @restaurant.reviews.each do |review| %>
    <li class="list-group-item"><%= review.content %></li>
  <% end %>
</ul>

  <li class="list-group-item">
      <%= review.content %>
      <%= link_to "Remove",
                  review_path(review),
                  method: :delete,
                  data: { confirm: "Are you sure?" } %>
    </li>
