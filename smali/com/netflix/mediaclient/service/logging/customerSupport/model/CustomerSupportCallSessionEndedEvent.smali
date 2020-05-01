.class public Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "CustomerSupportCallSessionEndedEvent.java"


# static fields
.field public static final CALL_QUALITY:Ljava/lang/String; = "callQuality"

.field public static final CONNECTION_TIME:Ljava/lang/String; = "connectionTime"

.field public static final DIAL_CONFIRMATION_SCREEN_DISPLAYED:Ljava/lang/String; = "dialConfirmationDialogDisplayed"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final REASON:Ljava/lang/String; = "reason"

.field private static final SESSION_NAME:Ljava/lang/String; = "customerSupportCall"

.field public static final SHARED_SESSION_UUID:Ljava/lang/String; = "sessionID"

.field public static final TERMINATION_REASON:Ljava/lang/String; = "terminationReason"


# instance fields
.field private mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

.field private mConnectionTimeInSec:I

.field private mDialConfirmationDialogDisplayed:Z

.field private mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

.field private mSharedSessionId:Ljava/lang/String;

.field private mStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;",
            ">;"
        }
    .end annotation
.end field

.field private mTerminationReason:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;ILcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 6

    .prologue
    .line 64
    const-string/jumbo v0, "customerSupportCall"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->getStarted()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 65
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mTerminationReason:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 66
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 67
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    .line 68
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->category:Ljava/lang/String;

    .line 69
    iput p2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mConnectionTimeInSec:I

    .line 70
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->getQualityStates()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mStates:Ljava/util/List;

    .line 71
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->getSharedSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mSharedSessionId:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->isDialConfirmationDialogDisplayed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mDialConfirmationDialogDisplayed:Z

    .line 73
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 83
    if-nez v0, :cond_5

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mTerminationReason:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    if-eqz v0, :cond_0

    .line 88
    const-string/jumbo v0, "terminationReason"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mTerminationReason:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    if-eqz v0, :cond_1

    .line 92
    const-string/jumbo v0, "reason"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    if-eqz v0, :cond_2

    .line 95
    const-string/jumbo v0, "error"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    :cond_2
    const-string/jumbo v0, "connectionTime"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mConnectionTimeInSec:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v0, "dialConfirmationDialogDisplayed"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mDialConfirmationDialogDisplayed:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mSharedSessionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    const-string/jumbo v0, "sessionID"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mSharedSessionId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mStates:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 105
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 106
    const-string/jumbo v0, "callQuality"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;->mStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;

    .line 108
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 112
    :cond_4
    return-object v1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method
