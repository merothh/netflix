.class final Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "DownloadGeoPlayabilityHelper.java"


# instance fields
.field final synthetic val$geoPlayabilityCallBack:Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$GeoPlayabilityCallBack;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$GeoPlayabilityCallBack;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1;->val$geoPlayabilityCallBack:Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$GeoPlayabilityCallBack;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflineGeoPlayabilityReceived(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string/jumbo v0, "nf_downloadGeoPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOfflineGeoPlayabilityReceived res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$1;->val$geoPlayabilityCallBack:Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$GeoPlayabilityCallBack;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadGeoPlayabilityHelper$GeoPlayabilityCallBack;->onGeoPlayabilityResponse(Ljava/util/Map;)V

    .line 49
    return-void
.end method
