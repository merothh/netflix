.class public Lcom/netflix/mediaclient/service/logging/apm/model/WifiNetworkConnectionSessionStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "WifiNetworkConnectionSessionStartedEvent.java"


# static fields
.field private static final NETWORK_CONNECTION_SESSION_NAME:Ljava/lang/String; = "wifiNetworkConnection"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "wifiNetworkConnection"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method
