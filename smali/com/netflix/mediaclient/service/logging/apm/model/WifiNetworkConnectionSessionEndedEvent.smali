.class public Lcom/netflix/mediaclient/service/logging/apm/model/WifiNetworkConnectionSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "WifiNetworkConnectionSessionEndedEvent.java"


# static fields
.field private static final NETWORK_CONNECTION_SESSION_NAME:Ljava/lang/String; = "wifiNetworkConnection"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V
    .locals 2

    const-string/jumbo v0, "wifiNetworkConnection"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method
