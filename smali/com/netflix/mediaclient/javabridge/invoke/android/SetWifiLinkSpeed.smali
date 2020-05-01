.class public Lcom/netflix/mediaclient/javabridge/invoke/android/SetWifiLinkSpeed;
.super Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;
.source "SetWifiLinkSpeed.java"


# static fields
.field private static final METHOD:Ljava/lang/String; = "setWifiLinkSpeed"

.field private static final PROPERTY_WIFI_LINKSPEED:Ljava/lang/String; = "wifi_linkspeed"

.field private static final PROPERTY_WIFI_SIGNALSTRENGTH:Ljava/lang/String; = "wifi_signalstrength"

.field private static final TARGET:Ljava/lang/String; = "android"


# instance fields
.field mainWifi:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "android"

    const-string/jumbo v1, "setWifiLinkSpeed"

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/BaseInvoke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/SetWifiLinkSpeed;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetWifiLinkSpeed;->setArguments()V

    return-void
.end method

.method private setArguments()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/SetWifiLinkSpeed;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "wifi_linkspeed"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "wifi_signalstrength"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/SetWifiLinkSpeed;->arguments:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/invoke/android/SetWifiLinkSpeed;->arguments:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Failed to create JSON object"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "nf_invoke"

    const-string/jumbo v2, "Unable to Log WifiLinkSpeed "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
