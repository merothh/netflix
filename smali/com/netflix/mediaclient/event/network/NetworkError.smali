.class public Lcom/netflix/mediaclient/event/network/NetworkError;
.super Lcom/netflix/mediaclient/event/nrdp/media/NccpError;
.source "NetworkError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;-><init>()V

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "nrdp.android"

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
