<script async src="https://dn-lbstatics.qbox.me/busuanzi/2.3/busuanzi.pure.mini.js"></script>
<div class="copyright">{#
#}{% set current = date(Date.now(), "YYYY") %}{#
#}&copy; {% if theme.footer.since and theme.footer.since != current %}{{ theme.footer.since }} &mdash; {% endif %}{#
#}<span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="fa fa-heart" aria-hidden="true"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ theme.footer.copyright || config.author }}</span>
</div>



<div class="powered-by">
  <i class="fa fa-user-md"></i>
  <span id="busuanzi_container_site_uv">访问用户：<span id="busuanzi_value_site_uv"></span>次</span>
</div>

{% if theme.footer.powered and theme.footer.theme.enable %}
  <span class="post-meta-divider">|</span>
{% endif %}

<div class="powered-by">
  <i class="fa fa-eye" aria-hidden="true"></i>
  <span id="busuanzi_container_site_uv">访问总量：<span id="busuanzi_value_site_pv"></span>次</span>
</div>

{% if theme.footer.powered and theme.footer.theme.enable %}
  <span class="post-meta-divider">|</span>
{% endif %}

<div class="theme-info">
  <i class="fa fa-paint-brush" aria-hidden="true"></i>
  <span class="post-count">博客全站共{{ totalcount(site) }}字</span>
</div>

{% if theme.footer.custom_text %}
  <div class="footer-custom">{#
  #}{{ theme.footer.custom_text }}{#
#}</div>
{% endif %}
