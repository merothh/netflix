.class public Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "BackgroundSessionEndedEvent.java"


# static fields
.field private static final SESSION_NAME:Ljava/lang/String; = "background"


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const-string/jumbo v0, "background"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionEndedEvent;->duration:J

    return-void
.end method
