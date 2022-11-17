<ul liferay-tag="navigation-root">
    <#assign selectedClass = "active" />
    <#list entries as navigationEntry>
        <#if navigationEntry.hasChildren()>
            <#assign uniqueId=.now?string["HHmmssSSS"]?number />
            <li liferay-tag="navigation-item-with-sub">
                <a liferay-tag="navigation-sub-label" href="checkout.html">${navigationEntry.getName()}</a>
                <ul liferay-tag="navigation-root">
                    <#list navigationEntry.getChildren() as SubEntry>
                        <#assign subActive="" />
                        <#if SubEntry.isSelected()>
                            <#assign subActive=selectedClass>
                        </#if>
                        <li liferay-tag="navigation-single-item" class="${subActive}"><a href="${navigationEntry.getURL()}">${navigationEntry.getName()}</a></li>
                    </#list>
                </ul>
            </li>
        <#else>
            <#assign active="" />
            <#if navigationEntry.isSelected()>
                <#assign active=selectedClass>
            </#if>
            <li liferay-tag="navigation-single-item" class="${active}"><a href="${navigationEntry.getURL()}">${navigationEntry.getName()}</a></li>
        </#if>
    </#list>
</ul>
