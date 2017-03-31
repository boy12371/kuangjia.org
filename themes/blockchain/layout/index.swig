<header id="banner" class="wrapper">
  <div class="inner">
    <h2 id="banner-title">{{ page.subtitle }}</h2>
    <div id="banner-start">
      <span>{{ __('index.banner_start') }}</span>
    </div>
    <div id="banner-share">{{ partial('partial/share') }}</div>
  </div>
</header>
<div id="content-wrap">
  <div class="wrapper">
    <div class="inner">
      {{ page.content }}
      <ul id="intro-cmd-wrap">
        <li class="intro-cmd-item">免费</li>
        <li class="intro-cmd-item">不用写一行代码</li>
        <li class="intro-cmd-item">安卓、苹果和微信客户端</li>
        <li class="intro-cmd-item">不需要数据库</li>
        <li class="intro-cmd-item">只要有域名和静态web空间</li>
      </ul>
      <div id="intro-get-started-wrap">
        <a href="docs/" id="intro-get-started-link">{{ __('index.get_started') }}</a>
      </div>
    </div>
  </div>
</div>
