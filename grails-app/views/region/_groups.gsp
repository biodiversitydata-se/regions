<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<zones>
    <zone id="groupsZone"><![CDATA[

        <tbody tagName="tbody" id="groupsZone" aa-queue="abort">
        <g:each in="${groups}" var="group">
            <tr id="${group.commonName.replaceAll(/[^A-Za-z\\d_]/, "")}-row"
                class="group-row link" href="${g.createLink(controller: 'region', action: 'showSpecies')}"
                ${group.parent ? "parent=${group.parent.replaceAll(/[^A-Za-z\\d_]/, "")}-row style=display:none" : ""}
                aa-refresh-zones="speciesZone"
                aa-js-before="regionWidget.selectGroupHandler('${group.commonName.encodeAsJavaScript()}', ${group.parent ? true : false}, '${group.fq.encodeAsJavaScript()}');"
                aa-js-after="regionWidget.speciesLoaded();"
                aa-queue="abort">
                <td class="level${group.parent ? '1' : '0'}">
                    <g:if test="${!group.parent}">
                        <i class="fa fa-chevron-right"></i>
                    </g:if>
                    <g:set var="i18nName" value='${group.commonName == 'ALL_SPECIES' ? 'All Species' : group.commonName}' />
                    <g:message code="groups.${i18nName.replaceAll("\\s+","").replaceAll(",", "")}" default="${i18nName}" />
                </td>
            </tr>
        </g:each>

        </tbody>]]></zone>
</zones>
