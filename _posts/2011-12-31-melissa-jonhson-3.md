---
name: Melissa A. Johnson, MD, FACS
img_url: https://cdn.plasticsurgery.org/images/profile/crop-54637.jpg
address1: 734 Longmeadow St.
address2: Suite 201
city: Longmeadow
state: '01106'
zipcode: '01106'
phone: (413) 731-7877
board_certifications: U.S. Board Certified
nbir_participant: /include/images/NBIR_participant_badge.png
id: FAS
url: http://www.plasticsurgery.org/md/melissa-johnson-md.html
specialties:
  - Eyelid Surgery
  - Botulinum Toxin
  - Facial Implants
  - Chemical Peels, IPL, Fractional CO2 Laser Treatments
  - Injectable Fillers
  - Dermabrasion
  - Endoscopic Technique
  - Lip Augmentation/Enhancement
  - Chin Surgery
  - Microdermabrasion
  - Ear Surgery
  - Permanent Makeup
  - Retin-A Treatments
  - Rhinoplasty
  - Dermal Fillers
  - Buttock Lift with Augmentation
  - Laser Hair Removal
  - Liposuction
  - Thigh Lift
  - Tattoo Removal
  - Male Breast Reduction
  - General Reconstruction
  - Gender Affirmation Surgery
twitter: null
facebook: null
instagram: null
intro: "\r\n                            Melissa  A. Johnson, MD, FACS, is an ASPS Member plastic surgeon who is board certified by The American Board of Plastic Surgery®\r\n                            and trained specifically in plastic surgery. ASPS members operate only in accredited medical facilities, adhere to a\r\n                            strict code of ethics and fulfill continuing medical education requirements in plastic surgery, including training in\r\n                            patient safety techniques. As your medical partner, Dr. Johnson is dedicated to\r\n                            working with you to achieve your goals.\r\n                        "
video_url: null
website: "\r\n                    http://www.pioneervalleyplasticsurgery.com\r\n                "
languages:
  - Portuguese
  - Spanish
memberships:
  - American Society of Plastic Surgeons
  - American Society of Aesthetic Plastic Surgeons
  - New England Society of Plastic and Reconstructive Surgeons
  - Massachusetts Society of Plastic Surgeons
  - American College of Surgeons
education:
  - Emory University, Atlanta , Georgia - BS Chemistry / Biology 1987
  - Medical College of Georgia, Augusta, Georgia- MD 1992
  - Medical College of Georgia, Augusta, Georgia- General Surgery Residency 1998
  - >-
    Indiana University School of Medicine, Indianapolis, Indiana- Plastic
    Surgery Fellowship 2000
procedures:
  - "At Pioneer Valley Plastic Surgery, we provide convenient on-line registering prior to your consultation.\_ If you would prefer to register at the time of your appointment, we have computers and office staff who are available to help you.\_ Just let them know what works best for you."
  - >-
    Our Office is conveniently located in Springfield, Massachusetts just off of
    I-91 and is the only LEED Certified Medical Office Building in Western
    Massachusetts.
  - "During your consultation with Dr. Johnson and our team, you will have time to discuss your aesthetic surgery needs, ask questions,\_and be educated on options available to you.\_\_\_An individualized\_plan is developed to meet your goals."
  - >-
    You can schedule your surgery at the time of your consultation or can call
    at your convenience.
  - Baystate Medical Center, Springfield, Massachusetts
  - Mercy Medical Center, Springfield, Massachusetts
  - Greater Springfield Surgery Center, Springfield, Massachusetts
  - Shriners Hospital, Springfield, Massachusetts
  - Arm Lift
  - Body Contouring
  - Body Lift
  - Botulinum Toxin
  - Breast Augmentation
  - Breast Implant Removal
  - Breast Implant Removal
  - Breast Lift
  - Breast Reconstruction
  - Breast Reduction
  - Brow Lift
  - Buttock Lift with Augmentation
  - Chemical Peels, IPL, Fractional CO2 Laser Treatments
  - Chin Augmentation
  - Chin Surgery
  - Dermabrasion
  - Dermal Fillers
  - Ear Surgery
  - Endoscopic Technique
  - Eyelid Surgery
  - Facelift
  - Facial Implants
  - Gender Affirmation Surgery
  - General Reconstruction
  - Injectable Fillers
  - Laser Hair Removal
  - Lip Augmentation/Enhancement
  - Liposuction
  - Male Breast Reduction
  - Microdermabrasion
  - Permanent Makeup
  - Retin-A Treatments
  - Rhinoplasty
  - Scar Revision
  - Skin Cancer Removal
  - Tattoo Removal
  - Thigh Lift
  - TRAM Flap Breast Reconstruction
  - Tummy Tuck
