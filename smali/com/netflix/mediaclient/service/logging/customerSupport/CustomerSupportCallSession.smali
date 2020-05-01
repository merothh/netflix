.class public final Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;
.super Lcom/netflix/mediaclient/service/logging/customerSupport/BaseCustomerSupportSession;
.source "CustomerSupportCallSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "customerSupportCall"

.field private static final TAG:Ljava/lang/String; = "customerSupportCall"


# instance fields
.field private mCallConnectedTimeInMs:J

.field private mCallStartedTimeInMs:J

.field private mCurrentCallQuality:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

.field private mCurrentCallQualitySegmentStartTimeInMs:J

.field private mDialConfirmationDialogDisplayed:Z

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


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/customerSupport/BaseCustomerSupportSession;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mStates:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCallStartedTimeInMs:J

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mSharedSessionId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mDialConfirmationDialogDisplayed:Z

    return-void
.end method

.method private addCurrentQualitySegment()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQualitySegmentStartTimeInMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQuality:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "customerSupportCall"

    const-string/jumbo v3, "Call connected did not called yet!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQualitySegmentStartTimeInMs:J

    :goto_0
    return-void

    :cond_1
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQualitySegmentStartTimeInMs:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    new-instance v3, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQuality:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    invoke-direct {v3, v2, v4}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;-><init>(ILcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mStates:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQualitySegmentStartTimeInMs:J

    goto :goto_0
.end method


# virtual methods
.method public callConnected(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "customerSupportCall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "callConnected:: Sets call quality to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCallConnectedTimeInMs:J

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQualitySegmentStartTimeInMs:J

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQuality:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    return-void
.end method

.method public createCustomerSupportCallSessionEndedEvent(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;
    .locals 6

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->addCurrentQualitySegment()V

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCallConnectedTimeInMs:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCallStartedTimeInMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v2, v0

    if-gez v2, :cond_0

    const/4 v2, 0x0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByUserAfterConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByUserBeforeConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    move-object v3, p1

    :goto_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/customerSupport/model/CustomerSupportCallSessionEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;ILcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    return-object v0

    :cond_0
    move-object v3, p1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "customerSupportCall"

    return-object v0
.end method

.method public getQualityStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession$CallQualitySegment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mStates:Ljava/util/List;

    return-object v0
.end method

.method public getSharedSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mSharedSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public isDialConfirmationDialogDisplayed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mDialConfirmationDialogDisplayed:Z

    return v0
.end method

.method public setCallQuality(Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "customerSupportCall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCallQuality:: Sets call quality to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQuality:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    if-ne v0, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->addCurrentQualitySegment()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/customerSupport/CustomerSupportCallSession;->mCurrentCallQuality:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    goto :goto_0
.end method
