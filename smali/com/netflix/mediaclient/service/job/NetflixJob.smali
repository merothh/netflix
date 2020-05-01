.class public Lcom/netflix/mediaclient/service/job/NetflixJob;
.super Ljava/lang/Object;
.source "NetflixJob.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_netflix_job"


# instance fields
.field private mMinimumDelay:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minimumDelay"
    .end annotation
.end field

.field private transient mNetflixJobId:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field private final mNetflixJobIdValue:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field

.field private final mRepeating:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRepeating"
    .end annotation
.end field

.field private final mRepeatingPeriodInMs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "repeatingPeriodMs"
    .end annotation
.end field

.field private final mRequiresCharging:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requiresCharging"
    .end annotation
.end field

.field private final mRequiresIdle:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requiresIdle"
    .end annotation
.end field

.field private final mRequiresUnmeteredConnection:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requiresUnmeteredNetwork"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZ)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mNetflixJobId:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 91
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresUnmeteredConnection:Z

    .line 92
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRepeating:Z

    .line 93
    iput-wide p4, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRepeatingPeriodInMs:J

    .line 94
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mNetflixJobIdValue:I

    .line 95
    iput-boolean p6, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresCharging:Z

    .line 96
    iput-boolean p7, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresIdle:Z

    .line 97
    return-void
.end method

.method public static buildDownloadMaintenanceJob(ZJ)Lcom/netflix/mediaclient/service/job/NetflixJob;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 101
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v3, 0x1

    move v2, p0

    move-wide v4, p1

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/job/NetflixJob;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZ)V

    return-object v0
.end method

.method public static buildDownloadResumeJob(Z)Lcom/netflix/mediaclient/service/job/NetflixJob;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 108
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_RESUME:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const-wide/16 v4, 0x0

    move v2, p0

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/job/NetflixJob;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZ)V

    return-object v0
.end method

.method public static buildPrefetchLolomoJob(ZZJZZ)Lcom/netflix/mediaclient/service/job/NetflixJob;
    .locals 8

    .prologue
    .line 118
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->FALKOR_METADATA:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/job/NetflixJob;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZ)V

    return-object v0
.end method


# virtual methods
.method public canExecute(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->canExecuteByNetwork(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public canExecuteByNetwork(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    .line 155
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 156
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v2

    .line 157
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    const-string/jumbo v3, "nf_netflix_job"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "canExecute netType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    if-eqz v2, :cond_4

    .line 161
    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresUnmeteredConnection:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->mobile:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-eq v2, v3, :cond_3

    :cond_1
    :goto_0
    move v1, v0

    .line 170
    :cond_2
    :goto_1
    return v1

    :cond_3
    move v0, v1

    .line 161
    goto :goto_0

    :cond_4
    move v0, v1

    .line 163
    goto :goto_0

    .line 166
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    const-string/jumbo v0, "nf_netflix_job"

    const-string/jumbo v2, "isConnectedOrConnecting false"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getMinimumDelay()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mMinimumDelay:J

    return-wide v0
.end method

.method public getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mNetflixJobId:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    if-nez v0, :cond_0

    .line 123
    iget v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mNetflixJobIdValue:I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getJobIdByValue(I)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mNetflixJobId:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mNetflixJobId:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    return-object v0
.end method

.method public getRepeatingPeriodInMs()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRepeatingPeriodInMs:J

    return-wide v0
.end method

.method public getRequiresCharging()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresCharging:Z

    return v0
.end method

.method public getRequiresIdle()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresIdle:Z

    return v0
.end method

.method public isRepeating()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRepeating:Z

    return v0
.end method

.method public isRequiresUnmeteredConnection()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresUnmeteredConnection:Z

    return v0
.end method

.method public setMinimumDelay(J)V
    .locals 3

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRepeating:Z

    if-eqz v0, :cond_0

    .line 52
    const-string/jumbo v0, "nf_netflix_job"

    const-string/jumbo v1, "Error, setting minimum delay on a repeating job."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mMinimumDelay:J

    goto :goto_0
.end method
