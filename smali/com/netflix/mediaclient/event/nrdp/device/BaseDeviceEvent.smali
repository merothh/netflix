.class public abstract Lcom/netflix/mediaclient/event/nrdp/device/BaseDeviceEvent;
.super Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;
.source "BaseDeviceEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/event/nrdp/JsonBaseNccpEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "nrdp.device"

    return-object v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
