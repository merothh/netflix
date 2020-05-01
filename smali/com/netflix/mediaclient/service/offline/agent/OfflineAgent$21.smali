.class synthetic Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$21;
.super Ljava/lang/Object;
.source "OfflineAgent.java"


# static fields
.field static final synthetic $SwitchMap$com$netflix$mediaclient$service$job$NetflixJob$NetflixJobId:[I

.field static final synthetic $SwitchMap$com$netflix$mediaclient$service$offline$agent$IntentCommandGroupType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1338
    invoke-static {}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->values()[Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$21;->$SwitchMap$com$netflix$mediaclient$service$job$NetflixJob$NetflixJobId:[I

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$21;->$SwitchMap$com$netflix$mediaclient$service$job$NetflixJob$NetflixJobId:[I

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_RESUME:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$21;->$SwitchMap$com$netflix$mediaclient$service$job$NetflixJob$NetflixJobId:[I

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 1171
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->values()[Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$21;->$SwitchMap$com$netflix$mediaclient$service$offline$agent$IntentCommandGroupType:[I

    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$21;->$SwitchMap$com$netflix$mediaclient$service$offline$agent$IntentCommandGroupType:[I

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->DownloadNotification:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    .line 1338
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
