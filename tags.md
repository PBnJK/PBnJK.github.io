---
title: "Tags"
layout: page
---

Currently serving {{ site.posts | size }} posts, tagged:

<div>
	{% assign utags = site.posts | map: "tags" | uniq | sort %}
	<ul>
	{% for t in utags %}
		{% if t != "" %}
			{% assign p = site.posts | where: "tags", t | size %}
			<li><a href="tags/{{t}}">#{{ t }}</a> &mdash; {{ p }} posts</li>
		{% endif %}
	{% endfor %}
	</ul>
</div>
