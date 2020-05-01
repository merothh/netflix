.class public final Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;
.super Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;
.source "UIStartupSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "uiStartup"


# instance fields
.field private mActiveABTests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomData:Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

.field private mDeepLink:Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

.field private mDestination:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

.field private mDisplay:Lcom/netflix/mediaclient/service/logging/apm/model/Display;

.field private mSearchTerm:Ljava/lang/String;

.field private mTrackId:I

.field private mTrigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;ILjava/lang/String;Ljava/util/Map;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/netflix/mediaclient/service/logging/apm/model/Display;",
            "Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;",
            "Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;-><init>(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 47
    iput p3, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mTrackId:I

    .line 48
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mSearchTerm:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mActiveABTests:Ljava/util/Map;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mTrigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    .line 39
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mDestination:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 40
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mDisplay:Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    .line 41
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mDeepLink:Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    .line 42
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mCustomData:Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    .line 43
    return-void
.end method


# virtual methods
.method public createEndedEvent(ZLcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/media/PlayerType;)Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;
    .locals 10

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mStarted:J

    sub-long v2, v0, v2

    .line 63
    new-instance v1, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mTrigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mDestination:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v8, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mDeepLink:Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    iget-object v9, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mCustomData:Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    move v6, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;-><init>(JLcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;ZLcom/netflix/mediaclient/media/PlayerType;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 64
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mTrackId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->setTrackId(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mActiveABTests:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->setActiveABTests(Ljava/util/Map;)V

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mSearchTerm:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->setSearchTerm(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->setError(Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mDisplay:Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIStartupSessionEndedEvent;->setDisplay(Lcom/netflix/mediaclient/service/logging/apm/model/Display;)V

    .line 70
    return-object v1
.end method

.method public getActiveABTests()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mActiveABTests:Ljava/util/Map;

    return-object v0
.end method

.method public getDestination()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mDestination:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "uiStartup"

    return-object v0
.end method

.method public getSearchTerm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mSearchTerm:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mTrackId:I

    return v0
.end method

.method public getTrigger()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mTrigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    return-object v0
.end method

.method public setActiveABTests(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mActiveABTests:Ljava/util/Map;

    .line 163
    return-void
.end method

.method public setDestination(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mDestination:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 109
    return-void
.end method

.method public setSearchTerm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mSearchTerm:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setTrackId(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mTrackId:I

    .line 127
    return-void
.end method

.method public setTrigger(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/UIStartupSession;->mTrigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    .line 91
    return-void
.end method
