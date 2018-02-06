[Ivy]
1616AE8CAEE47822 3.20 #module
>Proto >Proto Collection #zClass
ce0 currentUserService Big #zClass
ce0 B #cInfo
ce0 #process
ce0 @TextInP .resExport .resExport #zField
ce0 @TextInP .type .type #zField
ce0 @TextInP .processKind .processKind #zField
ce0 @AnnotationInP-0n ai ai #zField
ce0 @MessageFlowInP-0n messageIn messageIn #zField
ce0 @MessageFlowOutP-0n messageOut messageOut #zField
ce0 @TextInP .xml .xml #zField
ce0 @TextInP .responsibility .responsibility #zField
ce0 @StartSub f0 '' #zField
ce0 @EndSub f1 '' #zField
ce0 @GridStep f3 '' #zField
ce0 @PushWFArc f4 '' #zField
ce0 @PushWFArc f2 '' #zField
>Proto ce0 ce0 currentUserService #zField
ce0 f0 inParamDecl '<> param;' #txt
ce0 f0 outParamDecl '<ch.ivyteam.ivy.security.IUser user> result;
' #txt
ce0 f0 outParamTable 'result.user=in.user;
' #txt
ce0 f0 actionDecl 'REST.currentUserServiceData out;
' #txt
ce0 f0 callSignature call() #txt
ce0 f0 type REST.currentUserServiceData #txt
ce0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call()</name>
        <nameStyle>6,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ce0 f0 81 49 30 30 -13 17 #rect
ce0 f0 @|StartSubIcon #fIcon
ce0 f1 type REST.currentUserServiceData #txt
ce0 f1 337 49 30 30 0 15 #rect
ce0 f1 @|EndSubIcon #fIcon
ce0 f3 actionDecl 'REST.currentUserServiceData out;
' #txt
ce0 f3 actionTable 'out=in;
out.user=ivy.session.getSessionUser();
' #txt
ce0 f3 type REST.currentUserServiceData #txt
ce0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get information
about current user</name>
        <nameStyle>34,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ce0 f3 160 42 128 44 -45 -16 #rect
ce0 f3 @|StepIcon #fIcon
ce0 f4 expr out #txt
ce0 f4 111 64 160 64 #arcP
ce0 f2 expr out #txt
ce0 f2 288 64 337 64 #arcP
>Proto ce0 .type REST.currentUserServiceData #txt
>Proto ce0 .processKind CALLABLE_SUB #txt
>Proto ce0 0 0 32 24 18 0 #rect
>Proto ce0 @|BIcon #fIcon
ce0 f0 mainOut f4 tail #connect
ce0 f4 head f3 mainIn #connect
ce0 f3 mainOut f2 tail #connect
ce0 f2 head f1 mainIn #connect