payment:
  - Cash or Personal Checks
  - Medicaid
  - Medicare
  - Patient Financing
insurance: []
google_maps_url: https://www.google.com/maps/?q=734+Longmeadow+St.+Suite+201+Longmeadow
categories: orlando
layout: default florida
---

<div id="breadcrumb">
	<div class="container">
		<ul>
			<li><a href="#">Home</a></li>
			<li><a href="/categories/{{ page.category }}">Categories</a></li>
      <li><a href="/categories/{{ page.category }}">{{ page.category | capitalize }}</a></li>
		</ul>
	</div>
</div>
<div class="container margin_60">
	<div class="row justify-content-md-center">
		<div class="col-xl-8 col-lg-8">
			<nav id="secondary_nav">
				<div class="container" style="height:25px;">
				</div>
			</nav>
			<div id="section_1">
				<div class="box_general_3">
					<div class="profile">
						<div class="row">
							<div class="col-lg-5 col-md-4">
								<figure>
									<img src="{{ page.img_url }}" alt="" class="img-fluid">
								</figure>
							</div>
							<div class="col-lg-7 col-md-8">
								<h1>{{ page.name }}</h1>
                <ul class="statistic">
                  <a href="{{ page.website }}" target="_blank"><li>Website</li></a>
                </ul>
								<ul class="contacts">
									<li>
										<h6>Address</h6>
										<a target="_blank" href="{{ page.google_maps_url }}">
										  {{ page.address1 }} {{ page.address2 }}, {{ page.city }}, {{ page.state }}, {{ page.zipcode }}
										</a>
									</li>
									<li>
										<h6>Phone</h6> <a href="tel://{{ page.phone }}">{{ page.phone }}</a>
									</li>
                  <li>
                    <h6>Board Certification</h6>{{ page.board_certifications }}
                  </li>
								</ul>
							</div>
						</div>
					</div>
					<hr>
          <div class="indent_title_in">
            <i class="pe-7s-user"></i>
            <h3>Professional statement</h3>
          </div>
          <div class="wrapper_indent">
            <p>{{ page.intro }}</p>
            <h6>Specializations</h6>
            <div class="row">
              {% assign specialties_middle = page.specialties | size | divided_by: 2 %}
              <div class="col-lg-6">
                <ul class="bullets">
                  {% for spectialy in page.specialties limit: specialties_middle %}
                    <li>{{ spectialy }}</li>
                  {% endfor %}
                </ul>
              </div>
              <div class="col-lg-6">
                <ul class="bullets">
                  {% for spectialy in page.specialties offset: specialties_middle %}
                    <li>{{ spectialy }}</li>
                  {% endfor %}
                </ul>
              </div>
            </div>
          </div>
          <!-- /wrapper indent -->
          <hr>
          <div class="indent_title_in">
            <i class="pe-7s-news-paper"></i>
            <h3>Education</h3>
          </div>
          <div class="wrapper_indent">
            <ul class="list_edu">
              {% for spectialy in page.education %}
                <li><strong>{{ spectialy }}</strong></li>
              {% endfor %}
            </ul>
          </div>
          <hr>
				</div>
				<!-- /section_1 -->
			</div>
		</div>
	</div>
	<!-- /row -->
</div>

