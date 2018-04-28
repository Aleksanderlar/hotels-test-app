<%@ page import="hotels.test.app.Country" %>



<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="country.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="name" cols="40" rows="5" maxlength="255" required="" value="${countryInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'capital', 'error')} required">
	<label for="capital">
		<g:message code="country.capital.label" default="Capital" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="capital" maxlength="128" required="" value="${countryInstance?.capital}"/>

</div>

