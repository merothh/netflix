.class public abstract Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;
.super Ljava/lang/Object;
.source "SimpleBladeRunnerWebCallback.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onLicenseDeactivated(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public onLicenseFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method public onLinkDone(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public onManifestsFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 10
    return-void
.end method

.method public onOfflineLicenseFetched(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public onPdsEventSent(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;JLorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public onPdsSessionStart(Lcom/netflix/mediaclient/android/app/Status;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public onSyncDone(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
