.class public Lcom/netflix/mediaclient/event/nrdp/device/ReasonCode;
.super Lcom/netflix/mediaclient/event/nrdp/device/BaseDeviceEvent;
.source "ReasonCode.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "nrdp-webapi-nccpreasoncode"


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "nrdp-webapi-nccpreasoncode"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/event/nrdp/device/BaseDeviceEvent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/event/nrdp/device/ReasonCode;->json:Lorg/json/JSONObject;

    :try_start_0
    const-string/jumbo v0, "type"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/event/nrdp/device/ReasonCode;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
