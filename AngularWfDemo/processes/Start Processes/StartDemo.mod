[Ivy]
161426C657DA19BE 3.20 #module
>Proto >Proto Collection #zClass
So0 StartDemo Big #zClass
So0 B #cInfo
So0 #process
So0 @TextInP .resExport .resExport #zField
So0 @TextInP .type .type #zField
So0 @TextInP .processKind .processKind #zField
So0 @AnnotationInP-0n ai ai #zField
So0 @MessageFlowInP-0n messageIn messageIn #zField
So0 @MessageFlowOutP-0n messageOut messageOut #zField
So0 @TextInP .xml .xml #zField
So0 @TextInP .responsibility .responsibility #zField
So0 @StartRequest f0 '' #zField
So0 @EndRequest f3 '' #zField
So0 @PushWFArc f1 '' #zField
>Proto So0 So0 StartDemo #zField
So0 f0 outLink start.ivp #txt
So0 f0 type com.axonivy.ivy.angularwfdemo.Data #txt
So0 f0 inParamDecl '<> param;' #txt
So0 f0 actionDecl 'com.axonivy.ivy.angularwfdemo.Data out;
' #txt
So0 f0 guid 161426C666BEF9DD #txt
So0 f0 requestEnabled true #txt
So0 f0 triggerEnabled false #txt
So0 f0 callSignature start() #txt
So0 f0 caseData businessCase.attach=true #txt
So0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
So0 f0 @C|.responsibility Everybody #txt
So0 f0 81 49 30 30 -21 17 #rect
So0 f0 @|StartRequestIcon #fIcon
So0 f3 type com.axonivy.ivy.angularwfdemo.Data #txt
So0 f3 template "angular\\index.html" #txt
So0 f3 337 49 30 30 0 15 #rect
So0 f3 @|EndRequestIcon #fIcon
So0 f1 expr out #txt
So0 f1 111 64 337 64 #arcP
>Proto So0 .type com.axonivy.ivy.angularwfdemo.Data #txt
>Proto So0 .processKind NORMAL #txt
>Proto So0 0 0 32 24 18 0 #rect
>Proto So0 @|BIcon #fIcon
So0 f0 mainOut f1 tail #connect
So0 f1 head f3 mainIn #connect
