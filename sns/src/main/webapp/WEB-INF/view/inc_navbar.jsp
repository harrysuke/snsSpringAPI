<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">SNS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            VEP
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="/sns/vep/new">New VEP</a></li>
            <li><a class="dropdown-item" href="/sns/vep/list">List of VEP</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            PEP
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="/sns/pep/new">New PEP</a></li>
            <li><a class="dropdown-item" href="/sns/pep/list">List of PEP</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Product
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="/OnlineShopSpringWebApp/product/addForm">New product</a></li>
            <li><a class="dropdown-item" href="/OnlineShopSpringWebApp/product/list">List of products</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Customer
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="/OnlineShopSpringWebApp/customer/addCustomer">New customer</a></li>
            <li><a class="dropdown-item" href="/OnlineShopSpringWebApp/customer/listCustomer">List of customers</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="/OnlineShopSpringWebApp/user/logout">Log out</a>
        </li>
      </ul>
      <form class="d-flex" role="search" action="/OnlineShopSpringWebApp/product/search" method="get">
        <input class="form-control me-2" type="search" placeholder="Search" name="keyword" aria-label="Search">
        <button class="btn btn-outline-dark" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>