.class public Lcom/netflix/mediaclient/event/nrdp/device/NetworkConnectionLost;
.super Lcom/netflix/mediaclient/event/nrdp/device/BaseDeviceEvent;
.source "NetworkConnectionLost.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "networkconnectionlost"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "networkconnectionlost"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/event/nrdp/device/BaseDeviceEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/device/NetworkConnectionLost;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
