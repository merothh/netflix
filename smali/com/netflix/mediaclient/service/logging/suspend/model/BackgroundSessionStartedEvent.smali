.class public Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "BackgroundSessionStartedEvent.java"


# static fields
.field private static final SESSION_NAME:Ljava/lang/String; = "background"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "background"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method
