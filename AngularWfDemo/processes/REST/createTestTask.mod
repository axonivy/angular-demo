[Ivy]
1614CC1E96512AEA 3.20 #module
>Proto >Proto Collection #zClass
ck0 createTestTask Big #zClass
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
ck0 @StartRequest f0 '' #zField
ck0 @EndTask f1 '' #zField
ck0 @RichDialog f3 '' #zField
ck0 @PushWFArc f4 '' #zField
ck0 @PushWFArc f2 '' #zField
>Proto ck0 ck0 createTestTask #zField
ck0 f0 outLink createTestTask.ivp #txt
ck0 f0 type com.axonivy.ivy.angularwfdemo.rest.CreateTaskData #txt
ck0 f0 inParamDecl '<java.lang.String taskDescription,java.lang.String taskName> param;' #txt
ck0 f0 inParamTable 'out.taskDescription=param.taskDescription;
out.taskName=param.taskName;
' #txt
ck0 f0 actionDecl 'com.axonivy.ivy.angularwfdemo.rest.CreateTaskData out;
' #txt
ck0 f0 guid 1614CC1E9652FC19 #txt
ck0 f0 requestEnabled false #txt
ck0 f0 triggerEnabled true #txt
ck0 f0 callSignature createTestTask(String,String) #txt
ck0 f0 persist false #txt
ck0 f0 startName createTestTask #txt
ck0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody
TaskTriggered.NAM=<%\=param.taskName%> Task
TaskTriggered.DESC=<%\=param.taskDescription%>' #txt
ck0 f0 caseData businessCase.attach=true #txt
ck0 f0 showInStartList 1 #txt
ck0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createTestTask(String,String)</name>
    </language>
</elementInfo>
' #txt
ck0 f0 @C|.responsibility Everybody #txt
ck0 f0 81 49 30 30 -80 17 #rect
ck0 f0 @|StartRequestIcon #fIcon
ck0 f1 type com.axonivy.ivy.angularwfdemo.rest.CreateTaskData #txt
ck0 f1 337 49 30 30 0 15 #rect
ck0 f1 @|EndIcon #fIcon
ck0 f3 targetWindow NEW #txt
ck0 f3 targetDisplay TOP #txt
ck0 f3 richDialogId com.axonivy.ivy.angularwfdemo.EnterData #txt
ck0 f3 startMethod start(String,String) #txt
ck0 f3 type com.axonivy.ivy.angularwfdemo.rest.CreateTaskData #txt
ck0 f3 requestActionDecl '<String name, String country> param;' #txt
ck0 f3 responseActionDecl 'com.axonivy.ivy.angularwfdemo.rest.CreateTaskData out;
' #txt
ck0 f3 responseMappingAction 'out=in;
' #txt
ck0 f3 isAsynch false #txt
ck0 f3 isInnerRd false #txt
ck0 f3 userContext '* ' #txt
ck0 f3 168 42 112 44 0 -8 #rect
ck0 f3 @|RichDialogIcon #fIcon
ck0 f4 expr out #txt
ck0 f4 111 64 168 64 #arcP
ck0 f2 expr out #txt
ck0 f2 280 64 337 64 #arcP
>Proto ck0 .type com.axonivy.ivy.angularwfdemo.rest.CreateTaskData #txt
>Proto ck0 .processKind NORMAL #txt
>Proto ck0 0 0 32 24 18 0 #rect
>Proto ck0 @|BIcon #fIcon
ck0 f0 mainOut f4 tail #connect
ck0 f4 head f3 mainIn #connect
ck0 f3 mainOut f2 tail #connect
ck0 f2 head f1 mainIn #connect
