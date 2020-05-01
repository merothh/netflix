.class public Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;
.super Ljava/lang/Object;
.source "BandwidthDelayedBifDownload.java"


# static fields
.field private static DELAY_MULTIPLE:F

.field private static TAG:Ljava/lang/String;


# instance fields
.field private bufferingCompleteTimeInMs:J

.field private startTimeInMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "nf_bw_delayed_bif"

    sput-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->TAG:Ljava/lang/String;

    const/high16 v0, 0x40200000    # 2.5f

    sput v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->DELAY_MULTIPLE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->startTimeInMs:J

    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "BandwidthDelayedBifDownload - startTimeInMs :%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->startTimeInMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public shouldDownloadBif(Z)Z
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->bufferingCompleteTimeInMs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->bufferingCompleteTimeInMs:J

    sub-long/2addr v4, v6

    long-to-float v0, v4

    sget v3, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->DELAY_MULTIPLE:F

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->bufferingCompleteTimeInMs:J

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->startTimeInMs:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    mul-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    sget-object v3, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "download? %b -  bufferingTime:%d, waitedMs: %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->bufferingCompleteTimeInMs:J

    iget-wide v8, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->startTimeInMs:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->bufferingCompleteTimeInMs:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->bufferingCompleteTimeInMs:J

    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "bufferingComplete in ms:%d"

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->bufferingCompleteTimeInMs:J

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthDelayedBifDownload;->startTimeInMs:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v2

    goto :goto_1
.end method
