.class public Lo/ot;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ov;
.implements Lo/ol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ot$Activity;,
        Lo/ot$TaskDescription;,
        Lo/ot$Application;
    }
.end annotation


# instance fields
.field private a:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

.field private b:Lo/oE;

.field private final c:Lo/oC;

.field private final d:Landroid/os/HandlerThread;

.field private final e:Ljava/lang/String;

.field private final f:Lo/FragmentHostCallback;

.field private final g:Lo/oQ;

.field private final h:Lo/oL;

.field private final i:Ljava/io/File;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/oj;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

.field private l:Lo/ot$Activity;

.field private final m:Lo/oz;

.field private n:I

.field private final o:Lo/oF;

.field private final p:Landroid/content/Context;

.field private q:I

.field private final r:Lo/on;

.field private final s:Lo/oH;

.field private final t:Lo/ot$Application;

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/oC;Lo/oF;Ljava/lang/String;Lo/FragmentHostCallback;Lo/oQ;Lo/oL;Lo/oz;Landroid/os/HandlerThread;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lo/oH;)V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ot;->j:Ljava/util/List;

    .line 107
    new-instance v0, Lo/ot$Application;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ot$Application;-><init>(Lo/ot;Lo/ot$1;)V

    iput-object v0, p0, Lo/ot;->t:Lo/ot$Application;

    .line 129
    iput-object p1, p0, Lo/ot;->p:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lo/ot;->c:Lo/oC;

    .line 131
    iput-object p3, p0, Lo/ot;->o:Lo/oF;

    .line 132
    iput-object p4, p0, Lo/ot;->e:Ljava/lang/String;

    .line 133
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/ot;->i:Ljava/io/File;

    .line 134
    iput-object p5, p0, Lo/ot;->f:Lo/FragmentHostCallback;

    .line 135
    iput-object p6, p0, Lo/ot;->g:Lo/oQ;

    .line 136
    iput-object p7, p0, Lo/ot;->h:Lo/oL;

    .line 137
    iput-object p8, p0, Lo/ot;->m:Lo/oz;

    .line 138
    new-instance p1, Lo/ot$Activity;

    invoke-virtual {p9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lo/ot$Activity;-><init>(Lo/ot;Landroid/os/Looper;)V

    iput-object p1, p0, Lo/ot;->l:Lo/ot$Activity;

    .line 139
    iput-object p9, p0, Lo/ot;->d:Landroid/os/HandlerThread;

    .line 140
    iput-object p10, p0, Lo/ot;->k:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 141
    new-instance p1, Lo/on;

    invoke-direct {p1}, Lo/on;-><init>()V

    iput-object p1, p0, Lo/ot;->r:Lo/on;

    .line 142
    iput-object p11, p0, Lo/ot;->s:Lo/oH;

    .line 144
    iget-object p1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {p1}, Lo/oC;->w()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const-string p3, "nf_offlinePlayable"

    if-ne p1, p2, :cond_0

    const-string p1, "OfflinePlayableImpl constructor marking item stopped"

    .line 145
    invoke-static {p3, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p1, p0, Lo/ot;->c:Lo/oC;

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-interface {p1, p2}, Lo/oC;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    :cond_0
    const/4 p1, 0x0

    .line 150
    iget-object p2, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {p2}, Lo/oC;->w()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object p2

    sget-object p4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne p2, p4, :cond_1

    iget-object p2, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {p2}, Lo/oC;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object p2

    sget-object p4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->l:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-eq p2, p4, :cond_2

    .line 151
    :cond_1
    invoke-virtual {p0}, Lo/ot;->G()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p2

    sget-object p4, Lcom/netflix/mediaclient/StatusCode;->bl:Lcom/netflix/mediaclient/StatusCode;

    if-ne p2, p4, :cond_3

    :cond_2
    const/4 p1, 0x1

    :cond_3
    if-nez p1, :cond_4

    .line 155
    invoke-direct {p0}, Lo/ot;->U()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "OfflinePlayableImpl checkAllDownloadablesExists false"

    .line 156
    invoke-static {p3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p1, p0, Lo/ot;->c:Lo/oC;

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-interface {p1, p2}, Lo/oC;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 158
    iget-object p1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {p1}, Lo/oC;->o()V

    .line 163
    :cond_4
    invoke-direct {p0}, Lo/ot;->X()V

    .line 164
    iget-object p1, p0, Lo/ot;->g:Lo/oQ;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lo/ot;->h:Lo/oL;

    if-eqz p1, :cond_5

    return-void

    .line 165
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "mOfflineManifestManager or mOfflineLicenseManager can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private H()V
    .locals 4

    .line 174
    iget-object v0, p0, Lo/ot;->l:Lo/ot$Activity;

    iget-object v1, p0, Lo/ot;->t:Lo/ot$Application;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lo/ot$Activity;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private I()V
    .locals 2

    .line 170
    iget-object v0, p0, Lo/ot;->l:Lo/ot$Activity;

    iget-object v1, p0, Lo/ot;->t:Lo/ot$Application;

    invoke-virtual {v0, v1}, Lo/ot$Activity;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private J()V
    .locals 2

    .line 276
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->aO:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0, v1}, Lo/ot;->e(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method private K()V
    .locals 4

    .line 178
    iget-object v0, p0, Lo/ot;->l:Lo/ot$Activity;

    iget-object v1, p0, Lo/ot;->t:Lo/ot$Application;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lo/ot$Activity;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private L()V
    .locals 3

    .line 337
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->n:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0}, Lo/ot;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 338
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->n:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-interface {v0, v1}, Lo/oC;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 339
    iget-object v0, p0, Lo/ot;->m:Lo/oz;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->be:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {v0, p0, v1}, Lo/oz;->a(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private M()V
    .locals 3

    const/4 v0, 0x0

    .line 896
    iput v0, p0, Lo/ot;->n:I

    .line 897
    iput v0, p0, Lo/ot;->q:I

    .line 898
    iget-object v0, p0, Lo/ot;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/oj;

    .line 899
    invoke-virtual {v1}, Lo/oj;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 900
    iget v2, p0, Lo/ot;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lo/ot;->n:I

    .line 902
    :cond_1
    invoke-virtual {v1}, Lo/oj;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    iget v1, p0, Lo/ot;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/ot;->q:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private N()V
    .locals 2

    .line 254
    iget-object v0, p0, Lo/ot;->m:Lo/oz;

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p0, v1}, Lo/oz;->e(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private O()V
    .locals 7

    const-string v0, "nf_offlinePlayable"

    const-string v1, "refreshManifestFromServerAndContinue"

    .line 1169
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->z()Ljava/util/List;

    move-result-object v0

    .line 1171
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    iget-object v0, v0, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 1173
    iget-object v1, p0, Lo/ot;->g:Lo/oQ;

    iget-object v2, p0, Lo/ot;->c:Lo/oC;

    iget-object v3, p0, Lo/ot;->e:Ljava/lang/String;

    .line 1174
    invoke-interface {v2}, Lo/oC;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v5

    new-instance v6, Lo/ot$12;

    invoke-direct {v6, p0}, Lo/ot$12;-><init>(Lo/ot;)V

    .line 1173
    invoke-interface/range {v1 .. v6}, Lo/oQ;->a(Lo/or;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lo/oR;)V

    return-void
.end method

.method private P()Lcom/netflix/mediaclient/android/app/Status;
    .locals 2

    .line 1133
    iget-object v0, p0, Lo/ot;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1134
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object v0

    .line 1136
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->aV:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    return-object v0
.end method

.method private Q()V
    .locals 7

    const-string v0, "nf_offlinePlayable"

    const-string v1, "startCdnUrlDownloaders"

    .line 929
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v1, p0, Lo/ot;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/oj;

    .line 931
    invoke-virtual {v4}, Lo/oj;->d()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 932
    invoke-virtual {v4}, Lo/oj;->e()V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    new-array v5, v6, [Ljava/lang/Object;

    .line 935
    invoke-virtual {v4}, Lo/oj;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "download was complete downloadableId=%s"

    invoke-static {v0, v4, v5}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 939
    invoke-direct {p0}, Lo/ot;->I()V

    .line 940
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->p()V

    .line 941
    invoke-direct {p0}, Lo/ot;->H()V

    goto :goto_1

    :cond_2
    const-string v1, "startCdnUrlDownloaders not running progress watcher."

    .line 943
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private R()Ljava/lang/String;
    .locals 6

    .line 1127
    invoke-virtual {p0}, Lo/ot;->w()J

    move-result-wide v0

    invoke-virtual {p0}, Lo/ot;->x()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x17d7840

    add-long/2addr v0, v2

    .line 1128
    iget-object v2, p0, Lo/ot;->i:Ljava/io/File;

    invoke-static {v2}, Lo/adk;->e(Ljava/io/File;)J

    move-result-wide v2

    .line 1129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freeSpaceOnFileSystem="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " freeSpaceNeeded="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private S()Z
    .locals 6

    .line 1116
    invoke-virtual {p0}, Lo/ot;->w()J

    move-result-wide v0

    invoke-virtual {p0}, Lo/ot;->x()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x17d7840

    add-long/2addr v0, v2

    .line 1117
    iget-object v2, p0, Lo/ot;->i:Ljava/io/File;

    invoke-static {v2}, Lo/adk;->e(Ljava/io/File;)J

    move-result-wide v2

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 1119
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v4

    const-string v0, "nf_offlinePlayable"

    const-string v2, "hasEnoughFreeSpace freeSpaceNeeded=%d freeSpaceOnFileSystem=%d"

    invoke-static {v0, v2, v5}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    :cond_0
    return v4
.end method

.method private T()Z
    .locals 1

    .line 1336
    iget-object v0, p0, Lo/ot;->e:Ljava/lang/String;

    invoke-static {v0}, Lo/adE;->b(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private U()Z
    .locals 12

    .line 1202
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "nf_offlinePlayable"

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    .line 1203
    iget-object v8, p0, Lo/ot;->e:Ljava/lang/String;

    iget-object v9, v3, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    sget-object v10, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->d:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v8, v9, v10}, Lo/pi;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v8

    .line 1205
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v11, v9, v5

    if-nez v11, :cond_1

    goto :goto_1

    .line 1209
    :cond_1
    invoke-direct {p0, v3, v8}, Lo/ot;->e(Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "audio downloadable marking complete."

    .line 1210
    invoke-static {v4, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iput-boolean v1, v3, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mIsComplete:Z

    goto :goto_0

    .line 1207
    :cond_2
    :goto_1
    iput-boolean v7, v3, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mIsComplete:Z

    const/4 v2, 0x0

    goto :goto_0

    .line 1216
    :cond_3
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    .line 1217
    iget-object v8, p0, Lo/ot;->e:Ljava/lang/String;

    iget-object v9, v3, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    sget-object v10, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->a:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v8, v9, v10}, Lo/pi;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v8

    .line 1219
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v11, v9, v5

    if-nez v11, :cond_5

    goto :goto_3

    .line 1222
    :cond_5
    invoke-direct {p0, v3, v8}, Lo/ot;->e(Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "video downloadable marking complete."

    .line 1223
    invoke-static {v4, v8}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iput-boolean v1, v3, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mIsComplete:Z

    goto :goto_2

    .line 1221
    :cond_6
    :goto_3
    iput-boolean v7, v3, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mIsComplete:Z

    const/4 v2, 0x0

    goto :goto_2

    .line 1228
    :cond_7
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    .line 1229
    iget-object v8, p0, Lo/ot;->e:Ljava/lang/String;

    iget-object v9, v3, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    sget-object v10, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->b:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v8, v9, v10}, Lo/pi;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v8

    .line 1231
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v11, v9, v5

    if-nez v11, :cond_9

    goto :goto_5

    .line 1234
    :cond_9
    invoke-direct {p0, v3, v8}, Lo/ot;->e(Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "subtitle downloadable marking complete."

    .line 1235
    invoke-static {v4, v8}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    iput-boolean v1, v3, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mIsComplete:Z

    goto :goto_4

    .line 1233
    :cond_a
    :goto_5
    iput-boolean v7, v3, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mIsComplete:Z

    const/4 v2, 0x0

    goto :goto_4

    .line 1240
    :cond_b
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->E()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    .line 1241
    iget-object v8, p0, Lo/ot;->e:Ljava/lang/String;

    iget-object v9, v3, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    sget-object v10, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->e:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v8, v9, v10}, Lo/pi;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v8

    .line 1243
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v11, v9, v5

    if-nez v11, :cond_d

    goto :goto_7

    .line 1246
    :cond_d
    invoke-direct {p0, v3, v8}, Lo/ot;->e(Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "trickplay downloadable marking complete."

    .line 1247
    invoke-static {v4, v8}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iput-boolean v1, v3, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mIsComplete:Z

    goto :goto_6

    .line 1245
    :cond_e
    :goto_7
    iput-boolean v7, v3, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mIsComplete:Z

    const/4 v2, 0x0

    goto :goto_6

    :cond_f
    return v2
.end method

.method private V()V
    .locals 4

    .line 1321
    sget-object v0, Lo/ot$2;->b:[I

    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v1}, Lo/oC;->w()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1323
    :cond_0
    iget-object v0, p0, Lo/ot;->o:Lo/oF;

    invoke-virtual {v0}, Lo/oF;->e()V

    .line 1324
    invoke-direct {p0}, Lo/ot;->K()V

    .line 1325
    iget-object v0, p0, Lo/ot;->m:Lo/oz;

    invoke-interface {v0, p0}, Lo/oz;->e(Lo/ov;)V

    .line 1326
    invoke-direct {p0}, Lo/ot;->aa()V

    .line 1327
    sget-object v0, Lo/oa;->c:Lo/oa;

    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/oa;->d(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1332
    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lo/ot;->o:Lo/oF;

    invoke-virtual {v2}, Lo/oF;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "nf_offlinePlayable"

    const-string v2, "ProgressWatchRunnable playableId=%s PlayablePercentageProgress=%d"

    .line 1331
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private W()Z
    .locals 1

    .line 1611
    iget-boolean v0, p0, Lo/ot;->y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ot;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private X()V
    .locals 3

    .line 1256
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    .line 1258
    sget-object v2, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->d:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-direct {p0, v1, v2}, Lo/ot;->c(Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lo/om;

    goto :goto_0

    .line 1261
    :cond_0
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    .line 1263
    sget-object v2, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->a:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-direct {p0, v1, v2}, Lo/ot;->c(Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lo/om;

    goto :goto_1

    .line 1266
    :cond_1
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    .line 1268
    sget-object v2, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->b:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-direct {p0, v1, v2}, Lo/ot;->c(Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lo/om;

    goto :goto_2

    .line 1271
    :cond_2
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->E()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    .line 1273
    sget-object v2, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->e:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-direct {p0, v1, v2}, Lo/ot;->c(Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lo/om;

    goto :goto_3

    .line 1275
    :cond_3
    iget-object v0, p0, Lo/ot;->o:Lo/oF;

    invoke-virtual {v0}, Lo/oF;->e()V

    return-void
.end method

.method static synthetic a(Lo/ot;)Lo/oC;
    .locals 0

    .line 73
    iget-object p0, p0, Lo/ot;->c:Lo/oC;

    return-object p0
.end method

.method private a(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const/4 p1, 0x0

    .line 316
    invoke-direct {p0, p1}, Lo/ot;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 317
    invoke-direct {p0}, Lo/ot;->S()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 318
    invoke-direct {p0}, Lo/ot;->O()V

    goto :goto_0

    .line 320
    :cond_0
    new-instance p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->aZ:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, p1, v0}, Lo/ot;->e(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/util/List;Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/op;",
            ">;",
            "Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;",
            "Ljava/util/List<",
            "Lo/oj;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1394
    iget-object v0, p2, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lo/ot;->c(Ljava/util/List;Ljava/lang/String;)Lo/op;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1396
    invoke-direct {p0, p2, p1, p4}, Lo/ot;->b(Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Lo/op;Ljava/lang/String;)Lo/oj;

    move-result-object p1

    .line 1397
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Lo/op;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/op;",
            "Ljava/util/List<",
            "Lo/oj;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1061
    new-instance v0, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    invoke-interface {p1}, Lo/op;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lo/op;->b()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;-><init>(Ljava/lang/String;J)V

    .line 1062
    invoke-direct {p0, v0, p1, p4}, Lo/ot;->b(Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Lo/op;Ljava/lang/String;)Lo/oj;

    move-result-object p1

    .line 1063
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private aa()V
    .locals 3

    .line 1619
    iget-object v0, p0, Lo/ot;->b:Lo/oE;

    if-nez v0, :cond_0

    .line 1620
    new-instance v0, Lo/oE;

    iget-object v1, p0, Lo/ot;->o:Lo/oF;

    iget-object v2, p0, Lo/ot;->c:Lo/oC;

    invoke-direct {v0, v1, v2}, Lo/oE;-><init>(Lo/oF;Lo/oC;)V

    iput-object v0, p0, Lo/ot;->b:Lo/oE;

    .line 1621
    sget-object v0, Lo/oa;->c:Lo/oa;

    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/ot;->b:Lo/oE;

    invoke-virtual {v0, v1, v2}, Lo/oa;->c(Ljava/lang/String;Lo/oE;)V

    :cond_0
    return-void
.end method

.method private b(Z)Lcom/netflix/mediaclient/android/app/Status;
    .locals 3

    .line 1096
    invoke-static {}, Lo/aeB;->c()Z

    .line 1098
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0}, Lo/ot;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1099
    iget-object v0, p0, Lo/ot;->k:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v0

    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    const-string v2, "Delete"

    invoke-static {v0, v1, v2}, Lo/oS;->b(Lo/zS;Lo/or;Ljava/lang/String;)V

    .line 1100
    iget-object v0, p0, Lo/ot;->g:Lo/oQ;

    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/oQ;->d(Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->q()V

    .line 1103
    invoke-direct {p0}, Lo/ot;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1104
    iget-object p1, p0, Lo/ot;->h:Lo/oL;

    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    const/4 v1, 0x0

    iget-object v2, p0, Lo/ot;->m:Lo/oz;

    invoke-static {p1, v0, v1, v2}, Lo/ot;->b(Lo/oL;Lo/oC;Lo/ov$Application;Lo/oz;)V

    .line 1106
    :cond_0
    iget-object p1, p0, Lo/ot;->e:Ljava/lang/String;

    invoke-static {p1}, Lo/ph;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1108
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    return-object p1

    .line 1110
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deletePlayableDirectory failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ot;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 1111
    new-instance p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->ba:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    return-object p1
.end method

.method private b(Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Lo/op;Ljava/lang/String;)Lo/oj;
    .locals 13

    move-object v11, p0

    move-object v3, p1

    .line 912
    iget-object v0, v11, Lo/ot;->e:Ljava/lang/String;

    iget-object v1, v3, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    .line 913
    invoke-interface {p2}, Lo/op;->a()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    move-result-object v2

    .line 912
    invoke-static {v0, v1, v2}, Lo/pi;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v6

    .line 914
    new-instance v12, Lo/oj;

    iget-object v1, v11, Lo/ot;->p:Landroid/content/Context;

    iget-object v0, v11, Lo/ot;->d:Landroid/os/HandlerThread;

    .line 915
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 918
    invoke-interface {p2}, Lo/op;->a()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/ot;->c(Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lo/om;

    move-result-object v5

    iget-object v7, v11, Lo/ot;->f:Lo/FragmentHostCallback;

    iget-object v0, v11, Lo/ot;->c:Lo/oC;

    move-object v4, p2

    move-object/from16 v8, p3

    .line 921
    invoke-static {v0, p2, v8}, Lo/oq;->d(Lo/oC;Lo/op;Ljava/lang/String;)Lo/oq;

    move-result-object v8

    iget-object v9, v11, Lo/ot;->k:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-object v0, v12

    move-object v10, p0

    invoke-direct/range {v0 .. v10}, Lo/oj;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Lo/op;Lo/om;Ljava/io/File;Lo/FragmentHostCallback;Lo/oq;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lo/ol;)V

    return-object v12
.end method

.method private b(ILjava/lang/Object;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lo/ot;->l:Lo/ot$Activity;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p1, p2}, Lo/ot$Activity;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    const-string p1, "nf_offlinePlayable"

    const-string p2, "sendMessageToHandler after handler is gone"

    .line 185
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private b(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 3

    .line 1141
    invoke-virtual {p0}, Lo/ot;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const-string v2, "nf_offlinePlayable"

    if-ne v0, v1, :cond_0

    const-string p1, "sendNetworkError already in stopped state."

    .line 1142
    invoke-static {v2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "sendNetworkError sending error to mOfflinePlayableListener."

    .line 1144
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0, p2}, Lo/oC;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1146
    iget-object p2, p0, Lo/ot;->m:Lo/oz;

    invoke-interface {p2, p0, p1}, Lo/oz;->c(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method private b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 1

    .line 1077
    invoke-static {}, Lo/aeB;->c()Z

    if-eqz p1, :cond_1

    .line 1080
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne p1, v0, :cond_0

    .line 1082
    iget-object p1, p0, Lo/ot;->r:Lo/on;

    invoke-virtual {p1}, Lo/on;->c()V

    goto :goto_0

    .line 1085
    :cond_0
    iget-object v0, p0, Lo/ot;->r:Lo/on;

    invoke-virtual {v0, p1}, Lo/on;->c(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1089
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/ot;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/oj;

    .line 1090
    invoke-virtual {v0}, Lo/oj;->a()V

    goto :goto_1

    .line 1092
    :cond_2
    iget-object p1, p0, Lo/ot;->l:Lo/ot$Activity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/ot$Activity;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Lo/oL;Lo/oC;Lo/ov$Application;Lo/oz;)V
    .locals 6

    .line 1577
    invoke-static {p1}, Lo/ph;->d(Lo/oC;)[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1578
    array-length v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1585
    :cond_0
    invoke-interface {p1}, Lo/oC;->y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1586
    :goto_0
    invoke-interface {p1}, Lo/oC;->B()Lo/sx;

    move-result-object v4

    new-instance v5, Lo/ot$3;

    invoke-direct {v5, p1, p2, p3}, Lo/ot$3;-><init>(Lo/oC;Lo/ov$Application;Lo/oz;)V

    move-object v0, p0

    move-object v1, p1

    .line 1584
    invoke-interface/range {v0 .. v5}, Lo/oL;->b(Lo/or;[BZLo/sx;Lo/oP;)V

    return-void

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 1580
    invoke-interface {p2, p1}, Lo/ov$Application;->b(Lo/oC;)V

    :cond_3
    return-void
.end method

.method private b(Lo/oj;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 285
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 286
    invoke-direct {p0}, Lo/ot;->M()V

    .line 295
    iget-object v0, p0, Lo/ot;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "nf_offlinePlayable"

    if-eqz v0, :cond_0

    const-string v0, "handleNetworkError networkConnected"

    .line 296
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget v0, p0, Lo/ot;->q:I

    if-lez v0, :cond_1

    return-void

    .line 305
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->i:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string v0, "handleNetworkError noNetwork"

    .line 306
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_1
    invoke-direct {p0, p2, p1}, Lo/ot;->c(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method static synthetic b(Lo/ot;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lo/ot;->V()V

    return-void
.end method

.method static synthetic b(Lo/ot;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lo/ot;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic b(Lo/ot;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/sE;Lo/nS$Application;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lo/ot;->d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/sE;Lo/nS$Application;)V

    return-void
.end method

.method static synthetic b(Lo/ot;Lo/sE;Lcom/netflix/mediaclient/android/app/Status;Lo/ov$Activity;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lo/ot;->e(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;Lo/ov$Activity;)V

    return-void
.end method

.method private b(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1190
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    invoke-direct {p0, p1}, Lo/ot;->e(Lo/sE;)V

    goto :goto_1

    .line 1193
    :cond_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->o:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 1194
    :goto_0
    invoke-direct {p0, p2, p1}, Lo/ot;->c(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1195
    iget-object p1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {p1, p2}, Lo/oC;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_1
    return-void
.end method

.method private b(Lo/sE;)Z
    .locals 7

    const-string v0, "nf_offlinePlayable"

    const-string v1, "createCdnUrlDownloadersFromUpdatedManifest"

    .line 952
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    .line 955
    invoke-interface {v0}, Lo/oC;->A()Ljava/util/List;

    move-result-object v0

    .line 954
    invoke-static {v0}, Lo/ph;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 956
    invoke-static {p1, v0}, Lo/oo;->a(Lo/sE;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 959
    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    .line 960
    invoke-interface {v1}, Lo/oC;->z()Ljava/util/List;

    move-result-object v1

    .line 959
    invoke-static {v1}, Lo/ph;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 961
    invoke-static {p1, v1}, Lo/oo;->e(Lo/sE;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 964
    iget-object v2, p0, Lo/ot;->c:Lo/oC;

    .line 965
    invoke-interface {v2}, Lo/oC;->F()Ljava/util/List;

    move-result-object v2

    .line 964
    invoke-static {v2}, Lo/ph;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 966
    invoke-static {p1, v2}, Lo/oo;->c(Lo/sE;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 969
    iget-object v3, p0, Lo/ot;->c:Lo/oC;

    .line 970
    invoke-interface {v3}, Lo/oC;->E()Ljava/util/List;

    move-result-object v3

    .line 969
    invoke-static {v3}, Lo/ph;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 971
    invoke-static {p1, v3}, Lo/oo;->d(Lo/sE;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 976
    iget-object v4, p0, Lo/ot;->c:Lo/oC;

    invoke-static {v4, v0, v1, v2, v3}, Lo/ph;->a(Lo/oC;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 982
    :cond_0
    iget-object v4, p0, Lo/ot;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 984
    invoke-interface {p1}, Lo/sE;->v()Ljava/lang/String;

    move-result-object p1

    .line 985
    iget-object v4, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v4}, Lo/oC;->A()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    .line 986
    iget-object v6, p0, Lo/ot;->j:Ljava/util/List;

    invoke-direct {p0, v0, v5, v6, p1}, Lo/ot;->a(Ljava/util/List;Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 989
    :cond_1
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    .line 990
    iget-object v5, p0, Lo/ot;->j:Ljava/util/List;

    invoke-direct {p0, v1, v4, v5, p1}, Lo/ot;->a(Ljava/util/List;Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 993
    :cond_2
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->F()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    .line 994
    iget-object v4, p0, Lo/ot;->j:Ljava/util/List;

    invoke-direct {p0, v2, v1, v4, p1}, Lo/ot;->a(Ljava/util/List;Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    .line 997
    :cond_3
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->E()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    .line 998
    iget-object v2, p0, Lo/ot;->j:Ljava/util/List;

    invoke-direct {p0, v3, v1, v2, p1}, Lo/ot;->a(Ljava/util/List;Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_3

    .line 1001
    :cond_4
    invoke-direct {p0}, Lo/ot;->X()V

    const/4 p1, 0x1

    return p1
.end method

.method private c(Lo/sE;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 7

    const-string v0, "nf_offlinePlayable"

    const-string v1, "createFreshCdnUrlDownloadersFromManifest"

    .line 1012
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1013
    invoke-static {p1, v0}, Lo/oo;->a(Lo/sE;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1014
    invoke-static {p1, v0}, Lo/oo;->e(Lo/sE;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1015
    invoke-static {p1, v0}, Lo/oo;->c(Lo/sE;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1016
    invoke-static {p1, v0}, Lo/oo;->d(Lo/sE;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1018
    iget-object v4, p0, Lo/ot;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1020
    invoke-interface {p1}, Lo/sE;->v()Ljava/lang/String;

    move-result-object p1

    .line 1021
    iget-object v4, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v4}, Lo/oC;->A()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1022
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/op;

    .line 1023
    iget-object v5, p0, Lo/ot;->j:Ljava/util/List;

    iget-object v6, p0, Lo/ot;->c:Lo/oC;

    .line 1024
    invoke-interface {v6}, Lo/oC;->A()Ljava/util/List;

    move-result-object v6

    .line 1023
    invoke-direct {p0, v4, v5, v6, p1}, Lo/ot;->a(Lo/op;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1027
    :cond_0
    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v1}, Lo/oC;->z()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1028
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/op;

    .line 1029
    iget-object v4, p0, Lo/ot;->j:Ljava/util/List;

    iget-object v5, p0, Lo/ot;->c:Lo/oC;

    .line 1030
    invoke-interface {v5}, Lo/oC;->z()Ljava/util/List;

    move-result-object v5

    .line 1029
    invoke-direct {p0, v2, v4, v5, p1}, Lo/ot;->a(Lo/op;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 1033
    :cond_1
    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v1}, Lo/oC;->F()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1034
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/op;

    .line 1035
    iget-object v3, p0, Lo/ot;->j:Ljava/util/List;

    iget-object v4, p0, Lo/ot;->c:Lo/oC;

    .line 1036
    invoke-interface {v4}, Lo/oC;->F()Ljava/util/List;

    move-result-object v4

    .line 1035
    invoke-direct {p0, v2, v3, v4, p1}, Lo/ot;->a(Lo/op;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    .line 1039
    :cond_2
    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v1}, Lo/oC;->E()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1040
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/op;

    .line 1041
    iget-object v2, p0, Lo/ot;->j:Ljava/util/List;

    iget-object v3, p0, Lo/ot;->c:Lo/oC;

    .line 1042
    invoke-interface {v3}, Lo/oC;->E()Ljava/util/List;

    move-result-object v3

    .line 1041
    invoke-direct {p0, v1, v2, v3, p1}, Lo/ot;->a(Lo/op;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_3

    .line 1044
    :cond_3
    invoke-direct {p0}, Lo/ot;->X()V

    .line 1045
    invoke-direct {p0}, Lo/ot;->P()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Lo/om;
    .locals 4

    .line 1290
    iget-object v0, p0, Lo/ot;->o:Lo/oF;

    iget-object v0, v0, Lo/oF;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/om;

    if-nez v0, :cond_0

    .line 1294
    new-instance v0, Lo/om;

    invoke-direct {v0}, Lo/om;-><init>()V

    .line 1297
    :cond_0
    iget-object v1, p0, Lo/ot;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lo/pi;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object p2

    .line 1300
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v0, Lo/om;->b:J

    .line 1301
    iget-boolean p2, p1, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mIsComplete:Z

    if-eqz p2, :cond_1

    .line 1302
    iget-wide v1, v0, Lo/om;->b:J

    iput-wide v1, v0, Lo/om;->c:J

    goto :goto_0

    .line 1304
    :cond_1
    iget-wide v1, p1, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mSizeOfDownloadable:J

    iput-wide v1, v0, Lo/om;->c:J

    :goto_0
    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1306
    iget-boolean v2, p1, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mIsComplete:Z

    .line 1307
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    aput-object v2, p2, v1

    const/4 v1, 0x2

    iget-wide v2, v0, Lo/om;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x3

    iget-wide v2, v0, Lo/om;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p2, v1

    const-string v1, "nf_offlinePlayable"

    const-string v2, "getProgressInfoForDownloadable complete=%b downloadableId=%s  mBytesOnTheDisk=%d mTotalBytesToDownload=%d"

    .line 1306
    invoke-static {v1, v2, p2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1309
    iget-object p2, p0, Lo/ot;->o:Lo/oF;

    iget-object p2, p2, Lo/oF;->e:Ljava/util/Map;

    iget-object p1, p1, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private c(Ljava/util/List;Ljava/lang/String;)Lo/op;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/op;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lo/op;"
        }
    .end annotation

    .line 1402
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/op;

    .line 1403
    invoke-interface {v0}, Lo/op;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    .line 332
    invoke-direct {p0, p2}, Lo/ot;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 333
    invoke-direct {p0, p1, p2}, Lo/ot;->b(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;Lo/nS$Application;)V
    .locals 3

    .line 1531
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1532
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-static {p1, v0}, Lo/ph;->d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lo/oC;)V

    .line 1533
    iget-object p1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {p1}, Lo/oC;->o()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v1

    const-string v0, "nf_offlinePlayable"

    const-string v2, "refreshLicense failed %s"

    .line 1535
    invoke-static {v0, v2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1538
    iget-object p1, p0, Lo/ot;->c:Lo/oC;

    invoke-static {p1}, Lo/oc;->e(Lo/oC;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1539
    iget-object p1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {p1, p2}, Lo/oC;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1543
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lo/ot;->c(Z)V

    .line 1544
    iget-object p1, p0, Lo/ot;->m:Lo/oz;

    invoke-interface {p1}, Lo/oz;->a()V

    if-eqz p3, :cond_2

    .line 1546
    invoke-virtual {p3, p2}, Lo/nS$Application;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_2
    return-void
.end method

.method private c(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 262
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 263
    iget-object p1, p0, Lo/ot;->c:Lo/oC;

    invoke-static {p2, p1}, Lo/ph;->d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lo/oC;)V

    .line 264
    iget-object p1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {p1}, Lo/oC;->o()V

    goto :goto_0

    .line 266
    :cond_0
    iget-object p1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {p1, p3}, Lo/oC;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 268
    :goto_0
    iget-object p1, p0, Lo/ot;->m:Lo/oz;

    invoke-interface {p1, p0, p3}, Lo/oz;->e(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic c(Lo/ot;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lo/ot;->O()V

    return-void
.end method

.method static synthetic c(Lo/ot;Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lo/ot;->b(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private c(Lo/sE;Lo/nS$Application;)V
    .locals 4

    const-string v0, "nf_offlinePlayable"

    const-string v1, "Fetching fresh license on refresh failure"

    .line 1551
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    iget-object v0, p0, Lo/ot;->h:Lo/oL;

    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {p1}, Lo/sE;->x()[B

    move-result-object v2

    .line 1553
    invoke-interface {p1}, Lo/sE;->U()Lo/sA;

    move-result-object p1

    invoke-virtual {p1}, Lo/sA;->d()Lo/sx;

    move-result-object p1

    new-instance v3, Lo/ot$5;

    invoke-direct {v3, p0, p2}, Lo/ot$5;-><init>(Lo/ot;Lo/nS$Application;)V

    .line 1552
    invoke-interface {v0, v1, v2, p1, v3}, Lo/oL;->a(Lo/or;[BLo/sx;Lo/oP;)V

    return-void
.end method

.method private c(Z)V
    .locals 0

    .line 1607
    iput-boolean p1, p0, Lo/ot;->y:Z

    return-void
.end method

.method private d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 328
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->k:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, p1, v0}, Lo/ot;->c(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method private d(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 6

    .line 1151
    iget-object v0, p0, Lo/ot;->i:Ljava/io/File;

    invoke-static {v0}, Lo/adk;->e(Ljava/io/File;)J

    move-result-wide v0

    const-string v2, "nf_offlinePlayable"

    const-wide/32 v3, 0x17d7840

    cmp-long v5, v3, v0

    if-lez v5, :cond_0

    const-string p1, "sendStorageError overriding error to not enough space"

    .line 1153
    invoke-static {v2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    new-instance p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->aZ:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p1, p2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 1155
    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 1157
    :cond_0
    invoke-virtual {p0}, Lo/ot;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_1

    .line 1159
    iget-object p1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {p1, p2}, Lo/oC;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    const-string p1, "sendStorageError already in stopped state."

    .line 1160
    invoke-static {v2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1162
    :cond_1
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0, p2}, Lo/oC;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1163
    iget-object p2, p0, Lo/ot;->m:Lo/oz;

    invoke-interface {p2, p0, p1}, Lo/oz;->b(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method private d(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/sE;Lo/nS$Application;)V
    .locals 12

    .line 1498
    invoke-direct {p0}, Lo/ot;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-static {v0}, Lo/oc;->c(Lo/oC;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1505
    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "nf_offlinePlayable"

    const-string v3, "refreshing license for %s"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1506
    invoke-direct {p0, v0}, Lo/ot;->c(Z)V

    .line 1508
    iget-object v4, p0, Lo/ot;->h:Lo/oL;

    iget-object v6, p0, Lo/ot;->c:Lo/oC;

    .line 1509
    invoke-interface {p2}, Lo/sE;->x()[B

    move-result-object v7

    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    .line 1510
    invoke-static {v0}, Lo/ph;->d(Lo/oC;)[B

    move-result-object v8

    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    .line 1511
    invoke-interface {v0}, Lo/oC;->X()Lo/sx;

    move-result-object v9

    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    .line 1512
    invoke-interface {v0}, Lo/oC;->V()Lo/sx;

    move-result-object v10

    new-instance v11, Lo/ot$4;

    invoke-direct {v11, p0, p2, p3}, Lo/ot$4;-><init>(Lo/ot;Lo/sE;Lo/nS$Application;)V

    move-object v5, p1

    .line 1508
    invoke-interface/range {v4 .. v11}, Lo/oL;->b(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/or;[B[BLo/sx;Lo/sx;Lo/oP;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 1500
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p3, p1}, Lo/nS$Application;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_2
    return-void
.end method

.method private d(Lo/oj;)V
    .locals 5

    .line 343
    invoke-direct {p0}, Lo/ot;->M()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 344
    iget v1, p0, Lo/ot;->n:I

    .line 345
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lo/ot;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lo/oj;->g()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "nf_offlinePlayable"

    const-string v4, " completeTrackCount=%d activeTrackCount=%d downloadableId=%s"

    .line 344
    invoke-static {p1, v4, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 348
    iget v0, p0, Lo/ot;->n:I

    iget-object v4, p0, Lo/ot;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v0, v4, :cond_0

    const-string v0, "all tracks downloaded"

    .line 349
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object p1, p0, Lo/ot;->r:Lo/on;

    invoke-virtual {p1}, Lo/on;->b()V

    .line 351
    iget-object p1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {p1}, Lo/oC;->m()V

    .line 352
    iget-object p1, p0, Lo/ot;->o:Lo/oF;

    invoke-virtual {p1}, Lo/oF;->b()V

    .line 353
    iget-object p1, p0, Lo/ot;->m:Lo/oz;

    invoke-interface {p1, p0}, Lo/oz;->a(Lo/ov;)V

    .line 354
    new-instance p1, Lo/nU$FragmentManager;

    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lo/ot;->o()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p1, v0, v1, v2}, Lo/nU$FragmentManager;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, p1}, Lo/ot;->e(Lo/nU;)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 357
    iget v1, p0, Lo/ot;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p0, Lo/ot;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "completeTrackCount=%d activeTrackCount=%d"

    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 358
    invoke-direct {p0}, Lo/ot;->S()Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_1

    .line 361
    iget-object p1, p0, Lo/ot;->m:Lo/oz;

    invoke-interface {p1}, Lo/oz;->a()V

    .line 362
    iget-object p1, p0, Lo/ot;->p:Landroid/content/Context;

    invoke-static {p1}, Lo/oc;->d(Landroid/content/Context;)V

    goto :goto_1

    .line 364
    :cond_1
    new-instance p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->aZ:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, p1, v0}, Lo/ot;->e(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 365
    new-instance p1, Lo/nU$FragmentManager;

    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lo/ot;->o()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->aZ:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p1, v0, v1, v2}, Lo/nU$FragmentManager;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, p1}, Lo/ot;->e(Lo/nU;)V

    :goto_1
    return-void
.end method

.method static synthetic d(Lo/ot;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lo/ot;->J()V

    return-void
.end method

.method static synthetic d(Lo/ot;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lo/ot;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic d(Lo/ot;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lo/ot;->c(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic d(Lo/ot;Lo/nU;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lo/ot;->e(Lo/nU;)V

    return-void
.end method

.method static synthetic d(Lo/ot;Lo/oj;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lo/ot;->b(Lo/oj;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic e(Lo/ot;)Lo/oz;
    .locals 0

    .line 73
    iget-object p0, p0, Lo/ot;->m:Lo/oz;

    return-object p0
.end method

.method private e(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    .line 280
    invoke-direct {p0, p2}, Lo/ot;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 281
    invoke-direct {p0, p1, p2}, Lo/ot;->d(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method private e(Lo/nU;)V
    .locals 1

    .line 1615
    iget-object v0, p0, Lo/ot;->s:Lo/oH;

    invoke-virtual {v0, p1}, Lo/oH;->b(Lo/nU;)V

    return-void
.end method

.method static synthetic e(Lo/ot;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;Lo/nS$Application;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lo/ot;->c(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;Lo/nS$Application;)V

    return-void
.end method

.method static synthetic e(Lo/ot;Lo/oj;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lo/ot;->d(Lo/oj;)V

    return-void
.end method

.method static synthetic e(Lo/ot;Lo/sE;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lo/ot;->e(Lo/sE;)V

    return-void
.end method

.method static synthetic e(Lo/ot;Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lo/ot;->e(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic e(Lo/ot;Lo/sE;Lo/nS$Application;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lo/ot;->c(Lo/sE;Lo/nS$Application;)V

    return-void
.end method

.method private e(Lo/sE;)V
    .locals 1

    .line 240
    invoke-direct {p0, p1}, Lo/ot;->b(Lo/sE;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 242
    invoke-direct {p0}, Lo/ot;->S()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    invoke-direct {p0}, Lo/ot;->Q()V

    .line 244
    iget-object p1, p0, Lo/ot;->m:Lo/oz;

    invoke-interface {p1}, Lo/oz;->a()V

    goto :goto_0

    .line 246
    :cond_0
    new-instance p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->aZ:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, p1, v0}, Lo/ot;->e(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    goto :goto_0

    .line 249
    :cond_1
    invoke-direct {p0}, Lo/ot;->L()V

    :goto_0
    return-void
.end method

.method private e(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 194
    new-instance v0, Lo/nU$Dialog;

    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lo/ot;->o()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/nU$Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, v0}, Lo/ot;->e(Lo/nU;)V

    .line 195
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    invoke-direct {p0, p1}, Lo/ot;->c(Lo/sE;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    .line 197
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    invoke-direct {p0}, Lo/ot;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-interface {p1}, Lo/sE;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object p2, p0, Lo/ot;->h:Lo/oL;

    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {p1}, Lo/sE;->x()[B

    move-result-object v1

    .line 201
    invoke-interface {p1}, Lo/sE;->U()Lo/sA;

    move-result-object p1

    invoke-virtual {p1}, Lo/sA;->d()Lo/sx;

    move-result-object p1

    new-instance v2, Lo/ot$1;

    invoke-direct {v2, p0}, Lo/ot$1;-><init>(Lo/ot;)V

    .line 200
    invoke-interface {p2, v0, v1, p1, v2}, Lo/oL;->a(Lo/or;[BLo/sx;Lo/oP;)V

    goto :goto_0

    .line 212
    :cond_0
    new-instance p1, Lo/nU$Application;

    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lo/ot;->o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, p2, v2}, Lo/nU$Application;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Z)V

    invoke-direct {p0, p1}, Lo/ot;->e(Lo/nU;)V

    .line 213
    invoke-direct {p0}, Lo/ot;->N()V

    :goto_0
    return-void

    .line 217
    :cond_1
    new-instance p2, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->aZ:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p2, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 218
    invoke-direct {p0}, Lo/ot;->R()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->e(Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lo/ot;->k:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object p1

    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-static {p1, v0, p2}, Lo/oS;->e(Lo/zS;Lo/or;Lcom/netflix/mediaclient/android/app/Status;)V

    const-string p1, "nf_offlinePlayable"

    const-string v0, "handleFirstTimeManifestReceived not enough space"

    .line 221
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance p1, Lo/nU$FragmentManager;

    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lo/ot;->o()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->aZ:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p1, v0, v1, v2}, Lo/nU$FragmentManager;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, p1}, Lo/ot;->e(Lo/nU;)V

    goto :goto_1

    .line 229
    :cond_2
    new-instance p1, Lo/nU$FragmentManager;

    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lo/ot;->o()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->c:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p1, v0, v1, v2}, Lo/nU$FragmentManager;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, p1}, Lo/ot;->e(Lo/nU;)V

    .line 236
    :cond_3
    :goto_1
    iget-object p1, p0, Lo/ot;->m:Lo/oz;

    invoke-interface {p1, p0, p2}, Lo/oz;->e(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private e(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;Lo/ov$Activity;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "nf_offlinePlayable"

    .line 480
    invoke-interface/range {p2 .. p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 482
    :try_start_0
    new-instance v0, Lo/oW;

    iget-object v5, v1, Lo/ot;->p:Landroid/content/Context;

    iget-object v6, v1, Lo/ot;->e:Ljava/lang/String;

    iget-object v4, v1, Lo/ot;->c:Lo/oC;

    .line 483
    invoke-static {v4}, Lo/ph;->d(Lo/oC;)[B

    move-result-object v8

    iget-object v4, v1, Lo/ot;->c:Lo/oC;

    .line 484
    invoke-interface {v4}, Lo/oC;->D()Lo/sx;

    move-result-object v9

    iget-object v4, v1, Lo/ot;->c:Lo/oC;

    .line 485
    invoke-interface {v4}, Lo/oC;->A()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lo/ph;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iget-object v4, v1, Lo/ot;->c:Lo/oC;

    .line 486
    invoke-interface {v4}, Lo/oC;->z()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lo/ph;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iget-object v4, v1, Lo/ot;->c:Lo/oC;

    .line 487
    invoke-interface {v4}, Lo/oC;->F()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lo/ph;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    iget-object v4, v1, Lo/ot;->c:Lo/oC;

    .line 488
    invoke-interface {v4}, Lo/oC;->E()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lo/ph;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    iget-object v4, v1, Lo/ot;->c:Lo/oC;

    .line 489
    invoke-interface {v4}, Lo/oC;->e()Ljava/lang/String;

    move-result-object v14

    iget-object v4, v1, Lo/ot;->c:Lo/oC;

    .line 490
    invoke-interface {v4}, Lo/oC;->c()Ljava/lang/String;

    move-result-object v15

    iget-object v4, v1, Lo/ot;->c:Lo/oC;

    .line 491
    invoke-static {v4}, Lo/ph;->b(Lo/oC;)Lo/jX;

    move-result-object v16

    move-object v4, v0

    move-object/from16 v7, p1

    invoke-direct/range {v4 .. v16}, Lo/oW;-><init>(Landroid/content/Context;Ljava/lang/String;Lo/sE;[BLo/sx;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lo/jX;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v2, p2

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v4, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 502
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v8, v1, Lo/ot;->e:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lo/pi;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    .line 505
    :goto_0
    :try_start_2
    iget-object v0, v1, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x2

    if-eqz v11, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    .line 506
    iget-object v13, v1, Lo/ot;->e:Ljava/lang/String;

    iget-object v11, v11, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    sget-object v14, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->d:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v13, v11, v14}, Lo/pi;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v11

    .line 508
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 511
    :cond_2
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lo/oU;->b(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    add-int/lit8 v10, v10, 0x1

    .line 513
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v13

    const-string v14, "failed audio track deleted=%b %s"

    new-array v12, v12, [Ljava/lang/Object;

    .line 514
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v6

    invoke-static {v2, v14, v12}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 521
    :cond_3
    :try_start_4
    iget-object v0, v1, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v11, 0x0

    const/4 v13, 0x0

    :cond_4
    :goto_2
    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;

    .line 522
    iget-object v15, v1, Lo/ot;->e:Ljava/lang/String;

    iget-object v14, v14, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mDownloadableId:Ljava/lang/String;

    sget-object v3, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->a:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v15, v14, v3}, Lo/pi;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/download/DownloadableType;)Ljava/io/File;

    move-result-object v3

    .line 524
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_5

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 527
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lo/oU;->b(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    add-int/lit8 v13, v13, 0x1

    .line 529
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v14

    const-string v15, "failed video track deleted=%b %s"

    new-array v5, v12, [Ljava/lang/Object;

    .line 530
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v5, v7

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v2, v15, v5}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    const/4 v9, -0x1

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    const/4 v8, -0x1

    :goto_3
    const/4 v9, -0x1

    const/4 v10, 0x0

    :goto_4
    const/4 v13, 0x0

    :goto_5
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v7

    const-string v0, "exception"

    .line 536
    invoke-static {v2, v0, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v11, -0x1

    .line 539
    :cond_6
    invoke-direct/range {p0 .. p0}, Lo/ot;->U()Z

    move-result v0

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OfflinePlayableManifestImpl DL_MANIFEST_DATA_MISSING oxid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lo/ot;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " manifestCount="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " audioCounts="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " videoCounts="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " failedAudio="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " failedVideo="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " allExists="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    invoke-static {v2, v0, v4}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 546
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->bb:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 547
    iget-object v3, v1, Lo/ot;->c:Lo/oC;

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-interface {v3, v4}, Lo/oC;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 548
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->e(Ljava/lang/Throwable;)V

    .line 550
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Lo/SpinnerAdapter;->b(Ljava/lang/Throwable;)V

    move-object v2, v0

    goto :goto_6

    .line 552
    :cond_7
    invoke-interface/range {p2 .. p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v0

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->aW:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v2

    if-ne v0, v2, :cond_8

    .line 553
    iget-object v0, v1, Lo/ot;->c:Lo/oC;

    move-object/from16 v2, p2

    invoke-interface {v0, v2}, Lo/oC;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 554
    iget-object v0, v1, Lo/ot;->c:Lo/oC;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->o:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-interface {v0, v3}, Lo/oC;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    goto :goto_6

    :cond_8
    move-object/from16 v2, p2

    :goto_6
    const/4 v0, 0x0

    .line 556
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lo/ot;->o()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-interface {v4, v0, v3, v2}, Lo/ov$Activity;->b(Lo/pq$Application;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public static e(I)Z
    .locals 1

    .line 769
    sget v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->c:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->f:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->g:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private e(Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;Ljava/io/File;)Z
    .locals 5

    .line 1413
    iget-boolean v0, p1, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mIsComplete:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1414
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide p1, p1, Lcom/netflix/mediaclient/storage/db/entity/DownloadablePersistentData;->mSizeOfDownloadable:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic g(Lo/ot;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lo/ot;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 2

    .line 781
    invoke-virtual {p0}, Lo/ot;->n()Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->c:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Z
    .locals 2

    .line 786
    invoke-virtual {p0}, Lo/ot;->m()I

    move-result v0

    sget v1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()J
    .locals 2

    .line 765
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public D()Z
    .locals 1

    .line 776
    invoke-virtual {p0}, Lo/ot;->m()I

    move-result v0

    invoke-static {v0}, Lo/ot;->e(I)Z

    move-result v0

    return v0
.end method

.method public E()I
    .locals 1

    .line 791
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->k()I

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 1

    .line 1494
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->W()Z

    move-result v0

    return v0
.end method

.method public G()Lcom/netflix/mediaclient/android/app/Status;
    .locals 2

    .line 805
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->n()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    if-nez v0, :cond_3

    .line 807
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->U()I

    move-result v0

    if-eqz v0, :cond_2

    .line 808
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->U()I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/StatusCode;->e(I)Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 810
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->a:Lcom/netflix/mediaclient/StatusCode;

    .line 812
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 813
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->T()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 815
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d(Z)V

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 819
    :cond_2
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 821
    :goto_0
    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v1, v0}, Lo/oC;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_3
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 593
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 1

    .line 445
    invoke-static {}, Lo/aeB;->c()Z

    .line 447
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne p1, v0, :cond_0

    sget-object v0, Lo/eY;->d:Lo/eY$Application;

    invoke-virtual {v0}, Lo/eY$Application;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 451
    invoke-direct {p0, p1}, Lo/ot;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 452
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0, p1}, Lo/oC;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    :cond_1
    return-void
.end method

.method public a(Lo/oj;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 889
    invoke-virtual {p1}, Lo/oj;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_offlinePlayable"

    const-string v2, "onCdnUrlExpiredOrMoved downloadableId=%s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 890
    new-instance v0, Lo/ot$TaskDescription;

    invoke-direct {v0, p0, p2, p1}, Lo/ot$TaskDescription;-><init>(Lo/ot;Lcom/netflix/mediaclient/android/app/Status;Lo/oj;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v0}, Lo/ot;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lo/ov$Activity;)V
    .locals 4

    .line 469
    iget-object v0, p0, Lo/ot;->g:Lo/oQ;

    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    iget-object v2, p0, Lo/ot;->e:Ljava/lang/String;

    new-instance v3, Lo/ot$9;

    invoke-direct {v3, p0, p1}, Lo/ot$9;-><init>(Lo/ot;Lo/ov$Activity;)V

    invoke-interface {v0, v1, v2, v3}, Lo/oQ;->c(Lo/or;Ljava/lang/String;Lo/oR;)V

    return-void
.end method

.method public b()V
    .locals 9

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 372
    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v1}, Lo/oC;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_offlinePlayable"

    const-string v2, "initialize playableId=%s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 373
    invoke-static {}, Lo/aeB;->c()Z

    .line 374
    invoke-direct {p0}, Lo/ot;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lo/ot;->m:Lo/oz;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->aU:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {v0, p0, v1}, Lo/oz;->e(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 381
    :cond_0
    new-instance v0, Lo/nU$LoaderManager;

    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lo/ot;->o()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/nU$LoaderManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/ot;->e(Lo/nU;)V

    .line 383
    iget-object v3, p0, Lo/ot;->g:Lo/oQ;

    iget-object v4, p0, Lo/ot;->c:Lo/oC;

    .line 384
    invoke-static {v4}, Lo/ph;->b(Lo/oC;)Lo/jX;

    move-result-object v5

    iget-object v6, p0, Lo/ot;->e:Ljava/lang/String;

    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    .line 386
    invoke-interface {v0}, Lo/oC;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v7

    new-instance v8, Lo/ot$10;

    invoke-direct {v8, p0}, Lo/ot$10;-><init>(Lo/ot;)V

    .line 383
    invoke-interface/range {v3 .. v8}, Lo/oQ;->c(Lo/or;Lo/jX;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lo/oR;)V

    return-void
.end method

.method public b(Lo/oj;)V
    .locals 3

    const-string v0, "nf_offlinePlayable"

    const-string v1, "onUrlDownloadDiskIOError"

    .line 876
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-instance v0, Lo/ot$TaskDescription;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->aO:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {v0, p0, v1, p1}, Lo/ot$TaskDescription;-><init>(Lo/ot;Lcom/netflix/mediaclient/android/app/Status;Lo/oj;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Lo/ot;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 4

    .line 396
    invoke-static {}, Lo/aeB;->c()Z

    const-string v0, "nf_offlinePlayable"

    const-string v1, "startDownload"

    .line 397
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v1, p0, Lo/ot;->r:Lo/on;

    invoke-virtual {p0}, Lo/ot;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lo/ot;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lo/on;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v1}, Lo/oC;->w()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    .line 402
    invoke-interface {v1}, Lo/oC;->w()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v1, v2, :cond_0

    goto/16 :goto_0

    .line 410
    :cond_0
    invoke-virtual {p0}, Lo/ot;->i()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Download is not resume-able without user action"

    .line 411
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lo/ot;->r:Lo/on;

    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v1}, Lo/oC;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/on;->c(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lo/ot;->e:Ljava/lang/String;

    invoke-static {v0}, Lo/adE;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 416
    new-instance v0, Lo/nU$FragmentManager;

    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lo/ot;->o()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->bo:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1, v2, v3}, Lo/nU$FragmentManager;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, v0}, Lo/ot;->e(Lo/nU;)V

    .line 417
    iget-object v0, p0, Lo/ot;->r:Lo/on;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0, v1}, Lo/on;->c(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 418
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-interface {v0, v1}, Lo/oC;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 419
    iget-object v0, p0, Lo/ot;->m:Lo/oz;

    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->bo:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {v0, p0, v1}, Lo/oz;->b(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 422
    :cond_2
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->p()V

    .line 423
    invoke-direct {p0}, Lo/ot;->S()Z

    move-result v0

    if-nez v0, :cond_3

    .line 424
    new-instance v0, Lo/nU$FragmentManager;

    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lo/ot;->o()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->aZ:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1, v2, v3}, Lo/nU$FragmentManager;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, v0}, Lo/ot;->e(Lo/nU;)V

    .line 425
    iget-object v0, p0, Lo/ot;->r:Lo/on;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0, v1}, Lo/on;->c(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 426
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->aZ:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0, v1}, Lo/ot;->e(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 429
    invoke-direct {p0, v0}, Lo/ot;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 430
    iget-object v0, p0, Lo/ot;->g:Lo/oQ;

    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    iget-object v2, p0, Lo/ot;->e:Ljava/lang/String;

    new-instance v3, Lo/ot$6;

    invoke-direct {v3, p0}, Lo/ot$6;-><init>(Lo/ot;)V

    invoke-interface {v0, v1, v2, v3}, Lo/oQ;->c(Lo/or;Ljava/lang/String;Lo/oR;)V

    return-void

    .line 406
    :cond_4
    :goto_0
    iget-object v0, p0, Lo/ot;->r:Lo/on;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0, v1}, Lo/on;->c(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method public c(Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;)V
    .locals 3

    .line 1451
    sget-object v0, Lo/ot$2;->d:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1461
    :cond_0
    new-instance p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->bl:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p1, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 1462
    iget-object v1, p0, Lo/ot;->e:Ljava/lang/String;

    iget-object v2, p0, Lo/ot;->c:Lo/oC;

    invoke-static {v1, v2}, Lo/ph;->a(Ljava/lang/String;Lo/oC;)Z

    move-result v1

    .line 1463
    iget-object v2, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v2, p1}, Lo/oC;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1464
    iget-object p1, p0, Lo/ot;->c:Lo/oC;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->m:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-interface {p1, v2}, Lo/oC;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    new-array p1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1465
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "nf_offlinePlayable"

    const-string v1, "onLicenseSync encodes deleted=%b"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lo/nS$ActionBar;)V
    .locals 4

    .line 1472
    iget-object v0, p0, Lo/ot;->g:Lo/oQ;

    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    iget-object v2, p0, Lo/ot;->e:Ljava/lang/String;

    new-instance v3, Lo/ot$15;

    invoke-direct {v3, p0, p1}, Lo/ot$15;-><init>(Lo/ot;Lo/nS$ActionBar;)V

    invoke-interface {v0, v1, v2, v3}, Lo/oQ;->c(Lo/or;Ljava/lang/String;Lo/oR;)V

    return-void
.end method

.method public c(Lo/oj;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 883
    invoke-virtual {p1}, Lo/oj;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_offlinePlayable"

    const-string v2, "onCdnUrlExpiredOrMoved downloadableId=%s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 884
    new-instance v0, Lo/ot$TaskDescription;

    invoke-direct {v0, p0, p2, p1}, Lo/ot$TaskDescription;-><init>(Lo/ot;Lcom/netflix/mediaclient/android/app/Status;Lo/oj;)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, v0}, Lo/ot;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public c(Lo/ov$TaskDescription;)V
    .locals 4

    .line 562
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->N()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "nf_offlinePlayable"

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 563
    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "attempt auto refresh playableId=%s"

    invoke-static {v3, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 564
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;->e:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;

    new-instance v1, Lo/ot$8;

    invoke-direct {v1, p0, p1}, Lo/ot$8;-><init>(Lo/ot;Lo/ov$TaskDescription;)V

    invoke-virtual {p0, v0, v1}, Lo/ot;->e(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/nS$Application;)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 573
    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "does not allow auto refresh playableId=%s"

    invoke-static {v3, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p1, :cond_1

    .line 575
    invoke-interface {p1, p0}, Lo/ov$TaskDescription;->b(Lo/ov;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Z)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    .line 458
    invoke-static {}, Lo/aeB;->c()Z

    .line 459
    invoke-direct {p0, p1}, Lo/ot;->b(Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 5

    .line 839
    iget-object v0, p0, Lo/ot;->p:Landroid/content/Context;

    invoke-static {v0}, Lo/oc;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->J()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 841
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    monitor-enter v0

    .line 842
    :try_start_0
    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v1}, Lo/oC;->O()V

    .line 846
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lo/ot;->m:Lo/oz;

    invoke-interface {v0}, Lo/oz;->a()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 846
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    const-string v0, "nf_offlinePlayable"

    const-string v1, "notifyOfflinePlayStarted not starting playWindow"

    .line 853
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public d(I)Z
    .locals 2

    .line 796
    invoke-virtual {p0}, Lo/ot;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 799
    :cond_0
    iget-object v0, p0, Lo/ot;->o:Lo/oF;

    invoke-virtual {v0, p1}, Lo/oF;->e(I)Z

    move-result p1

    return p1
.end method

.method public e()Lo/oC;
    .locals 1

    .line 464
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    return-object v0
.end method

.method public e(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/nS$Application;)V
    .locals 4

    .line 1419
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-static {v0}, Lo/oc;->c(Lo/oC;)Z

    move-result v0

    const-string v1, "nf_offlinePlayable"

    if-eqz v0, :cond_0

    .line 1420
    invoke-direct {p0}, Lo/ot;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1422
    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "refreshLicenseIfNeeded playableId=%s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1423
    iget-object v0, p0, Lo/ot;->g:Lo/oQ;

    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    iget-object v2, p0, Lo/ot;->e:Ljava/lang/String;

    new-instance v3, Lo/ot$14;

    invoke-direct {v3, p0, p1, p2}, Lo/ot$14;-><init>(Lo/ot;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/nS$Application;)V

    invoke-interface {v0, v1, v2, v3}, Lo/oQ;->c(Lo/or;Ljava/lang/String;Lo/oR;)V

    goto :goto_0

    :cond_0
    const-string p1, "refreshLicenseIfNeeded not refreshing"

    .line 1438
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 1440
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p2, p1}, Lo/nS$Application;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Lo/oj;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 861
    invoke-virtual {p1}, Lo/oj;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_offlinePlayable"

    const-string v2, "onCdnUrlDownloadSessionEnd downloadableId=%s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 862
    new-instance v0, Lo/ot$TaskDescription;

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-direct {v0, p0, v1, p1}, Lo/ot$TaskDescription;-><init>(Lo/ot;Lcom/netflix/mediaclient/android/app/Status;Lo/oj;)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, v0}, Lo/ot;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public e(Lo/oj;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 871
    new-instance v0, Lo/ot$TaskDescription;

    invoke-direct {v0, p0, p2, p1}, Lo/ot$TaskDescription;-><init>(Lo/ot;Lcom/netflix/mediaclient/android/app/Status;Lo/oj;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, v0}, Lo/ot;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public f()Lo/oC;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    return-object v0
.end method

.method public g()V
    .locals 2

    .line 582
    iget-object v0, p0, Lo/ot;->l:Lo/ot$Activity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 583
    invoke-virtual {v0, v1}, Lo/ot$Activity;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 584
    iput-object v1, p0, Lo/ot;->l:Lo/ot$Activity;

    .line 586
    :cond_0
    iget-object v0, p0, Lo/ot;->g:Lo/oQ;

    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/oQ;->c(Ljava/lang/String;)V

    return-void
.end method

.method public h()I
    .locals 1

    .line 598
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->i()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .line 828
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->b()Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1489
    iget-object v0, p0, Lo/ot;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 617
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 629
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->g()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    .line 623
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->h()I

    move-result v0

    return v0
.end method

.method public n()Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;
    .locals 1

    .line 609
    iget-object v0, p0, Lo/ot;->a:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    move-result-object v0

    iput-object v0, p0, Lo/ot;->a:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    .line 612
    :cond_0
    iget-object v0, p0, Lo/ot;->a:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 603
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()I
    .locals 1

    .line 653
    iget-object v0, p0, Lo/ot;->o:Lo/oF;

    invoke-virtual {v0}, Lo/oF;->c()I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .line 647
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->j()I

    move-result v0

    return v0
.end method

.method public r()J
    .locals 2

    .line 641
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public s()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;
    .locals 6

    .line 659
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->w()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    .line 660
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 661
    invoke-static {}, Lo/dG;->d()Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 663
    const-class v0, Lo/Ck;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ck;

    invoke-virtual {p0}, Lo/ot;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/Ck;->e(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_8

    .line 667
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ot;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    return-object v0

    .line 670
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    .line 673
    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v1}, Lo/oC;->C()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 676
    :cond_2
    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    invoke-static {v1}, Lo/oc;->a(Lo/oC;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 677
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->g:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    goto :goto_0

    .line 678
    :cond_3
    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    invoke-static {v1}, Lo/oc;->e(Lo/oC;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 679
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    goto :goto_0

    .line 681
    :cond_4
    iget-object v1, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v1}, Lo/oC;->H()J

    move-result-wide v1

    .line 682
    iget-object v3, p0, Lo/ot;->p:Landroid/content/Context;

    iget-object v4, p0, Lo/ot;->c:Lo/oC;

    invoke-static {v3, v4}, Lo/oc;->d(Landroid/content/Context;Lo/oC;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 683
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->I()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->H()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    .line 684
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->c:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    goto :goto_0

    .line 686
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->f:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    goto :goto_0

    .line 689
    :cond_6
    iget-object v3, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v3}, Lo/oC;->H()J

    move-result-wide v3

    .line 690
    iget-object v5, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v5}, Lo/oC;->K()Z

    move-result v5

    if-eqz v5, :cond_7

    cmp-long v5, v3, v1

    if-eqz v5, :cond_7

    .line 693
    iget-object v1, p0, Lo/ot;->l:Lo/ot$Activity;

    new-instance v2, Lo/ot$7;

    invoke-direct {v2, p0}, Lo/ot$7;-><init>(Lo/ot;)V

    invoke-virtual {v1, v2}, Lo/ot$Activity;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_0
    return-object v0

    .line 707
    :cond_8
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 635
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 743
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
    .locals 1

    .line 714
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->w()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    return-object v0
.end method

.method public w()J
    .locals 2

    .line 735
    invoke-virtual {p0}, Lo/ot;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/ot;->o:Lo/oF;

    iget-object v1, p0, Lo/ot;->i:Ljava/io/File;

    .line 736
    invoke-virtual {v0, v1}, Lo/oF;->c(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ot;->o:Lo/oF;

    .line 737
    invoke-virtual {v0}, Lo/oF;->d()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public x()J
    .locals 2

    .line 727
    invoke-virtual {p0}, Lo/ot;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/ot;->o:Lo/oF;

    iget-object v1, p0, Lo/ot;->i:Ljava/io/File;

    .line 728
    invoke-virtual {v0, v1}, Lo/oF;->c(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ot;->o:Lo/oF;

    .line 729
    invoke-virtual {v0}, Lo/oF;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
    .locals 1

    .line 721
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    return-object v0
.end method

.method public z()J
    .locals 11

    .line 749
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->K()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->J()J

    move-result-wide v3

    .line 751
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->H()J

    move-result-wide v5

    .line 752
    iget-object v0, p0, Lo/ot;->c:Lo/oC;

    invoke-interface {v0}, Lo/oC;->Q()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v0, v3, v9

    if-lez v0, :cond_1

    cmp-long v0, v5, v9

    if-gtz v0, :cond_1

    cmp-long v0, v7, v9

    if-gtz v0, :cond_0

    goto :goto_0

    .line 756
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sub-long/2addr v7, v0

    return-wide v7

    :cond_1
    :goto_0
    return-wide v1
.end method
