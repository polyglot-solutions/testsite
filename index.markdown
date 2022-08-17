---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
---
<div id="results">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <h4><strong>Showing 10</strong> of results</h4>
      </div>
    </div>
    <!-- /row -->
  </div>
  <!-- /container -->
</div>
<!-- /results -->


<div class="container margin_60_35">
  <div class="row justify-content-md-center">
    <div class="col-lg-7">
      {% for cat in site.categories %}
        {{ cat[0] }}
        {% for doctor in cat[1] %}
  	      <div class="strip_list wow fadeIn">
  	        <figure>
  	          <a href="detail-page.html"><img src="{{ doctor.image_url }}" alt=""></a>
  	        </figure>
  	        <h3>{{ doctor.name }}</h3>
  	        <p>{{ doctor.description}}</p>
            <p>
              <b>Specialties:</b>
              <p>{{ doctor.specialties | join: ', ' | captilize }}</p>
            </p>
  	        <ul>
          	  <li><a href="tel://{{ doctor.telephone }}">{{ doctor.telephone }}</a></li>
              <li><a target="_blank" href="https://maps.google.com/?q={{ doctor.address1 }}, {{ doctor.city }}, {{ doctor.state }}, {{ doctor.zipcode }}">{{ doctor.address1 }}, {{ doctor.city }}, {{ doctor.state }}, {{ doctor.zipcode }}</a></li>
  	          <li><a href="{{ doctor.url }}">See More</a></li>
  	        </ul>
  	      </div>
  	    {% endfor %}
      {% endfor %}
      <nav aria-label="" class="add_top_20">
        <ul class="pagination pagination-sm">
          <li class="page-item disabled">
            <a class="page-link" href="#" tabindex="-1">Previous</a>
          </li>
          <li class="page-item active"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#">Next</a>
          </li>
        </ul>
      </nav>
    </div>
  </div>
</div>
