.class synthetic Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$13;
.super Ljava/lang/Object;
.source "OfflinePlayableImpl.java"


# static fields
.field static final synthetic $SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$DownloadState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1117
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$13;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$DownloadState:[I

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$13;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$DownloadState:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->InProgress:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
