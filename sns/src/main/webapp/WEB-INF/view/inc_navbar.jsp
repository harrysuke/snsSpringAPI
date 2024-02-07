<!-- [ Header Topbar ] start -->
<header class="pc-header">
	<div class="header-wrapper">
		<!-- [Mobile Media Block] start -->
		<div class="me-auto pc-mob-drp">
			<ul class="list-unstyled">
				<!-- ======= Menu collapse Icon ===== -->
				<li class="pc-h-item pc-sidebar-collapse"><a href="#"
					class="pc-head-link ms-0" id="sidebar-hide"> <i
						class="ti ti-menu-2"></i>
				</a></li>
				<li class="pc-h-item pc-sidebar-popup"><a href="#"
					class="pc-head-link ms-0" id="mobile-collapse"> <i
						class="ti ti-menu-2"></i>
				</a></li>
				<li class="dropdown pc-h-item"><a
					class="pc-head-link dropdown-toggle arrow-none m-0 trig-drp-search"
					data-bs-toggle="dropdown" href="#" role="button"
					aria-haspopup="false" aria-expanded="false"> <svg
							class="pc-icon">
          				<use xlink:href="#custom-search-normal-1"></use>
        			</svg>
				</a>
					<div class="dropdown-menu pc-h-dropdown drp-search">
						<form class="px-3 py-2" role="search"
							action="/sns/pep/search" method="get">
							<input type="search" name="keyword"
								class="form-control border-0 shadow-none"
								placeholder="Search here. . ." />
						</form>
					</div></li>
			</ul>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="#">Home</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> VEP </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="/sns/vep/new">New VEP</a></li>
							<li><a class="dropdown-item" href="/sns/vep/list">List
									of VEP</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> PEP </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="/sns/pep/new">New PEP</a></li>
							<li><a class="dropdown-item" href="/sns/pep/list">List
									of PEP</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Product </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item"
								href="/OnlineShopSpringWebApp/product/addForm">New product</a></li>
							<li><a class="dropdown-item"
								href="/OnlineShopSpringWebApp/product/list">List of products</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Customer </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item"
								href="/OnlineShopSpringWebApp/customer/addCustomer">New
									customer</a></li>
							<li><a class="dropdown-item"
								href="/OnlineShopSpringWebApp/customer/listCustomer">List of
									customers</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="/sns/user/logout">Log out</a></li>
				</ul>
			</div>
		</div>
		<!-- [Mobile Media Block end] -->
		<div class="ms-auto">
			<ul class="list-unstyled">
				<li class="dropdown pc-h-item"><a
					class="pc-head-link dropdown-toggle arrow-none me-0"
					data-bs-toggle="dropdown" href="#" role="button"
					aria-haspopup="false" aria-expanded="false"> <svg
							class="pc-icon">
          <use xlink:href="#custom-sun-1"></use>
        </svg>
				</a>
					<div class="dropdown-menu dropdown-menu-end pc-h-dropdown">
						<a href="#!" class="dropdown-item" onclick="layout_change('dark')">
							<svg class="pc-icon">
            <use xlink:href="#custom-moon"></use>
          </svg> <span>Dark</span>
						</a> <a href="#!" class="dropdown-item"
							onclick="layout_change('light')"> <svg class="pc-icon">
            <use xlink:href="#custom-sun-1"></use>
          </svg> <span>Light</span>
						</a> <a href="#!" class="dropdown-item"
							onclick="layout_change_default()"> <svg class="pc-icon">
            <use xlink:href="#custom-setting-2"></use>
          </svg> <span>Default</span>
						</a>
					</div></li>
				<li class="dropdown pc-h-item"><a
					class="pc-head-link dropdown-toggle arrow-none me-0"
					data-bs-toggle="dropdown" href="#" role="button"
					aria-haspopup="false" aria-expanded="false"> <svg
							class="pc-icon">
          <use xlink:href="#custom-setting-2"></use>
        </svg>
				</a>
					<div class="dropdown-menu dropdown-menu-end pc-h-dropdown">
						<a href="/sns/user/profile/" class="dropdown-item"> <i class="ti ti-user"></i>
							<span>My Account</span>
						</a> <a href="#!" class="dropdown-item"> <i class="ti ti-settings"></i>
							<span>Settings</span>
						</a> <a href="#!" class="dropdown-item"> <i class="ti ti-headset"></i>
							<span>Support</span>
						</a> <a href="#!" class="dropdown-item"> <i class="ti ti-lock"></i>
							<span>Lock Screen</span>
						</a> <a href="/sns/user/logout" class="dropdown-item"> <i class="ti ti-power"></i>
							<span>Logout</span>
						</a>
					</div></li>
				<li class="pc-h-item"><a href="#" class="pc-head-link me-0"
					data-bs-toggle="offcanvas" data-bs-target="#announcement"
					aria-controls="announcement"> <svg class="pc-icon">
          <use xlink:href="#custom-flash"></use>
        </svg>
				</a></li>
				<li class="dropdown pc-h-item"><a
					class="pc-head-link dropdown-toggle arrow-none me-0"
					data-bs-toggle="dropdown" href="#" role="button"
					aria-haspopup="false" aria-expanded="false"> <svg
							class="pc-icon">
          <use xlink:href="#custom-notification"></use>
        </svg> <span class="badge bg-success pc-h-badge">3</span>
				</a>
					<div
						class="dropdown-menu dropdown-notification dropdown-menu-end pc-h-dropdown">
						<div
							class="dropdown-header d-flex align-items-center justify-content-between">
							<h5 class="m-0">Notifications</h5>
							<a href="#!" class="btn btn-link btn-sm">Mark all read</a>
						</div>
						<div
							class="dropdown-body text-wrap header-notification-scroll position-relative"
							style="max-height: calc(100vh - 215px)">
							<p class="text-span">Today</p>
							<div class="card mb-2">
								<div class="card-body">
									<div class="d-flex">
										<div class="flex-shrink-0">
											<svg class="pc-icon text-primary">
                    <use xlink:href="#custom-layer"></use>
                  </svg>
										</div>
										<div class="flex-grow-1 ms-3">
											<span class="float-end text-sm text-muted">2 min ago</span>
											<h5 class="text-body mb-2">UI/UX Design</h5>
											<p class="mb-0">Lorem Ipsum has been the industry's
												standard dummy text ever since the 1500s, when an unknown
												printer took a galley of type and scrambled it to make a
												type</p>
										</div>
									</div>
								</div>
							</div>
							<div class="card mb-2">
								<div class="card-body">
									<div class="d-flex">
										<div class="flex-shrink-0">
											<svg class="pc-icon text-primary">
                    <use xlink:href="#custom-sms"></use>
                  </svg>
										</div>
										<div class="flex-grow-1 ms-3">
											<span class="float-end text-sm text-muted">1 hour ago</span>
											<h5 class="text-body mb-2">Message</h5>
											<p class="mb-0">Lorem Ipsum has been the industry's
												standard dummy text ever since the 1500.</p>
										</div>
									</div>
								</div>
							</div>
							<p class="text-span">Yesterday</p>
							<div class="card mb-2">
								<div class="card-body">
									<div class="d-flex">
										<div class="flex-shrink-0">
											<svg class="pc-icon text-primary">
                    <use xlink:href="#custom-document-text"></use>
                  </svg>
										</div>
										<div class="flex-grow-1 ms-3">
											<span class="float-end text-sm text-muted">2 hour ago</span>
											<h5 class="text-body mb-2">Forms</h5>
											<p class="mb-0">Lorem Ipsum has been the industry's
												standard dummy text ever since the 1500s, when an unknown
												printer took a galley of type and scrambled it to make a
												type</p>
										</div>
									</div>
								</div>
							</div>
							<div class="card mb-2">
								<div class="card-body">
									<div class="d-flex">
										<div class="flex-shrink-0">
											<svg class="pc-icon text-primary">
                    <use xlink:href="#custom-user-bold"></use>
                  </svg>
										</div>
										<div class="flex-grow-1 ms-3">
											<span class="float-end text-sm text-muted">12 hour ago</span>
											<h5 class="text-body mb-2">Challenge invitation</h5>
											<p class="mb-2">
												<span class="text-dark">Jonny aber</span> invites to join
												the challenge
											</p>
											<button class="btn btn-sm btn-outline-secondary me-2">Decline</button>
											<button class="btn btn-sm btn-primary">Accept</button>
										</div>
									</div>
								</div>
							</div>
							<div class="card mb-2">
								<div class="card-body">
									<div class="d-flex">
										<div class="flex-shrink-0">
											<svg class="pc-icon text-primary">
                    <use xlink:href="#custom-security-safe"></use>
                  </svg>
										</div>
										<div class="flex-grow-1 ms-3">
											<span class="float-end text-sm text-muted">5 hour ago</span>
											<h5 class="text-body mb-2">Security</h5>
											<p class="mb-0">Lorem Ipsum has been the industry's
												standard dummy text ever since the 1500s, when an unknown
												printer took a galley of type and scrambled it to make a
												type</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="text-center py-2">
							<a href="#!" class="link-danger">Clear all Notifications</a>
						</div>
					</div></li>
				<li class="dropdown pc-h-item header-user-profile"><a
					class="pc-head-link dropdown-toggle arrow-none me-0"
					data-bs-toggle="dropdown" href="#" role="button"
					aria-haspopup="false" data-bs-auto-close="outside"
					aria-expanded="false"> <img
						src="https://ableproadmin.com/assets/images/user/avatar-2.jpg"
						alt="user-image" class="user-avtar" />
				</a>
					<div
						class="dropdown-menu dropdown-user-profile dropdown-menu-end pc-h-dropdown">
						<div
							class="dropdown-header d-flex align-items-center justify-content-between">
							<h5 class="m-0">Profile</h5>
						</div>
						<div class="dropdown-body">
							<div class="profile-notification-scroll position-relative"
								style="max-height: calc(100vh - 225px)">
								<div class="d-flex mb-1">
									<div class="flex-shrink-0">
										<img
											src="https://ableproadmin.com/assets/images/user/avatar-2.jpg"
											alt="user-image" class="user-avtar wid-35" />
									</div>
									<div class="flex-grow-1 ms-3">
												<h6 class="mb-1">Adminüññ</h6>
												<span>admin@localhost</span>
									</div>
								</div>
								<hr class="border-secondary border-opacity-50" />
								<div class="card">
									<div class="card-body py-3">
										<div class="d-flex align-items-center justify-content-between">
											<h5 class="mb-0 d-inline-flex align-items-center">
												<svg class="pc-icon text-muted me-2">
                      <use xlink:href="#custom-notification-outline"></use></svg>
												Notification
											</h5>
											<div class="form-check form-switch form-check-reverse m-0">
												<input class="form-check-input f-18" type="checkbox"
													role="switch" />
											</div>
										</div>
									</div>
								</div>
								<p class="text-span">Manage</p>
								<a href="#" class="dropdown-item"> <span> <svg
											class="pc-icon text-muted me-2">
                  <use xlink:href="#custom-setting-outline"></use>
                </svg> <span>Settings</span>
								</span>
								</a> <a href="#" class="dropdown-item"> <span> <svg
											class="pc-icon text-muted me-2">
                  <use xlink:href="#custom-share-bold"></use>
                </svg> <span>Share</span>
								</span>
								</a> <a href="#" class="dropdown-item"> <span> <svg
											class="pc-icon text-muted me-2">
                  <use xlink:href="#custom-lock-outline"></use>
                </svg> <span>Change Password</span>
								</span>
								</a>
								<hr class="border-secondary border-opacity-50" />
								<p class="text-span">Team</p>
								<a href="#" class="dropdown-item"> <span> <svg
											class="pc-icon text-muted me-2">
                  <use xlink:href="#custom-profile-2user-outline"></use>
                </svg> <span>IP team</span>
								</span>
									<div class="user-group">
										<img
											src="https://ableproadmin.com/assets/images/user/avatar-1.jpg"
											alt="user-image" class="avtar" /> <span
											class="avtar bg-danger text-white">K</span> <span
											class="avtar bg-success text-white"> <svg
												class="pc-icon m-0">
                    <use xlink:href="#custom-user"></use>
                  </svg>
										</span> <span class="avtar bg-light-primary text-primary">+2</span>
									</div>
								</a> <a href="#" class="dropdown-item"> <span> <svg
											class="pc-icon text-muted me-2">
                  <use xlink:href="#custom-profile-2user-outline"></use>
                </svg> <span>SC Groups</span>
								</span>
									<div class="user-group">
										<img
											src="https://ableproadmin.com/assets/images/user/avatar-1.jpg"
											alt="user-image" class="avtar" /> <span
											class="avtar bg-danger text-white">K</span> <span
											class="avtar bg-success text-white"> <svg
												class="pc-icon m-0">
                    <use xlink:href="#custom-user"></use>
                  </svg>
										</span>
									</div>
								</a> <a href="#" class="dropdown-item"> <span> <svg
											class="pc-icon text-muted me-2">
                  <use xlink:href="#custom-add-outline"></use>
                </svg> <span>Add new</span>
								</span>
									<div class="user-group">
										<span class="avtar bg-primary text-white"> <svg
												class="pc-icon m-0">
                    <use xlink:href="#custom-add-outline"></use>
                  </svg>
										</span>
									</div>
								</a>
								<hr class="border-secondary border-opacity-50" />
								<div class="d-grid mb-3">
									<a href="/sns/home/logout" class="btn btn-primary"> <svg
											class="pc-icon me-2">
                  <use xlink:href="#custom-logout-1-outline"></use></svg>
										Logout
									</a>
								</div>
								<div class="card border-0 shadow-none drp-upgrade-card mb-0"
									style="background-image: url(../assets/images/layout/img-profile-card.jpg)">
									<div class="card-body">
										<div class="user-group">
											<img
												src="https://ableproadmin.com/assets/images/user/avatar-1.jpg"
												alt="user-image" class="avtar" /> <img
												src="https://ableproadmin.com/assets/images/user/avatar-2.jpg"
												alt="user-image" class="avtar" /> <img
												src="https://ableproadmin.com/assets/images/user/avatar-3.jpg"
												alt="user-image" class="avtar" /> <img
												src="https://ableproadmin.com/assets/images/user/avatar-4.jpg"
												alt="user-image" class="avtar" /> <img
												src="https://ableproadmin.com/assets/images/user/avatar-5.jpg"
												alt="user-image" class="avtar" /> <span
												class="avtar bg-light-primary text-primary">+20</span>
										</div>
										<h3 class="my-3 text-dark">
											245.3k <small class="text-muted">Followers</small>
										</h3>
										
									</div>
								</div>
							</div>
						</div>
					</div></li>
			</ul>
		</div>
	</div>
</header>