<%@ page import="hotels.test.app.Hotel" %>



<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="hotel.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="name" cols="40" rows="5" maxlength="255" required="" value="${hotelInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="hotel.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="country" name="country.id" from="${hotels.test.app.Country.list()}" optionKey="id" required="" value="${hotelInstance?.country?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'stars', 'error')} required">
	<label for="stars">
		<g:message code="hotel.stars.label" default="Stars" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="stars" from="${1..5}" class="range" required="" value="${fieldValue(bean: hotelInstance, field: 'stars')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'site', 'error')} ">
	<label for="site">
		<g:message code="hotel.site.label" default="Site" />
		
	</label>
	<g:field type="url" name="site" pattern="${hotelInstance.constraints.site.matches}" value="${hotelInstance?.site}"/>

</div>

