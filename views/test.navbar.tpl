  <!-- Navbar -->
<nav class="py-3 navbar navbar-expand-lg fixed-top auto-hiding-navbar">
  <div class="container shadow-sm p-3 mb-1 bg-body rounded">
    <a class="navbar-brand" href="{{navhome}}">
      <img class="logo" src="/static/favicon-32x32.png" /> Dan Carroll
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto">
        % for nav in navs:
        <li class="nav-item">
          <a class="nav-link {{nav['active']}}" \\
          % if nav['active'] == 'active':
          aria-current="page" \\
          % end
          href="{{nav['href']}}">{{nav['text']}}</a>
        </li>
        % end

      </ul>
    </div>
  </div>
</nav>

% if crumbs:
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
  % for crumb in crumbs:
    % if ['active'] == 'active':
    <li class="breadcrumb-item">
      <a href="{{crumb['href']}}">{{crumb['text']}}</a></li>
    % else:
    <li class="breadcrumb-item active" aria-current="page">{{crumb['text']}}</li>
    % end
  % end
  </ol>
</nav>
% end
<!-- End Navbar -->