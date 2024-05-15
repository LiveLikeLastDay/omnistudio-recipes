# Salesforce OmniStudio(Vlocity) recipes

[YouTube playlist](https://www.youtube.com/playlist?list=PL_7QTUl9lWwCE2_t-HGSKiaBBgbDdrLys) for some of recipes listed here.

## Collapse in FlexCard

This [sample](source/omnistudio/main/default/omniUiCard/CarSummary_ApexForcePtyLtd_1.ouc-meta.xml) shows how to collapse whole FlexCard using the 'set value' action.

This can be useful if you use FlexCard in OmniScript as summary.

![FlexCard-CarSummary](document/img/FlexCard-CarSummary.png)

## Use DataRaptor as FlexCard Data Source

This [sample](source/omnistudio/main/default/omniUiCard/DRAsDataSource_ApexForcePtyLtd_1.ouc-meta.xml) shows how to use DataRaptor as FlexCard Data Source, and filter by an input map.

![UseDataRaptorAsFlexCardDataSource](document/img/UseDataRaptorAsFlexCardDataSource.png)

## How to customize OmniStudio styles

This [sample](source/omnistudio/main/default/omniScripts/ApexForcePtyLtd_CarInsuranceQuote_English_2.os-meta.xml) shows how to use static resource to customize style in OmniStudio.

You can also use your CSS in text block.

![CustomOmniStudioStyle](document/img/CustomOmniStudioStyle.png)

## OmniStudio DML Handler

As OmniStudio is running in user mode, which is limited to access data in with sharing mode like Apex. This [sample apex](source/omnistudio/classes/OmniStudioDmlHandler.cls) and [sample OmniScript](source/omnistudio/main/default/omniScripts/ApexForcePtyLtd_CarInsuranceQuote_English_2.os-meta.xml) shows how to handle DML in user mode(with sharing) or system mode(without sharing).

It support dynamic fields and values.

Please note this code gaves you idea how to do it, but it's not something ready to use in your production enviroment.

![CustomOmniStudioStyle](document/img/OmniStudioDmlHandler.png)
