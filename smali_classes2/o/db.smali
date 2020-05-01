.class abstract Lo/db;
.super Lo/dh;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/db$TaskDescription;
    }
.end annotation


# instance fields
.field protected d:Lorg/chromium/net/CronetEngine;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;Lo/dl;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lo/dh;-><init>(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;Lo/dl;)V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lo/db;->d:Lorg/chromium/net/CronetEngine;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lo/db;->d:Lorg/chromium/net/CronetEngine;

    invoke-virtual {v0}, Lorg/chromium/net/CronetEngine;->shutdown()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lo/db;->d:Lorg/chromium/net/CronetEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lo/db;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/db;->b()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized d()V
    .locals 4

    monitor-enter p0

    .line 33
    :try_start_0
    new-instance v0, Lorg/chromium/net/CronetEngine$Builder;

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/net/CronetEngine$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/net/CronetEngine$Builder;->enableHttpCache(IJ)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Lorg/chromium/net/CronetEngine$Builder;->enableHttp2(Z)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lorg/chromium/net/CronetEngine$Builder;->build()Lorg/chromium/net/CronetEngine;

    move-result-object v0

    .line 39
    iput-object v0, p0, Lo/db;->d:Lorg/chromium/net/CronetEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
