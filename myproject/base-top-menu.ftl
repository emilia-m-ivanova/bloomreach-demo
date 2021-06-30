<#include "../include/imports.ftl">

<#--<ul class="navigation" id="main-navigation">-->
<#--    <li><a href="index.html" class="activelink"><span class="label-nav">Home</span> </a></li>-->
<#--    <li><a href="news.html"><span class="label-nav">News</span></a></li>-->
<#--    <li><a href="blogs.html"><span class="label-nav">Blogs</span></a></li>-->
<#--    <li><a href="events.html"><span class="label-nav">Events</span></a></li>-->
<#--    <li><a href="products.html"><span class="label-nav">Products</span></a></li>-->
<#--    <li><a href="about.html"><span class="label-nav">About</span></a></li>-->
<#--</ul>-->

<#include "../include/imports.ftl">
<#if menu??>
    <#if menu.siteMenuItems??>
        <nav>
            <ul class="navigation" id="main-navigation">
                <#list menu.siteMenuItems as item>
                    <#if item.selected || item.expanded>
                        <li><a href="<@hst.link link=item.hstLink/>" class="activelink"><span class="label-nav">${item.name?html}</span> </a></li>
                    <#else>
                        <li><a href="<@hst.link link=item.hstLink/>"><span class="label-nav">${item.name?html}</span></a></li>
                    </#if>
                </#list>
            </ul>
        </nav>
    </#if>
    <@hst.cmseditmenu menu=menu/>
<#else>
    <#if editMode>
        <h5>[Menu Component]</h5>
        <sub>Click to edit Menu</sub>
    </#if>
</#if>