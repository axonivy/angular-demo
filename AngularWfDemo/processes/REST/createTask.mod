[Ivy]
1614CBFAAD0B8698 3.20 #module
>Proto >Proto Collection #zClass
ck0 createTask Big #zClass
ck0 B #cInfo
ck0 #process
ck0 @TextInP .resExport .resExport #zField
ck0 @TextInP .type .type #zField
ck0 @TextInP .processKind .processKind #zField
ck0 @AnnotationInP-0n ai ai #zField
ck0 @MessageFlowInP-0n messageIn messageIn #zField
ck0 @MessageFlowOutP-0n messageOut messageOut #zField
ck0 @TextInP .xml .xml #zField
ck0 @TextInP .responsibility .responsibility #zField
ck0 @StartSub f0 '' #zField
ck0 @EndSub f1 '' #zField
ck0 @Trigger f3 '' #zField
ck0 @PushWFArc f4 '' #zField
ck0 @PushWFArc f2 '' #zField
>Proto ck0 ck0 createTask #zField
ck0 f0 inParamDecl '<java.lang.String taskDescription,java.lang.String taskName> param;' #txt
ck0 f0 inParamTable 'out.taskDescription=param.taskDescription;
out.taskName=param.taskName;
' #txt
ck0 f0 outParamDecl '<ch.ivyteam.ivy.workflow.ITask createdTask> result;
' #txt
ck0 f0 outParamTable 'result.createdTask=in.createdTask;
' #txt
ck0 f0 actionDecl 'com.axonivy.ivy.angularwfdemo.rest.CreateTaskData out;
' #txt
ck0 f0 callSignature call(String,String) #txt
ck0 f0 type com.axonivy.ivy.angularwfdemo.rest.CreateTaskData #txt
ck0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(String,String)</name>
        <nameStyle>19,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ck0 f0 81 49 30 30 -47 17 #rect
ck0 f0 @|StartSubIcon #fIcon
ck0 f1 type com.axonivy.ivy.angularwfdemo.rest.CreateTaskData #txt
ck0 f1 337 49 30 30 0 15 #rect
ck0 f1 @|EndSubIcon #fIcon
ck0 f3 type com.axonivy.ivy.angularwfdemo.rest.CreateTaskData #txt
ck0 f3 processCall REST/createTestTask:createTestTask(String,String) #txt
ck0 f3 doCall true #txt
ck0 f3 requestActionDecl '<java.lang.String taskDescription,java.lang.String taskName> param;
' #txt
ck0 f3 requestMappingAction 'param.taskDescription=in.taskDescription;
param.taskName=in.taskName;
' #txt
ck0 f3 responseActionDecl 'com.axonivy.ivy.angularwfdemo.rest.CreateTaskData out;
' #txt
ck0 f3 responseMappingAction 'out=in;
out.createdTask=triggeredTask;
' #txt
ck0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createTestTask</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
ck0 f3 168 42 112 44 -42 -8 #rect
ck0 f3 @|TriggerIcon #fIcon
ck0 f4 expr out #txt
ck0 f4 111 64 168 64 #arcP
ck0 f2 expr out #txt
ck0 f2 280 64 337 64 #arcP
>Proto ck0 .type com.axonivy.ivy.angularwfdemo.rest.CreateTaskData #txt
>Proto ck0 .processKind CALLABLE_SUB #txt
>Proto ck0 0 0 32 24 18 0 #rect
>Proto ck0 @|BIcon #fIcon
ck0 f0 mainOut f4 tail #connect
ck0 f4 head f3 mainIn #connect
ck0 f3 mainOut f2 tail #connect
ck0 f2 head f1 mainIn #connect
