.class public Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundingSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "BackgroundingSessionEndedEvent.java"


# static fields
.field private static final SESSION_NAME:Ljava/lang/String; = "backgrounding"


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const-string/jumbo v0, "backgrounding"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundingSessionEndedEvent;->duration:J

    return-void
.end method
