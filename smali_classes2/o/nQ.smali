.class public Lo/nQ;
.super Lo/bV;
.source ""

# interfaces
.implements Lo/pq;
.implements Lo/nS;
.implements Lo/bN;
.implements Lo/nF$StateListAnimator;
.implements Lo/nO$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/nQ$Activity;,
        Lo/nQ$ActionBar;,
        Lo/nQ$Application;
    }
.end annotation


# instance fields
.field private A:I

.field private B:J

.field private final C:Lo/nW;

.field private final D:Lo/nQ$ActionBar;

.field private final E:Lo/pa$Activity;

.field private final F:Lo/oz;

.field private final G:Lo/nI$Activity;

.field private H:Lo/nZ;

.field private I:Lo/oH;

.field private final a:Lo/H;

.field private final b:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private final c:Lo/iu;

.field private final d:Lo/cz;

.field private final e:Landroid/content/Context;

.field private f:Lo/FragmentHostCallback;

.field private final g:Lo/Ck;

.field private final h:Lcom/netflix/mediaclient/service/NetflixPowerManager;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ov;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lo/pM;

.field private k:Lo/oQ;

.field private l:Lo/oL;

.field private m:Landroid/os/HandlerThread;

.field private n:Lo/nQ$Application;

.field private final o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

.field private p:Z

.field private final q:Lo/nP;

.field private r:Lo/nI;

.field private final s:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lo/pq$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lo/nK;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Lo/nF;

.field private x:Lo/nL;

.field private y:Lo/nO;

.field private final z:Lo/pa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/pM;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/iu;Lo/H;Lcom/netflix/mediaclient/service/NetflixPowerManager;)V
    .locals 2

    .line 170
    invoke-direct {p0}, Lo/bV;-><init>()V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/nQ;->i:Ljava/util/List;

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lo/nQ;->p:Z

    .line 150
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lo/nQ;->s:Ljava/util/Map;

    .line 153
    iput-boolean v0, p0, Lo/nQ;->u:Z

    .line 157
    new-instance v0, Lo/nW;

    invoke-direct {v0}, Lo/nW;-><init>()V

    iput-object v0, p0, Lo/nQ;->C:Lo/nW;

    .line 160
    new-instance v0, Lo/nQ$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/nQ$ActionBar;-><init>(Lo/nQ;Lo/nQ$4;)V

    iput-object v0, p0, Lo/nQ;->D:Lo/nQ$ActionBar;

    .line 163
    new-instance v0, Lo/oH;

    invoke-direct {v0}, Lo/oH;-><init>()V

    iput-object v0, p0, Lo/nQ;->I:Lo/oH;

    .line 195
    new-instance v0, Lo/nQ$11;

    invoke-direct {v0, p0}, Lo/nQ$11;-><init>(Lo/nQ;)V

    iput-object v0, p0, Lo/nQ;->F:Lo/oz;

    .line 1677
    new-instance v0, Lo/nQ$9;

    invoke-direct {v0, p0}, Lo/nQ$9;-><init>(Lo/nQ;)V

    iput-object v0, p0, Lo/nQ;->E:Lo/pa$Activity;

    .line 1721
    new-instance v0, Lo/nQ$10;

    invoke-direct {v0, p0}, Lo/nQ$10;-><init>(Lo/nQ;)V

    iput-object v0, p0, Lo/nQ;->G:Lo/nI$Activity;

    .line 171
    iput-object p3, p0, Lo/nQ;->d:Lo/cz;

    .line 172
    iput-object p2, p0, Lo/nQ;->j:Lo/pM;

    .line 173
    iput-object p4, p0, Lo/nQ;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 174
    iput-object p1, p0, Lo/nQ;->e:Landroid/content/Context;

    .line 175
    iput-object p5, p0, Lo/nQ;->c:Lo/iu;

    .line 176
    iput-object p6, p0, Lo/nQ;->a:Lo/H;

    .line 177
    iput-object p7, p0, Lo/nQ;->h:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    .line 178
    invoke-direct {p0}, Lo/nQ;->z()V

    .line 179
    new-instance p1, Lo/pa;

    iget-object p2, p0, Lo/nQ;->e:Landroid/content/Context;

    iget-object p3, p0, Lo/nQ;->m:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    iget-object p5, p0, Lo/nQ;->E:Lo/pa$Activity;

    invoke-direct {p1, p2, p3, p5}, Lo/pa;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/pa$Activity;)V

    iput-object p1, p0, Lo/nQ;->z:Lo/pa;

    .line 180
    new-instance p1, Lo/oY;

    iget-object p2, p0, Lo/nQ;->e:Landroid/content/Context;

    invoke-direct {p1, p2}, Lo/oY;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    .line 181
    const-class p1, Lo/Ck;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Ck;

    iput-object p1, p0, Lo/nQ;->g:Lo/Ck;

    .line 182
    iget-object p1, p0, Lo/nQ;->g:Lo/Ck;

    iget-object p2, p0, Lo/nQ;->n:Lo/nQ$Application;

    invoke-interface {p1, p2}, Lo/Ck;->a(Landroid/os/Handler;)V

    .line 183
    iget-object p1, p0, Lo/nQ;->g:Lo/Ck;

    invoke-interface {p1, p0}, Lo/Ck;->b(Lo/nS;)Lo/nP;

    move-result-object p1

    iput-object p1, p0, Lo/nQ;->q:Lo/nP;

    .line 184
    iget-object p1, p0, Lo/nQ;->g:Lo/Ck;

    invoke-interface {p1, p0, p4}, Lo/Ck;->a(Lo/nS;Lcom/netflix/mediaclient/service/user/UserAgent;)Lo/nK;

    move-result-object p1

    iput-object p1, p0, Lo/nQ;->t:Lo/nK;

    .line 185
    iget-object p1, p0, Lo/nQ;->n:Lo/nQ$Application;

    new-instance p2, Lo/nQ$4;

    invoke-direct {p2, p0}, Lo/nQ$4;-><init>(Lo/nQ;)V

    invoke-virtual {p1, p2}, Lo/nQ$Application;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private A()V
    .locals 4

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 738
    iget-object v1, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ov;

    .line 739
    invoke-interface {v2}, Lo/ov;->D()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lo/ph;->a(Lo/ov;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 740
    invoke-interface {v2}, Lo/ov;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 743
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 745
    invoke-direct {p0, v1, v2, v2}, Lo/nQ;->d(Ljava/lang/String;Lo/nE;Lo/nH;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private B()V
    .locals 3

    .line 675
    iget-object v0, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ov;

    const/4 v2, 0x0

    .line 676
    invoke-interface {v1, v2}, Lo/ov;->c(Lo/ov$TaskDescription;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private C()V
    .locals 1

    .line 791
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lo/nQ;->c(Ljava/util/Map;)V

    return-void
.end method

.method private D()V
    .locals 3

    .line 785
    iget-object v0, p0, Lo/nQ;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lo/nQ;->a(Landroid/content/Context;)V

    .line 786
    iget-object v0, p0, Lo/nQ;->c:Lo/iu;

    iget-object v1, p0, Lo/nQ;->D:Lo/nQ$ActionBar;

    iget v2, p0, Lo/nQ;->A:I

    invoke-interface {v0, v1, v2}, Lo/iu;->c(Lo/iw;I)V

    return-void
.end method

.method private E()V
    .locals 3

    .line 895
    iget-object v0, p0, Lo/nQ;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->i()Ljava/lang/String;

    move-result-object v0

    .line 896
    iget-object v1, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->j()Ljava/lang/String;

    move-result-object v1

    .line 897
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "nf_offlineAgent"

    const-string v2, "updatePrimaryProfileGuidIfMissing %s"

    .line 899
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method private F()V
    .locals 2

    .line 808
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {v0, v1}, Lo/nQ$Application;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 810
    iput-object v1, p0, Lo/nQ;->n:Lo/nQ$Application;

    .line 812
    :cond_0
    iget-object v0, p0, Lo/nQ;->m:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 814
    iput-object v1, p0, Lo/nQ;->m:Landroid/os/HandlerThread;

    .line 815
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    return-void
.end method

.method private G()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;
    .locals 3

    .line 1116
    invoke-virtual {p0}, Lo/nQ;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    .line 1117
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download_video_quality"

    .line 1116
    invoke-static {v0, v2, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v0

    return-object v0
.end method

.method private H()V
    .locals 5

    .line 1127
    iget-object v0, p0, Lo/nQ;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v0

    const-string v1, "nf_offlineAgent"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/nQ;->u:Z

    if-eqz v0, :cond_1

    .line 1128
    iget-object v0, p0, Lo/nQ;->r:Lo/nI;

    invoke-virtual {v0}, Lo/nI;->g()Lo/ov;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    new-array v3, v3, [Ljava/lang/Object;

    .line 1130
    invoke-interface {v0}, Lo/ov;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "starting the download for %s"

    invoke-static {v1, v2, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1131
    invoke-interface {v0}, Lo/ov;->c()V

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 1133
    iget-object v3, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "no downloadable item found, count=%d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    const-string v0, "startDownloadIfAllowed user is not logged in or offline not available"

    .line 1136
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private I()V
    .locals 3

    .line 957
    iget-object v0, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-static {v0}, Lo/nT;->d(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 959
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 960
    iget-object v1, p0, Lo/nQ;->n:Lo/nQ$Application;

    new-instance v2, Lo/nQ$12;

    invoke-direct {v2, p0, v0}, Lo/nQ$12;-><init>(Lo/nQ;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lo/nQ$Application;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string v1, "nf_offlineAgent"

    const-string v2, "buildNewUiList already in worker.. regenerate"

    .line 968
    invoke-static {v1, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-direct {p0, v0}, Lo/nQ;->c(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private J()V
    .locals 2

    const-string v0, "nf_offlineAgent"

    const-string v1, "saveToRegistry"

    .line 1253
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1254
    iput-boolean v0, p0, Lo/nQ;->p:Z

    .line 1255
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    new-instance v1, Lo/nQ$5;

    invoke-direct {v1, p0}, Lo/nQ$5;-><init>(Lo/nQ;)V

    invoke-virtual {v0, v1}, Lo/nQ$Application;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private K()V
    .locals 7

    .line 1144
    iget-object v0, p0, Lo/nQ;->f:Lo/FragmentHostCallback;

    if-eqz v0, :cond_0

    return-void

    .line 1147
    :cond_0
    iget-object v0, p0, Lo/nQ;->d:Lo/cz;

    invoke-interface {v0}, Lo/cz;->K()I

    move-result v4

    .line 1148
    iget-object v1, p0, Lo/nQ;->a:Lo/H;

    new-instance v2, Lo/MediaRouteActionProvider;

    invoke-direct {v2}, Lo/MediaRouteActionProvider;-><init>()V

    new-instance v3, Lo/nv;

    iget-object v0, p0, Lo/nQ;->e:Landroid/content/Context;

    new-instance v5, Lo/yd;

    iget-object v6, p0, Lo/nQ;->a:Lo/H;

    invoke-direct {v5, v6}, Lo/yd;-><init>(Lo/H;)V

    invoke-direct {v3, v0, v5}, Lo/nv;-><init>(Landroid/content/Context;Lo/ListActivity;)V

    const/4 v5, 0x0

    const-string v6, "offline"

    invoke-interface/range {v1 .. v6}, Lo/H;->c(Lo/ContextImpl;Lo/DownloadManager;IZLjava/lang/String;)Lo/FragmentHostCallback;

    move-result-object v0

    iput-object v0, p0, Lo/nQ;->f:Lo/FragmentHostCallback;

    .line 1149
    iget-object v0, p0, Lo/nQ;->f:Lo/FragmentHostCallback;

    invoke-virtual {v0}, Lo/FragmentHostCallback;->a()V

    return-void
.end method

.method private L()V
    .locals 6

    .line 1498
    invoke-direct {p0}, Lo/nQ;->Q()Z

    move-result v0

    const-string v1, "nf_offlineAgent"

    if-eqz v0, :cond_3

    .line 1499
    iget-object v0, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1500
    :goto_0
    iget-object v4, p0, Lo/nQ;->e:Landroid/content/Context;

    invoke-static {v4}, Lo/nT;->c(Landroid/content/Context;)I

    move-result v4

    if-eqz v0, :cond_1

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    .line 1502
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "Not calling sync, already did %d syncs"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 1504
    :cond_1
    iget-object v5, p0, Lo/nQ;->e:Landroid/content/Context;

    invoke-static {v5}, Lo/nT;->d(Landroid/content/Context;)V

    if-eqz v0, :cond_2

    add-int/2addr v4, v3

    new-array v0, v3, [Ljava/lang/Object;

    .line 1507
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "zeroPlayableSyncCount %d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1508
    iget-object v0, p0, Lo/nQ;->e:Landroid/content/Context;

    invoke-static {v0, v4}, Lo/nT;->e(Landroid/content/Context;I)V

    .line 1510
    :cond_2
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    new-instance v1, Lo/nQ$2;

    invoke-direct {v1, p0}, Lo/nQ$2;-><init>(Lo/nQ;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lo/nQ$Application;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    const-string v0, "Not calling sync, too early"

    .line 1518
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private M()V
    .locals 5

    const-string v0, "nf_offlineAgent"

    const-string v1, "buildFalkorDataAndPlayableListFromPersistentStore"

    .line 1181
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v0, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1183
    iget-object v0, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    iget-object v1, p0, Lo/nQ;->d:Lo/cz;

    invoke-interface {v1}, Lo/cz;->V()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->a(Ljava/lang/String;)V

    .line 1185
    :cond_0
    iget-object v0, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1186
    invoke-direct {p0}, Lo/nQ;->K()V

    .line 1188
    :cond_1
    iget-object v0, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1189
    iget-object v0, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->e()Ljava/util/List;

    move-result-object v0

    .line 1190
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/pe;

    .line 1191
    invoke-virtual {v1}, Lo/pe;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/oC;

    .line 1192
    invoke-virtual {v1}, Lo/pe;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lo/nQ;->c(Ljava/lang/String;Lo/oC;)Lo/ov;

    move-result-object v3

    .line 1193
    iget-object v4, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1196
    :cond_3
    invoke-virtual {p0}, Lo/nQ;->r()V

    return-void
.end method

.method private N()Z
    .locals 1

    .line 1443
    iget-boolean v0, p0, Lo/nQ;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/nQ;->d:Lo/cz;

    invoke-interface {v0}, Lo/cz;->S()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/nQ;->r:Lo/nI;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private O()V
    .locals 3

    .line 1921
    iget-object v0, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-static {v0}, Lo/nG;->c(Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;)Ljava/util/Map;

    move-result-object v0

    .line 1923
    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lo/nN;

    invoke-direct {v2, p0, v0}, Lo/nN;-><init>(Lo/nQ;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private P()V
    .locals 2

    .line 1538
    iget-object v0, p0, Lo/nQ;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v1, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-static {v0, v1}, Lo/nT;->e(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1540
    invoke-direct {p0, v0}, Lo/nQ;->a(Z)V

    .line 1541
    iget-object v0, p0, Lo/nQ;->q:Lo/nP;

    invoke-interface {v0}, Lo/nP;->d()V

    :cond_0
    return-void
.end method

.method private Q()Z
    .locals 2

    .line 1527
    iget-object v0, p0, Lo/nQ;->d:Lo/cz;

    invoke-interface {v0}, Lo/cz;->q()Z

    move-result v0

    const-string v1, "nf_offlineAgent"

    if-eqz v0, :cond_0

    const-string v0, "ESN migration required, do license sync if any license exist."

    .line 1528
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "ESN migration is NOT required, regular workflow."

    .line 1531
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v0, p0, Lo/nQ;->e:Landroid/content/Context;

    invoke-static {v0}, Lo/nT;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private R()V
    .locals 3

    const-string v0, "nf_offlineAgent"

    const-string v1, "syncLicensesToServer"

    .line 1897
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    iget-object v0, p0, Lo/nQ;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1901
    :cond_0
    invoke-direct {p0}, Lo/nQ;->O()V

    .line 1903
    iget-object v0, p0, Lo/nQ;->l:Lo/oL;

    iget-object v1, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->o()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lo/nT;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lo/nQ$6;

    invoke-direct {v2, p0}, Lo/nQ$6;-><init>(Lo/nQ;)V

    invoke-interface {v0, v1, v2}, Lo/oL;->a(Ljava/util/List;Lo/oL$StateListAnimator;)V

    return-void
.end method

.method private S()V
    .locals 2

    .line 1850
    iget-object v0, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->k()V

    .line 1851
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.offline.osv.space.usage.updated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1852
    iget-object v1, p0, Lo/nQ;->e:Landroid/content/Context;

    invoke-static {v1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method private synthetic W()V
    .locals 1

    const/4 v0, 0x0

    .line 776
    iput-object v0, p0, Lo/nQ;->H:Lo/nZ;

    return-void
.end method

.method static synthetic a(Lo/nQ;)Lo/pa;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/nQ;->z:Lo/pa;

    return-object p0
.end method

.method private a(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1832
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_offlineAgent"

    const-string v2, "handleChangeCurrentOfflineStorageVolume newVolumeIndex=%d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1833
    iget-object v0, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-static {v0}, Lo/nT;->c(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "handleChangeCurrentOfflineStorageVolume can\'t change volume while active create operations"

    .line 1835
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1838
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0}, Lo/nQ;->e(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z

    move-result v0

    .line 1839
    iget-object v1, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1841
    iget-object p1, p0, Lo/nQ;->e:Landroid/content/Context;

    invoke-direct {p0, p1}, Lo/nQ;->a(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    .line 1843
    invoke-direct {p0}, Lo/nQ;->H()V

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "nf_offlineAgent"

    if-eqz p1, :cond_0

    .line 1272
    :try_start_0
    iget-object p1, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->b()V
    :try_end_0
    .catch Lcom/netflix/mediaclient/service/offline/registry/PersistRegistryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "doSaveToRegistryInBGThread can\'t persist registry"

    .line 1274
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    invoke-virtual {p0}, Lo/nQ;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/registry/PersistRegistryException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-static {v0, v2, v1}, Lo/oS;->d(Lo/zS;Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->aY:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, v0}, Lo/nQ;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1277
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/registry/PersistRegistryException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1278
    iget-wide v0, p0, Lo/nQ;->B:J

    .line 1279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lo/nQ;->B:J

    .line 1280
    iget-wide v2, p0, Lo/nQ;->B:J

    sub-long/2addr v2, v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long p1, v2, v0

    if-ltz p1, :cond_1

    .line 1282
    iget-object p1, p0, Lo/nQ;->E:Lo/pa$Activity;

    invoke-interface {p1}, Lo/pa$Activity;->e()V

    goto :goto_0

    :cond_0
    const-string p1, "doSaveToRegistryInBGThread context is null"

    .line 1286
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Lo/nS$ActionBar;)V
    .locals 2

    .line 1243
    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/nQ$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lo/nQ$1;-><init>(Lo/nQ;Lo/nS$ActionBar;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 380
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_offlineAgent"

    const-string v3, "uncaughtException threadName=%s"

    invoke-static {v1, p2, v3, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    const-string v0, "uncaughtException stopping all downloads"

    .line 382
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lo/nQ$Application;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 384
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0}, Lo/nQ;->e(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z

    .line 388
    iget-object v0, p0, Lo/nQ;->r:Lo/nI;

    invoke-virtual {v0}, Lo/nI;->b()V

    const-string v0, "uncaughtException stopped all downloads"

    .line 389
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "setUncaughtExceptionHandler error stopping downloads"

    .line 391
    invoke-static {v1, v0, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    const-string v0, "passing to defaultExceptionHandler"

    .line 393
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 634
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 635
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 636
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move-object v4, v0

    const/4 v0, 0x0

    .line 637
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v0, v5, :cond_3

    .line 638
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v3

    const-string v7, "nf_offlineAgent"

    const-string v8, "handleDeletePlayables playableId=%s"

    .line 639
    invoke-static {v7, v8, v6}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 640
    iget-object v6, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-static {v5, v6}, Lo/nT;->a(Ljava/lang/String;Ljava/util/List;)Lo/ov;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v5, "handleDeletePlayables offlinePlayable not found"

    .line 642
    invoke-static {v7, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 645
    :cond_0
    invoke-interface {v6}, Lo/ov;->a()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lo/nQ;->v:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v4, "handleDeletePlayables not deleting in-flight item"

    .line 646
    invoke-static {v7, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v4, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v5, Lcom/netflix/mediaclient/StatusCode;->bk:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v4, v5}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_1

    .line 650
    :cond_1
    invoke-interface {v6}, Lo/ov;->o()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lo/nQ;->c(Ljava/lang/String;Lo/nH;)V

    .line 652
    iget-object v7, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 653
    invoke-interface {v6}, Lo/ov;->e()Lo/oC;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-interface {v6, v3}, Lo/ov;->d(Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v7

    .line 656
    invoke-interface {v4}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v4, v7

    .line 659
    :cond_2
    invoke-static {v7, v6}, Lo/nT;->a(Lcom/netflix/mediaclient/android/app/Status;Lo/ov;)V

    .line 660
    iget-object v6, p0, Lo/nQ;->r:Lo/nI;

    invoke-virtual {v6, v5}, Lo/nI;->d(Ljava/lang/String;)V

    .line 661
    iget-object v6, p0, Lo/nQ;->q:Lo/nP;

    invoke-interface {v6, v5}, Lo/nP;->b(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 664
    :cond_3
    iget-object v0, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v0, v1, v6}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->a(Ljava/util/List;Z)V

    .line 665
    iget-object v0, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-static {v0}, Lo/nT;->d(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 666
    iget-object v1, p0, Lo/nQ;->g:Lo/Ck;

    invoke-interface {v1, v0, v2}, Lo/Ck;->a(Ljava/util/Map;Ljava/util/List;)V

    .line 667
    invoke-direct {p0, p1, v4}, Lo/nQ;->a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 668
    invoke-direct {p0}, Lo/nQ;->H()V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 1382
    iget-object v0, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lo/nW;->d(Landroid/os/Handler;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private a(Lo/Bi;I)V
    .locals 2

    .line 1356
    iget-object v0, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lo/nW;->c(Landroid/os/Handler;Lo/Bi;I)V

    return-void
.end method

.method static synthetic a(Lo/nQ;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/nQ;->a(I)V

    return-void
.end method

.method static synthetic a(Lo/nQ;J)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lo/nQ;->b(J)V

    return-void
.end method

.method static synthetic a(Lo/nQ;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/nQ;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method static synthetic a(Lo/nQ;Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/nQ;->h(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lo/nQ;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lo/nQ;->e(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic a(Lo/nQ;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lo/nQ;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lo/nQ;Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lo/nQ;->b(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private a(Lo/ov;)V
    .locals 2

    .line 1399
    iget-object v0, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/nW;->b(Landroid/os/Handler;Lo/Bi;)V

    return-void
.end method

.method private a(Z)V
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 694
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_offlineAgent"

    const-string v4, "handleDeleteAllRequest deletePermanently=%b"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 695
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    .line 696
    invoke-direct {p0}, Lo/nQ;->C()V

    .line 697
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 698
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 699
    iget-object v6, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/ov;

    .line 700
    invoke-interface {v7}, Lo/ov;->a()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lo/nQ;->v:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v7, "handleDeleteRequest not deleting in-flight item"

    .line 701
    invoke-static {v2, v7}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 708
    :cond_0
    invoke-interface {v7}, Lo/ov;->o()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lo/nQ;->c(Ljava/lang/String;Lo/nH;)V

    .line 709
    invoke-interface {v7}, Lo/ov;->e()Lo/oC;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-interface {v7, p1}, Lo/ov;->d(Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v8

    .line 712
    invoke-interface {v8}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 713
    invoke-interface {v7}, Lo/ov;->a()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v3

    aput-object v8, v1, v0

    const-string v9, "handleDeleteAllRequest can\'t delete playableId=%s status=%s"

    invoke-static {v2, v9, v1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v1, v8

    .line 716
    :cond_1
    invoke-static {v8, v7}, Lo/nT;->a(Lcom/netflix/mediaclient/android/app/Status;Lo/ov;)V

    goto :goto_0

    .line 718
    :cond_2
    iget-object v2, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    const-string v3, ""

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->d(Ljava/lang/String;)V

    .line 719
    iget-object v2, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 720
    iget-object v2, p0, Lo/nQ;->r:Lo/nI;

    invoke-virtual {v2}, Lo/nI;->a()V

    .line 721
    iget-object v2, p0, Lo/nQ;->q:Lo/nP;

    invoke-interface {v2}, Lo/nP;->f()V

    if-eqz p1, :cond_3

    .line 723
    iget-object v2, p0, Lo/nQ;->e:Landroid/content/Context;

    invoke-static {v2}, Lo/nT;->b(Landroid/content/Context;)V

    .line 725
    :cond_3
    iget-object v2, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    xor-int/2addr p1, v0

    invoke-interface {v2, v4, p1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->a(Ljava/util/List;Z)V

    .line 728
    invoke-virtual {p0}, Lo/nQ;->r()V

    .line 729
    invoke-direct {p0, v1}, Lo/nQ;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 731
    iget-object p1, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-static {p1}, Lo/nT;->d(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 732
    iget-object v0, p0, Lo/nQ;->g:Lo/Ck;

    invoke-interface {v0, p1, v5}, Lo/Ck;->a(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lo/nQ;Z)Z
    .locals 0

    .line 113
    iput-boolean p1, p0, Lo/nQ;->u:Z

    return p1
.end method

.method static synthetic b(Lo/nQ;I)I
    .locals 0

    .line 113
    iput p1, p0, Lo/nQ;->A:I

    return p1
.end method

.method static synthetic b(Lo/nQ;)Lo/nI;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/nQ;->r:Lo/nI;

    return-object p0
.end method

.method static synthetic b(Lo/nQ;Lo/nO;)Lo/nO;
    .locals 0

    .line 113
    iput-object p1, p0, Lo/nQ;->y:Lo/nO;

    return-object p1
.end method

.method private b(J)V
    .locals 1

    .line 1876
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {v0, p2, p1}, Lo/nQ$Application;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 1

    .line 1168
    invoke-direct {p0, p1}, Lo/nQ;->e(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "nf_offlineAgent"

    const-string v0, "stopAllDownloadsAndPersistRegistry something was stopped"

    .line 1170
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-virtual {p0}, Lo/nQ;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/nQ;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lo/nQ;J)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lo/nQ;->c(J)V

    return-void
.end method

.method static synthetic b(Lo/nQ;Ljava/lang/Long;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/nQ;->c(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic b(Lo/nQ;Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/nQ;->m(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lo/nQ;Ljava/util/List;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/nQ;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lo/nQ;Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lo/nQ;->c(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic b(Lo/nQ;Lo/pq$Application;Lo/pq$ActionBar;JLjava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 113
    invoke-direct/range {p0 .. p6}, Lo/nQ;->d(Lo/pq$Application;Lo/pq$ActionBar;JLjava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private b(Lo/ov;)V
    .locals 5

    .line 1387
    invoke-interface {p1}, Lo/ov;->y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    .line 1389
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->n:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->o:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1390
    :cond_1
    :goto_0
    invoke-interface {p1}, Lo/ov;->e()Lo/oC;

    move-result-object v1

    .line 1391
    invoke-static {v1}, Lo/nT;->d(Lo/oC;)Ljava/lang/String;

    move-result-object v1

    .line 1393
    :goto_1
    invoke-virtual {p0}, Lo/nQ;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v2

    invoke-interface {p1}, Lo/ov;->f()Lo/oC;

    move-result-object v3

    invoke-interface {p1}, Lo/ov;->y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lo/oS;->b(Lo/zS;Lo/or;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;Ljava/lang/String;)V

    .line 1394
    iget-object v1, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0}, Lo/nW;->d(Landroid/os/Handler;Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-void
.end method

.method private b(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1414
    iget-object v0, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lo/nW;->c(Landroid/os/Handler;Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic b(Lo/nQ;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/nQ;->e(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z

    move-result p0

    return p0
.end method

.method private c(Ljava/lang/String;Lo/oC;)Lo/ov;
    .locals 13

    .line 905
    new-instance v12, Lo/ot;

    invoke-virtual {p0}, Lo/nQ;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lo/oF;

    invoke-direct {v3}, Lo/oF;-><init>()V

    .line 907
    invoke-interface {p2}, Lo/oC;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/pi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lo/nQ;->f:Lo/FragmentHostCallback;

    iget-object v6, p0, Lo/nQ;->k:Lo/oQ;

    iget-object v7, p0, Lo/nQ;->l:Lo/oL;

    iget-object v8, p0, Lo/nQ;->F:Lo/oz;

    iget-object v9, p0, Lo/nQ;->m:Landroid/os/HandlerThread;

    .line 909
    invoke-virtual {p0}, Lo/nQ;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v10

    iget-object v11, p0, Lo/nQ;->I:Lo/oH;

    move-object v0, v12

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lo/ot;-><init>(Landroid/content/Context;Lo/oC;Lo/oF;Ljava/lang/String;Lo/FragmentHostCallback;Lo/oQ;Lo/oL;Lo/oz;Landroid/os/HandlerThread;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Lo/oH;)V

    return-object v12
.end method

.method private c(ILjava/lang/String;)V
    .locals 1

    .line 1423
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    invoke-virtual {v0, p1, p2}, Lo/nQ$Application;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private c(J)V
    .locals 2

    .line 1871
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {v0, p2, p1}, Lo/nQ$Application;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1872
    iget-object p2, p0, Lo/nQ;->n:Lo/nQ$Application;

    const-wide/16 v0, 0x7530

    invoke-virtual {p2, p1, v0, v1}, Lo/nQ$Application;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private c(Ljava/lang/Long;)V
    .locals 1

    .line 1824
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-static {p1, v0}, Lo/nT;->a(Ljava/lang/String;Ljava/util/List;)Lo/ov;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1826
    invoke-interface {p1}, Lo/ov;->d()V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;Lo/nH;)V
    .locals 3

    .line 681
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    if-eqz p2, :cond_0

    .line 683
    invoke-virtual {p2}, Lo/nH;->e()Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 684
    new-instance v2, Lcom/netflix/cl/model/event/session/action/android/RemoveCachedVideoWithFeature;

    .line 686
    invoke-virtual {p2}, Lo/nH;->e()Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v2, p2, v0}, Lcom/netflix/cl/model/event/session/action/android/RemoveCachedVideoWithFeature;-><init>(Lcom/netflix/cl/model/android/CachedVideoRemovalFeature;Ljava/lang/Long;)V

    .line 684
    invoke-static {p1, v2}, Lcom/netflix/cl/util/CLUtils;->startNamedSession(Ljava/lang/String;Lcom/netflix/cl/model/event/session/Session;)Z

    goto :goto_0

    .line 688
    :cond_0
    new-instance p2, Lcom/netflix/cl/model/event/session/action/RemoveCachedVideo;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/netflix/cl/model/event/session/action/RemoveCachedVideo;-><init>(Ljava/lang/Long;)V

    invoke-static {p1, p2}, Lcom/netflix/cl/util/CLUtils;->startNamedSession(Ljava/lang/String;Lcom/netflix/cl/model/event/session/Session;)Z

    :goto_0
    return-void
.end method

.method private c(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Bi;",
            ">;)V"
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lo/nQ;->g:Lo/Ck;

    invoke-interface {v0, p1}, Lo/Ck;->b(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic c(Lo/nQ;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/nQ;->e(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V

    return-void
.end method

.method static synthetic c(Lo/nQ;Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/nQ;->l(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lo/nQ;Ljava/lang/String;Lo/nE;Lo/nH;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lo/nQ;->d(Ljava/lang/String;Lo/nE;Lo/nH;)V

    return-void
.end method

.method static synthetic c(Lo/nQ;Ljava/util/Map;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/nQ;->c(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic c(Lo/nQ;Lo/Bi;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lo/nQ;->a(Lo/Bi;I)V

    return-void
.end method

.method static synthetic c(Lo/nQ;Lo/ov;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/nQ;->b(Lo/ov;)V

    return-void
.end method

.method static synthetic c(Lo/nQ;Z)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/nQ;->a(Z)V

    return-void
.end method

.method private c(Lo/ov;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1419
    iget-object v0, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lo/nW;->e(Landroid/os/Handler;Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic c(Lo/nQ;)Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lo/nQ;->u:Z

    return p0
.end method

.method private c(Lo/ov;)Z
    .locals 1

    .line 531
    iget-object v0, p0, Lo/nQ;->r:Lo/nI;

    invoke-virtual {v0, p1}, Lo/nI;->a(Lo/ov;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    invoke-interface {p1}, Lo/ov;->c()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1404
    iget-object v0, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/nW;->a(Landroid/os/Handler;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private d(Ljava/lang/String;Lo/nE;Lo/nH;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "nf_offlineAgent"

    const-string v4, "handleDeleteRequest playableId=%s"

    .line 597
    invoke-static {v3, v4, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 598
    iget-object v1, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-static {p1, v1}, Lo/nT;->a(Ljava/lang/String;Ljava/util/List;)Lo/ov;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "handleDeleteRequest offlinePlayable not found"

    .line 600
    invoke-static {v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 603
    :cond_0
    invoke-interface {v1}, Lo/ov;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lo/nQ;->v:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p2, "handleDeleteRequest not deleting in-flight item"

    .line 604
    invoke-static {v3, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance p2, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bk:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p2, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/nQ;->e(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Lo/nE;)V

    .line 608
    iget-object p2, p0, Lo/nQ;->t:Lo/nK;

    invoke-interface {p2, p1, v1, p3}, Lo/nK;->c(Ljava/lang/String;Lo/Bi;Lo/nH;)V

    goto :goto_0

    .line 613
    :cond_1
    invoke-interface {v1}, Lo/ov;->o()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lo/nQ;->c(Ljava/lang/String;Lo/nH;)V

    .line 615
    iget-object v3, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 616
    invoke-interface {v1, v2}, Lo/ov;->d(Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    .line 617
    iget-object v3, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v1}, Lo/ov;->e()Lo/oC;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->d(Lo/oC;Z)V

    .line 618
    invoke-static {v2, v1}, Lo/nT;->a(Lcom/netflix/mediaclient/android/app/Status;Lo/ov;)V

    .line 620
    iget-object v0, p0, Lo/nQ;->r:Lo/nI;

    invoke-virtual {v0, p1}, Lo/nI;->d(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lo/nQ;->q:Lo/nP;

    invoke-interface {v0, p1}, Lo/nP;->b(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lo/nQ;->t:Lo/nK;

    invoke-interface {v0, p1, v1, p3}, Lo/nK;->c(Ljava/lang/String;Lo/Bi;Lo/nH;)V

    if-nez p2, :cond_2

    .line 624
    iget-object p3, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-static {p3}, Lo/nT;->d(Ljava/util/List;)Ljava/util/Map;

    move-result-object p3

    .line 625
    iget-object v0, p0, Lo/nQ;->g:Lo/Ck;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lo/Ck;->a(Ljava/util/Map;Ljava/util/List;)V

    .line 627
    :cond_2
    invoke-direct {p0, p1, v2, p2}, Lo/nQ;->e(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Lo/nE;)V

    .line 628
    invoke-direct {p0}, Lo/nQ;->H()V

    :goto_0
    return-void
.end method

.method private synthetic d(Ljava/util/Map;)V
    .locals 1

    .line 1923
    iget-object v0, p0, Lo/nQ;->g:Lo/Ck;

    invoke-interface {v0, p1}, Lo/Ck;->a(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic d(Lo/nQ;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/nQ;->H()V

    return-void
.end method

.method static synthetic d(Lo/nQ;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/nQ;->e(I)V

    return-void
.end method

.method static synthetic d(Lo/nQ;Ljava/util/Map;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/nQ;->e(Ljava/util/Map;)V

    return-void
.end method

.method private d(Lo/pq$Application;Lo/pq$ActionBar;JLjava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 10

    .line 1888
    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v9, Lo/nQ$7;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p1

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lo/nQ$7;-><init>(Lo/nQ;Lo/pq$ActionBar;JLo/pq$Application;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private e(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;)Lcom/netflix/cl/model/DownloadType;
    .locals 1

    if-nez p1, :cond_0

    .line 473
    sget-object p1, Lcom/netflix/cl/model/DownloadType;->unknown:Lcom/netflix/cl/model/DownloadType;

    return-object p1

    .line 477
    :cond_0
    sget-object v0, Lo/nQ$13;->e:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    .line 487
    sget-object p1, Lcom/netflix/cl/model/DownloadType;->unknown:Lcom/netflix/cl/model/DownloadType;

    return-object p1

    .line 482
    :cond_1
    sget-object p1, Lcom/netflix/cl/model/DownloadType;->unknown:Lcom/netflix/cl/model/DownloadType;

    return-object p1

    .line 481
    :cond_2
    sget-object p1, Lcom/netflix/cl/model/DownloadType;->downloadedForYou:Lcom/netflix/cl/model/DownloadType;

    return-object p1

    .line 480
    :cond_3
    sget-object p1, Lcom/netflix/cl/model/DownloadType;->userInitiated:Lcom/netflix/cl/model/DownloadType;

    return-object p1

    .line 479
    :cond_4
    sget-object p1, Lcom/netflix/cl/model/DownloadType;->smartDownload:Lcom/netflix/cl/model/DownloadType;

    return-object p1

    .line 478
    :cond_5
    sget-object p1, Lcom/netflix/cl/model/DownloadType;->scheduled:Lcom/netflix/cl/model/DownloadType;

    return-object p1
.end method

.method static synthetic e(Lo/nQ;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    return-object p0
.end method

.method private e(I)V
    .locals 1

    .line 1427
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    invoke-virtual {v0, p1}, Lo/nQ$Application;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private e(J)V
    .locals 1

    .line 1880
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x9

    invoke-virtual {v0, p2, p1}, Lo/nQ$Application;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1409
    iget-object v0, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/nW;->d(Landroid/os/Handler;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private e(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V
    .locals 6

    .line 429
    iget-object v0, p1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->c:Ljava/lang/String;

    .line 430
    invoke-direct {p0}, Lo/nQ;->K()V

    .line 434
    iget-object v1, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lo/nT;->a(Ljava/lang/String;Ljava/util/List;)Lo/ov;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "nf_offlineAgent"

    if-eqz v1, :cond_0

    .line 435
    invoke-interface {v1}, Lo/ov;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v4, v5, :cond_0

    const-string v4, "handleCreateRequest removing CreateFailed item"

    .line 436
    invoke-static {v3, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v4, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 438
    iget-object v4, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v1}, Lo/ov;->e()Lo/oC;

    move-result-object v1

    invoke-interface {v4, v1, v2}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->d(Lo/oC;Z)V

    const/4 v1, 0x0

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v2, "handleCreateRequest creating new item %s"

    .line 442
    invoke-static {v3, v2, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 444
    iget-object v1, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    .line 447
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->d()Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->a()Ljava/lang/String;

    move-result-object v3

    .line 449
    invoke-direct {p0}, Lo/nQ;->G()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->b()Ljava/lang/String;

    move-result-object v4

    .line 445
    invoke-interface {v1, p1, v2, v3, v4}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->d(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/oC;

    move-result-object v1

    .line 452
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/event/session/action/AddCachedVideo;

    iget-object p1, p1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->e:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    .line 453
    invoke-direct {p0, p1}, Lo/nQ;->e(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;)Lcom/netflix/cl/model/DownloadType;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/netflix/cl/model/event/session/action/AddCachedVideo;-><init>(Lcom/netflix/cl/model/DownloadType;)V

    .line 452
    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 455
    sget-object v2, Lcom/netflix/cl/util/NamedLogSessionLookup;->INSTANCE:Lcom/netflix/cl/util/NamedLogSessionLookup;

    invoke-interface {v1}, Lo/oC;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/netflix/cl/util/NamedLogSessionLookup;->addSession(Ljava/lang/String;Ljava/lang/Long;)V

    .line 457
    iget-object p1, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lo/nQ;->c(Ljava/lang/String;Lo/oC;)Lo/ov;

    move-result-object p1

    .line 458
    iget-object v1, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "handleCreateRequest"

    .line 459
    invoke-direct {p0, p1}, Lo/nQ;->f(Ljava/lang/String;)V

    .line 460
    iget-object p1, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lo/nW;->a(Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "handleCreateRequest already requested"

    .line 462
    invoke-static {v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object p1, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->aX:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-virtual {p1, v1, v0, v2}, Lo/nW;->d(Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method private e(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 10

    const-string v0, "sendResponseForCreate"

    const-string v1, "nf_offlineAgent"

    .line 1292
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v2, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-static {p1, v2}, Lo/nT;->a(Ljava/lang/String;Ljava/util/List;)Lo/ov;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v3

    const-string v0, "sendResponseForCreate not found playableId=%s"

    .line 1295
    invoke-static {v1, v0, p2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1296
    invoke-virtual {p0}, Lo/nQ;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object p2

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPlayableIdInFlight "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/nQ;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lo/oS;->d(Lo/zS;Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object p2, p0, Lo/nQ;->n:Lo/nQ$Application;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendResponseForCreate notFound "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lo/nT;->a(Landroid/os/Handler;Ljava/lang/String;)V

    return-void

    .line 1300
    :cond_0
    invoke-interface {v2}, Lo/ov;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v5, v6, :cond_1

    new-array v5, v4, [Ljava/lang/Object;

    .line 1301
    invoke-interface {v2}, Lo/ov;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "sendResponseForCreate STATE %s"

    invoke-static {v1, v6, v5}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1302
    invoke-virtual {p0}, Lo/nQ;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v5

    invoke-interface {v2}, Lo/ov;->f()Lo/oC;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STATE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lo/ov;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lo/oS;->b(Lo/zS;Lo/or;Ljava/lang/String;)V

    .line 1303
    iget-object v5, p0, Lo/nQ;->n:Lo/nQ$Application;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lo/ov;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lo/nT;->a(Landroid/os/Handler;Ljava/lang/String;)V

    :cond_1
    const/4 v5, 0x0

    .line 1305
    iput-object v5, p0, Lo/nQ;->v:Ljava/lang/String;

    .line 1306
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1308
    sget-object v5, Lcom/netflix/cl/util/NamedLogSessionLookup;->INSTANCE:Lcom/netflix/cl/util/NamedLogSessionLookup;

    invoke-interface {v2}, Lo/ov;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netflix/cl/util/NamedLogSessionLookup;->removeSessionId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 1310
    sget-object v6, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v6, v5}, Lcom/netflix/cl/Logger;->getSession(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/Session;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1312
    new-instance v6, Lcom/netflix/cl/model/event/session/AddCachedVideoEnded;

    check-cast v5, Lcom/netflix/cl/model/event/session/action/AddCachedVideo;

    invoke-interface {v2}, Lo/ov;->o()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/netflix/cl/model/event/session/AddCachedVideoEnded;-><init>(Lcom/netflix/cl/model/event/session/action/AddCachedVideo;Ljava/lang/Long;)V

    .line 1313
    sget-object v5, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v5, v6}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 1316
    :cond_2
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/StatusCode;->da:Lcom/netflix/mediaclient/StatusCode;

    if-ne v5, v6, :cond_3

    .line 1319
    invoke-interface {v2}, Lo/ov;->e()Lo/oC;

    move-result-object v5

    invoke-interface {v5, p2}, Lo/oC;->b(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1321
    invoke-interface {v2}, Lo/ov;->e()Lo/oC;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->l:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-interface {v5, v6}, Lo/oC;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    goto :goto_0

    .line 1324
    :cond_3
    invoke-interface {v2}, Lo/ov;->e()Lo/oC;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-interface {v5, v6}, Lo/oC;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    goto :goto_0

    .line 1328
    :cond_4
    invoke-interface {v2}, Lo/ov;->e()Lo/oC;

    move-result-object v5

    invoke-interface {v5, p2}, Lo/oC;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1330
    sget-object v5, Lcom/netflix/cl/util/NamedLogSessionLookup;->INSTANCE:Lcom/netflix/cl/util/NamedLogSessionLookup;

    invoke-interface {v2}, Lo/ov;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netflix/cl/util/NamedLogSessionLookup;->removeSessionId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 1331
    sget-object v6, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {p2}, Lo/aeu;->b(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/netflix/cl/model/event/session/action/AddCachedVideo;->createActionFailedEvent(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Lcom/netflix/cl/model/event/session/action/ActionFailed;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 1332
    invoke-interface {v2}, Lo/ov;->e()Lo/oC;

    move-result-object v5

    invoke-interface {v5}, Lo/oC;->s()V

    .line 1335
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/StatusCode;->bp:Lcom/netflix/mediaclient/StatusCode;

    if-ne v5, v6, :cond_5

    .line 1336
    invoke-direct {p0}, Lo/nQ;->R()V

    goto :goto_0

    .line 1337
    :cond_5
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/StatusCode;->aZ:Lcom/netflix/mediaclient/StatusCode;

    if-ne v5, v6, :cond_6

    .line 1338
    iget-object v5, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    iget-object v6, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-interface {v5, v6}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->d(Ljava/util/List;)V

    .line 1341
    :cond_6
    :goto_0
    iget-object v5, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v2}, Lo/ov;->e()Lo/oC;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->d(Lo/oC;)V

    .line 1342
    invoke-direct {p0}, Lo/nQ;->I()V

    .line 1343
    iget-object v5, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v5, v6, p1, p2}, Lo/nW;->d(Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1344
    invoke-direct {p0, v0}, Lo/nQ;->f(Ljava/lang/String;)V

    .line 1345
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {p2}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->f()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lo/nQ;->r:Lo/nI;

    invoke-virtual {p2}, Lo/nI;->e()Z

    move-result p2

    if-nez p2, :cond_8

    .line 1346
    invoke-direct {p0, v2}, Lo/nQ;->c(Lo/ov;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 1347
    invoke-interface {v2}, Lo/ov;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v5, :cond_7

    invoke-interface {v2}, Lo/ov;->y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-eq v0, v5, :cond_7

    .line 1348
    invoke-direct {p0, v2}, Lo/nQ;->b(Lo/ov;)V

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 1350
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "sendResponseForCreate playableId=%s resumed=%b"

    invoke-static {v1, p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_8
    return-void
.end method

.method private e(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Lo/nE;)V
    .locals 7

    if-eqz p3, :cond_1

    .line 1366
    iget-boolean v0, p3, Lo/nE;->b:Z

    if-eqz v0, :cond_1

    .line 1368
    iget-object v0, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1369
    iget-object v0, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->h()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1374
    :goto_0
    invoke-direct {p0, v0}, Lo/nQ;->a(I)V

    .line 1377
    :cond_1
    iget-object v1, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lo/nW;->c(Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Lo/nS;Lo/nE;)V

    return-void
.end method

.method private e(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nf_offlineAgent"

    const-string v1, "handleGeoPlayabilityUpdated"

    .line 582
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-direct {p0}, Lo/nQ;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-static {p1, v0}, Lo/nT;->b(Ljava/util/Map;Ljava/util/List;)V

    .line 585
    iget-object p1, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    iget-object v0, p0, Lo/nQ;->d:Lo/cz;

    invoke-interface {v0}, Lo/cz;->V()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->a(Ljava/lang/String;)V

    .line 586
    invoke-direct {p0}, Lo/nQ;->J()V

    return-void
.end method

.method static synthetic e(Lo/nQ;J)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lo/nQ;->e(J)V

    return-void
.end method

.method static synthetic e(Lo/nQ;Landroid/content/Context;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/nQ;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic e(Lo/nQ;Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lo/nQ;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lo/nQ;Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Lo/nS$ActionBar;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lo/nQ;->a(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Lo/nS$ActionBar;)V

    return-void
.end method

.method static synthetic e(Lo/nQ;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/nQ;->d(Ljava/util/Map;)V

    return-void
.end method

.method private e(Z)V
    .locals 1

    .line 559
    iget-object v0, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->a(Z)V

    .line 560
    iget-object v0, p0, Lo/nQ;->r:Lo/nI;

    invoke-virtual {v0, p1}, Lo/nI;->c(Z)V

    return-void
.end method

.method private e(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Z
    .locals 4

    .line 1156
    iget-object v0, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ov;

    .line 1157
    invoke-static {v2}, Lo/ph;->a(Lo/ov;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1158
    invoke-interface {v2, p1}, Lo/ov;->a(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1159
    invoke-direct {p0, v2}, Lo/nQ;->b(Lo/ov;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic e(Lo/nQ;Z)Z
    .locals 0

    .line 113
    iput-boolean p1, p0, Lo/nQ;->p:Z

    return p1
.end method

.method static synthetic f(Lo/nQ;)Ljava/util/List;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/nQ;->i:Ljava/util/List;

    return-object p0
.end method

.method private f(Ljava/lang/String;)V
    .locals 10

    const-string v0, "nf_offlineAgent"

    const-string v1, "processNextCreateRequest"

    .line 266
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lo/nQ;->v:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 268
    iget-object v1, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-static {v1}, Lo/nT;->e(Ljava/util/List;)Lo/ov;

    move-result-object v1

    if-eqz v1, :cond_3

    new-array v3, v3, [Ljava/lang/Object;

    .line 270
    invoke-interface {v1}, Lo/ov;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "processNextCreateRequest processing playableId=%s"

    invoke-static {v0, v2, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 271
    invoke-interface {v1}, Lo/ov;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/nQ;->v:Ljava/lang/String;

    .line 272
    iget-object v2, p0, Lo/nQ;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/user/UserAgent;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    iget-object p1, p0, Lo/nQ;->v:Ljava/lang/String;

    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->bf:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, p1, v0}, Lo/nQ;->e(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 276
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lo/adk;->e(Ljava/io/File;)J

    move-result-wide v2

    .line 277
    invoke-virtual {p0}, Lo/nQ;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v4

    .line 278
    invoke-interface {v1}, Lo/ov;->f()Lo/oC;

    move-result-object v5

    iget-object v6, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v6}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->g()Ljava/lang/String;

    move-result-object v8

    move-wide v6, v2

    move-object v9, p1

    .line 277
    invoke-static/range {v4 .. v9}, Lo/oS;->b(Lo/zS;Lo/or;JLjava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object p1, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->g()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-static {v2, v3, p1, v4}, Lo/nT;->a(JLjava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "handleCreateRequest not enough space"

    .line 281
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object p1, p0, Lo/nQ;->v:Ljava/lang/String;

    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->aZ:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-direct {p0, p1, v0}, Lo/nQ;->e(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 285
    :cond_1
    invoke-interface {v1}, Lo/ov;->b()V

    goto :goto_0

    :cond_2
    new-array p1, v3, [Ljava/lang/Object;

    aput-object v1, p1, v2

    const-string v1, "processNextCreateRequest already processing, mPlayableIdInFlight=%s"

    .line 288
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic g(Lo/nQ;)Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lo/nQ;->p:Z

    return p0
.end method

.method static synthetic h(Lo/nQ;)Lo/pa$Activity;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/nQ;->E:Lo/pa$Activity;

    return-object p0
.end method

.method private h(Ljava/lang/String;)V
    .locals 6

    .line 495
    iget-object v0, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-static {p1, v0}, Lo/nT;->a(Ljava/lang/String;Ljava/util/List;)Lo/ov;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "nf_offlineAgent"

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "handleResumeRequest not found playableId=%s"

    .line 497
    invoke-static {v3, p1, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 500
    :cond_0
    invoke-interface {v0}, Lo/ov;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object p1

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq p1, v4, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    .line 501
    invoke-interface {v0}, Lo/ov;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "handleResumeRequest not stopped, state=%s"

    invoke-static {v3, v0, p1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 504
    :cond_1
    invoke-interface {v0}, Lo/ov;->e()Lo/oC;

    move-result-object p1

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-interface {p1, v4}, Lo/oC;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 505
    invoke-interface {v0}, Lo/ov;->e()Lo/oC;

    move-result-object p1

    invoke-interface {p1}, Lo/oC;->o()V

    .line 506
    invoke-direct {p0, v0}, Lo/nQ;->c(Lo/ov;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 508
    invoke-direct {p0, v0}, Lo/nQ;->a(Lo/ov;)V

    goto :goto_0

    .line 510
    :cond_2
    invoke-direct {p0, v0}, Lo/nQ;->b(Lo/ov;)V

    .line 512
    :goto_0
    iget-object v4, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v0}, Lo/ov;->e()Lo/oC;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->a(Lo/oC;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 513
    invoke-interface {v0}, Lo/ov;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "handleResumeRequest playableId=%s resumed=%b"

    invoke-static {v3, p1, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "nf_offlineAgent"

    const-string v4, "handlePauseRequest playableId=%s"

    .line 542
    invoke-static {v3, v4, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 543
    iget-object v1, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-static {p1, v1}, Lo/nT;->a(Ljava/lang/String;Ljava/util/List;)Lo/ov;

    move-result-object v1

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "handlePauseRequest playableId=%s not found"

    .line 545
    invoke-static {v3, p1, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 548
    :cond_0
    invoke-interface {v1}, Lo/ov;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq p1, v0, :cond_1

    .line 549
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->h:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-interface {v1, p1}, Lo/ov;->a(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 550
    iget-object p1, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v1}, Lo/ov;->e()Lo/oC;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->a(Lo/oC;)V

    .line 551
    invoke-direct {p0, v1}, Lo/nQ;->b(Lo/ov;)V

    goto :goto_0

    :cond_1
    const-string p1, "handlePauseRequest trying to pause a completed item"

    .line 553
    invoke-static {v3, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic i(Lo/nQ;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/nQ;->J()V

    return-void
.end method

.method static synthetic j(Lo/nQ;)Lo/nL;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/nQ;->x:Lo/nL;

    return-object p0
.end method

.method static synthetic k(Lo/nQ;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/nQ;->D()V

    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 4

    .line 751
    iget-object v0, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-static {p1, v0}, Lo/nT;->a(Ljava/lang/String;Ljava/util/List;)Lo/ov;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 754
    invoke-interface {v0}, Lo/ov;->e()Lo/oC;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lo/oC;->j(Z)V

    .line 755
    iget-object v1, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v0}, Lo/ov;->e()Lo/oC;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->a(Lo/oC;)V

    .line 758
    iget-object v1, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v1, v2, p1, v3}, Lo/nW;->d(Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 761
    invoke-direct {p0, v0}, Lo/nQ;->c(Lo/ov;)Z

    :cond_0
    return-void
.end method

.method static synthetic l(Lo/nQ;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/nQ;->u()V

    return-void
.end method

.method private m(Ljava/lang/String;)V
    .locals 7

    .line 767
    iget-object v0, p0, Lo/nQ;->H:Lo/nZ;

    if-nez v0, :cond_0

    .line 768
    new-instance v0, Lo/nZ;

    iget-object v2, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    iget-object v3, p0, Lo/nQ;->i:Ljava/util/List;

    iget-object v5, p0, Lo/nQ;->k:Lo/oQ;

    iget-object v6, p0, Lo/nQ;->l:Lo/oL;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lo/nZ;-><init>(Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;Ljava/util/List;Ljava/lang/String;Lo/oQ;Lo/oL;)V

    iput-object v0, p0, Lo/nQ;->H:Lo/nZ;

    .line 775
    iget-object p1, p0, Lo/nQ;->H:Lo/nZ;

    new-instance v0, Lo/nR;

    invoke-direct {v0, p0}, Lo/nR;-><init>(Lo/nQ;)V

    invoke-virtual {p1, v0}, Lo/nZ;->b(Lo/nZ$TaskDescription;)V

    goto :goto_0

    :cond_0
    const-string p1, "nf_offlineAgent"

    const-string v0, "handleReplaceAllLicenses already replacing licenses"

    .line 779
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic m(Lo/nQ;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/nQ;->w()V

    return-void
.end method

.method static synthetic n(Lo/nQ;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/nQ;->R()V

    return-void
.end method

.method static synthetic o(Lo/nQ;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/nQ;->v()V

    return-void
.end method

.method static synthetic p(Lo/nQ;)Lo/cz;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/nQ;->d:Lo/cz;

    return-object p0
.end method

.method static synthetic q(Lo/nQ;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/nQ;->A()V

    return-void
.end method

.method static synthetic r(Lo/nQ;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/nQ;->S()V

    return-void
.end method

.method static synthetic s(Lo/nQ;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/nQ;->M()V

    return-void
.end method

.method static synthetic t(Lo/nQ;)Lcom/netflix/mediaclient/service/user/UserAgent;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/nQ;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    return-object p0
.end method

.method static synthetic u(Lo/nQ;)Ljava/util/Map;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/nQ;->s:Ljava/util/Map;

    return-object p0
.end method

.method private u()V
    .locals 2

    const-string v0, "nf_offlineAgent"

    const-string v1, "handleDownloadResumeJob"

    .line 574
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {p0}, Lo/nQ;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->c:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-static {v0, v1}, Lo/oS;->d(Lo/zS;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 576
    invoke-direct {p0}, Lo/nQ;->H()V

    .line 577
    iget-object v0, p0, Lo/nQ;->r:Lo/nI;

    invoke-virtual {v0}, Lo/nI;->i()V

    return-void
.end method

.method static synthetic v(Lo/nQ;)Lo/nW;
    .locals 0

    .line 113
    iget-object p0, p0, Lo/nQ;->C:Lo/nW;

    return-object p0
.end method

.method private v()V
    .locals 3

    const-string v0, "nf_offlineAgent"

    const-string v1, "handleAgentDestroyRequest"

    .line 399
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lo/nQ;->z:Lo/pa;

    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {v1}, Lo/pa;->e()V

    .line 403
    :cond_0
    iget-object v1, p0, Lo/nQ;->w:Lo/nF;

    if-eqz v1, :cond_1

    .line 404
    invoke-virtual {v1}, Lo/nF;->b()V

    .line 406
    :cond_1
    iget-object v1, p0, Lo/nQ;->l:Lo/oL;

    if-eqz v1, :cond_2

    .line 407
    invoke-interface {v1}, Lo/oL;->c()V

    .line 409
    :cond_2
    iget-object v1, p0, Lo/nQ;->r:Lo/nI;

    if-eqz v1, :cond_3

    .line 410
    invoke-virtual {v1}, Lo/nI;->f()V

    .line 412
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v1}, Lo/nQ;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 413
    iget-object v1, p0, Lo/nQ;->f:Lo/FragmentHostCallback;

    if-eqz v1, :cond_4

    const-string v1, "Stopping Volley RequestQueue"

    .line 414
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v1, p0, Lo/nQ;->f:Lo/FragmentHostCallback;

    invoke-virtual {v1}, Lo/FragmentHostCallback;->d()V

    const/4 v1, 0x0

    .line 416
    iput-object v1, p0, Lo/nQ;->f:Lo/FragmentHostCallback;

    .line 418
    :cond_4
    iget-object v1, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ov;

    .line 419
    invoke-interface {v2}, Lo/ov;->g()V

    goto :goto_0

    .line 421
    :cond_5
    iget-object v1, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 422
    invoke-direct {p0}, Lo/nQ;->F()V

    .line 423
    invoke-super {p0}, Lo/bV;->destroy()V

    const-string v1, "destroyInBgThread done"

    .line 424
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private w()V
    .locals 4

    const-string v0, "nf_offlineAgent"

    const-string v1, "handleDownloadMaintenanceJob"

    .line 564
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lo/nQ;->y:Lo/nO;

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0}, Lo/nO;->c()V

    .line 568
    :cond_0
    invoke-virtual {p0}, Lo/nQ;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-static {v0, v1}, Lo/oS;->d(Lo/zS;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 569
    new-instance v0, Lo/nO;

    iget-object v1, p0, Lo/nQ;->l:Lo/oL;

    iget-object v2, p0, Lo/nQ;->i:Ljava/util/List;

    iget-object v3, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-direct {v0, p0, v1, v2, v3}, Lo/nO;-><init>(Lo/nO$StateListAnimator;Lo/oL;Ljava/util/List;Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;)V

    iput-object v0, p0, Lo/nQ;->y:Lo/nO;

    .line 570
    iget-object v0, p0, Lo/nQ;->y:Lo/nO;

    iget-object v1, p0, Lo/nQ;->g:Lo/Ck;

    invoke-virtual {v0, v1}, Lo/nO;->c(Lo/Ck;)V

    return-void
.end method

.method private x()V
    .locals 3

    .line 361
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    .line 362
    new-instance v1, Lo/nQ$15;

    invoke-direct {v1, p0, v0}, Lo/nQ$15;-><init>(Lo/nQ;Landroid/os/Handler;)V

    .line 375
    iget-object v0, p0, Lo/nQ;->g:Lo/Ck;

    iget-object v2, p0, Lo/nQ;->i:Ljava/util/List;

    invoke-static {v2}, Lo/nT;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lo/Ck;->c(Ljava/util/List;Lo/nJ;)V

    return-void
.end method

.method static synthetic y(Lo/nQ;)V
    .locals 0

    invoke-direct {p0}, Lo/nQ;->W()V

    return-void
.end method

.method private z()V
    .locals 3

    .line 800
    iget-object v0, p0, Lo/nQ;->m:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 801
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "nf_of_bg"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lo/nQ;->m:Landroid/os/HandlerThread;

    .line 802
    iget-object v0, p0, Lo/nQ;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 803
    new-instance v0, Lo/nQ$Application;

    iget-object v1, p0, Lo/nQ;->m:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/nQ$Application;-><init>(Lo/nQ;Landroid/os/Looper;)V

    iput-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1479
    invoke-static {}, Lo/aeB;->c()Z

    const-string v0, "nf_offlineAgent"

    const-string v1, "onAccountDataFetched"

    .line 1480
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    invoke-direct {p0}, Lo/nQ;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1482
    :cond_0
    invoke-direct {p0}, Lo/nQ;->P()V

    .line 1483
    invoke-direct {p0}, Lo/nQ;->B()V

    .line 1485
    iget-object v0, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    .line 1486
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/nQ;->d:Lo/cz;

    invoke-interface {v1}, Lo/cz;->V()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/nQ;->i:Ljava/util/List;

    .line 1485
    invoke-static {v0, v1, v2}, Lo/nM;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1487
    invoke-direct {p0}, Lo/nQ;->x()V

    .line 1490
    :cond_1
    invoke-direct {p0}, Lo/nQ;->L()V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;)V
    .locals 2

    .line 1026
    invoke-virtual {p0}, Lo/nQ;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1027
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "download_video_quality"

    .line 1026
    invoke-static {v0, v1, p1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 915
    invoke-static {}, Lo/aeB;->a()Z

    const/4 v0, 0x0

    .line 916
    invoke-direct {p0, v0}, Lo/nQ;->e(Z)V

    const/4 v0, 0x2

    .line 917
    invoke-direct {p0, v0, p1}, Lo/nQ;->c(ILjava/lang/String;)V

    return-void
.end method

.method public agentName()Ljava/lang/String;
    .locals 1

    const-string v0, "offline"

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1547
    invoke-static {}, Lo/aeB;->c()Z

    .line 1548
    invoke-direct {p0}, Lo/nQ;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1549
    :cond_0
    iget-object v0, p0, Lo/nQ;->r:Lo/nI;

    invoke-virtual {v0}, Lo/nI;->d()V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)V
    .locals 4

    const-string v0, "request offline viewing started."

    .line 869
    invoke-static {v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;)I

    .line 870
    invoke-direct {p0}, Lo/nQ;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "SPY-12255 got requestOfflineViewing while offline feature disabled."

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 874
    :cond_0
    new-instance v0, Lo/nU$PendingIntent;

    iget-object v1, p1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->c:Ljava/lang/String;

    .line 875
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->e:Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;

    invoke-direct {v0, v1, v2, v3}, Lo/nU$PendingIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest$DownloadRequestType;)V

    .line 874
    invoke-virtual {p0, v0}, Lo/nQ;->b(Lo/nU;)V

    .line 879
    iget-object v0, p0, Lo/nQ;->e:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/nT;->e(Landroid/content/Context;I)V

    .line 881
    iget-object v0, p0, Lo/nQ;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;->a(Ljava/lang/String;)V

    .line 882
    invoke-direct {p0}, Lo/nQ;->E()V

    .line 884
    invoke-direct {p0, v1}, Lo/nQ;->e(Z)V

    .line 885
    iget-object v0, p0, Lo/nQ;->g:Lo/Ck;

    iget-object v1, p0, Lo/nQ;->b:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 886
    invoke-static {v1, p1}, Lo/nT;->e(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;)Lo/BC;

    move-result-object v1

    iget-object v2, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    .line 888
    invoke-interface {v2}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->p()I

    move-result v2

    .line 885
    invoke-interface {v0, v1, p1, v2}, Lo/Ck;->e(Lo/BC;Lcom/netflix/mediaclient/service/offline/agent/CreateRequest;I)V

    .line 889
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lo/nQ$Application;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 890
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    invoke-virtual {v0, p1}, Lo/nQ$Application;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 976
    invoke-static {}, Lo/aeB;->a()Z

    const/4 v0, 0x1

    .line 977
    invoke-direct {p0, v0}, Lo/nQ;->e(Z)V

    const/4 v0, 0x3

    .line 978
    invoke-direct {p0, v0, p1}, Lo/nQ;->c(ILjava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 2

    .line 937
    invoke-static {}, Lo/aeB;->a()Z

    .line 938
    new-instance v0, Lo/nE;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p3, p2, v1}, Lo/nE;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V

    .line 939
    iget-object p1, p0, Lo/nQ;->n:Lo/nQ$Application;

    const/16 p2, 0xe

    invoke-virtual {p1, p2, v0}, Lo/nQ$Application;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected b(Lo/Bi;)V
    .locals 2

    .line 1361
    iget-object v0, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/nW;->e(Landroid/os/Handler;Lo/Bi;)V

    return-void
.end method

.method public b(Lo/nU;)V
    .locals 1

    .line 1064
    iget-object v0, p0, Lo/nQ;->I:Lo/oH;

    invoke-virtual {v0, p1}, Lo/oH;->b(Lo/nU;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1467
    invoke-static {}, Lo/aeB;->c()Z

    const-string v0, "nf_offlineAgent"

    const-string v1, "onUserAccountActive"

    .line 1468
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    invoke-direct {p0}, Lo/nQ;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1470
    :cond_0
    invoke-direct {p0}, Lo/nQ;->P()V

    .line 1473
    iget-object v0, p0, Lo/nQ;->q:Lo/nP;

    invoke-interface {v0}, Lo/nP;->b()V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1213
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lo/nQ$Application;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "nf_offlineAgent"

    const-string v2, "requestRefreshLicenseForPlayable playableId=%s"

    .line 1075
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1076
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    new-instance v1, Lo/nQ$16;

    invoke-direct {v1, p0, p1}, Lo/nQ$16;-><init>(Lo/nQ;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/nQ$Application;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 2

    .line 930
    invoke-static {}, Lo/aeB;->a()Z

    .line 931
    new-instance v0, Lo/nE;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, p2, v1}, Lo/nE;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)V

    .line 932
    iget-object p1, p0, Lo/nQ;->n:Lo/nQ$Application;

    const/16 p2, 0xe

    invoke-virtual {p1, p2, v0}, Lo/nQ$Application;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c(Ljava/lang/String;Lo/nS$ActionBar;)V
    .locals 2

    .line 1225
    invoke-direct {p0}, Lo/nQ;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1226
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bc:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, p1, v0, p2}, Lo/nQ;->a(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Lo/nS$ActionBar;)V

    return-void

    .line 1229
    :cond_0
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    new-instance v1, Lo/nQ$18;

    invoke-direct {v1, p0, p1, p2}, Lo/nQ$18;-><init>(Lo/nQ;Ljava/lang/String;Lo/nS$ActionBar;)V

    invoke-virtual {v0, v1}, Lo/nQ$Application;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Lo/nH;)V
    .locals 2

    .line 923
    invoke-static {}, Lo/aeB;->a()Z

    const/4 v0, 0x0

    .line 924
    invoke-direct {p0, v0}, Lo/nQ;->e(Z)V

    .line 925
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Lo/nQ$Application;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 1006
    invoke-static {}, Lo/aeB;->a()Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1007
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_offlineAgent"

    const-string v2, "setRequiresUnmeteredNetwork requires=%b"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1008
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    new-instance v1, Lo/nQ$19;

    invoke-direct {v1, p0, p1}, Lo/nQ$19;-><init>(Lo/nQ;Z)V

    invoke-virtual {v0, v1}, Lo/nQ$Application;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .locals 1

    .line 1554
    invoke-static {}, Lo/aeB;->c()Z

    .line 1555
    invoke-direct {p0}, Lo/nQ;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1556
    :cond_0
    iget-object v0, p0, Lo/nQ;->r:Lo/nI;

    invoke-virtual {v0}, Lo/nI;->c()V

    return-void
.end method

.method public d(JLo/pq$ActionBar;)V
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1786
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_offlineAgent"

    const-string v2, "requestOfflineManifest movieId=%d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1787
    invoke-direct {p0}, Lo/nQ;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    .line 1788
    new-instance v6, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->bc:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v6, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    const-string v5, "-1"

    move-object v1, p3

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Lo/pq$ActionBar;->c(JLo/pq$Application;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 1792
    :cond_0
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    new-instance v1, Lo/nQ$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/nQ$8;-><init>(Lo/nQ;JLo/pq$ActionBar;)V

    invoke-virtual {v0, v1}, Lo/nQ$Application;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 984
    invoke-static {}, Lo/aeB;->a()Z

    const/4 v0, 0x0

    .line 985
    invoke-direct {p0, v0}, Lo/nQ;->e(Z)V

    const/4 v0, 0x4

    .line 986
    invoke-direct {p0, v0, p1}, Lo/nQ;->c(ILjava/lang/String;)V

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 945
    invoke-static {}, Lo/aeB;->a()Z

    .line 946
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 947
    invoke-direct {p0, v0}, Lo/nQ;->e(Z)V

    .line 948
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lo/nQ$Application;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 949
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    invoke-virtual {v0, p1}, Lo/nQ$Application;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p1, "nf_offlineAgent"

    const-string v0, "deleteOfflinePlayables nothing to be done"

    .line 951
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public d(Lo/nV;)V
    .locals 2

    .line 999
    invoke-static {}, Lo/aeB;->a()Z

    .line 1000
    iget-object v0, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/nW;->e(Landroid/os/Handler;Lo/nV;)V

    return-void
.end method

.method public d(Lo/pq$Activity;)V
    .locals 1

    .line 1956
    iget-object v0, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {v0, p1}, Lo/nW;->e(Lo/pq$Activity;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "nf_offlineAgent"

    const-string v1, "destroy"

    .line 834
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 835
    iput-boolean v0, p0, Lo/nQ;->u:Z

    .line 836
    iget-object v0, p0, Lo/nQ;->z:Lo/pa;

    invoke-virtual {v0}, Lo/pa;->e()V

    .line 837
    iget-object v0, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {v0}, Lo/nW;->a()V

    .line 838
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 839
    invoke-direct {p0, v0}, Lo/nQ;->e(I)V

    .line 841
    :cond_0
    iget-object v0, p0, Lo/nQ;->c:Lo/iu;

    iget-object v1, p0, Lo/nQ;->D:Lo/nQ$ActionBar;

    invoke-interface {v0, v1}, Lo/iu;->b(Lo/iw;)V

    return-void
.end method

.method protected doInit()V
    .locals 2

    const-string v0, "nf_offlineAgent"

    const-string v1, "OfflineAgent doInit"

    .line 826
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 827
    iput-boolean v0, p0, Lo/nQ;->u:Z

    .line 828
    invoke-direct {p0}, Lo/nQ;->z()V

    .line 829
    invoke-direct {p0, v0}, Lo/nQ;->e(I)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1449
    invoke-static {}, Lo/aeB;->c()Z

    .line 1450
    invoke-direct {p0}, Lo/nQ;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1452
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-direct {p0, v0}, Lo/nQ;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    .line 1453
    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lo/nQ$3;

    invoke-direct {v1, p0}, Lo/nQ$3;-><init>(Lo/nQ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1461
    iget-object v0, p0, Lo/nQ;->q:Lo/nP;

    invoke-interface {v0}, Lo/nP;->e()V

    return-void
.end method

.method public e(Landroid/content/Intent;)V
    .locals 3

    .line 1432
    invoke-static {p1}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->a(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    move-result-object v0

    .line 1433
    sget-object v1, Lo/nQ$13;->c:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1438
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "nf_offlineAgent"

    const-string v1, "unsupported IntentCommandGroupType=%s"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1435
    :cond_0
    iget-object v0, p0, Lo/nQ;->x:Lo/nL;

    invoke-interface {v0, p1}, Lo/nL;->c(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1058
    invoke-static {}, Lo/aeB;->a()Z

    const/16 v0, 0x11

    .line 1059
    invoke-direct {p0, v0, p1}, Lo/nQ;->c(ILjava/lang/String;)V

    return-void
.end method

.method public e(Lo/nV;)V
    .locals 2

    .line 992
    invoke-static {}, Lo/aeB;->a()Z

    .line 993
    iget-object v0, p0, Lo/nQ;->C:Lo/nW;

    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/nW;->c(Landroid/os/Handler;Lo/nV;)V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 864
    invoke-direct {p0}, Lo/nQ;->N()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public g()V
    .locals 2

    const-string v0, "nf_offlineAgent"

    const-string v1, "onAllMaintenanceJobDone"

    .line 1561
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    .line 1562
    invoke-direct {p0, v0}, Lo/nQ;->e(I)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "nf_offlineAgent"

    const-string v2, "requestRenewPlayWindowForPlayable playableId=%s"

    .line 1097
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1098
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    new-instance v1, Lo/nQ$17;

    invoke-direct {v1, p0, p1}, Lo/nQ$17;-><init>(Lo/nQ;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/nQ$Application;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public h()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;
    .locals 1

    .line 1033
    invoke-direct {p0}, Lo/nQ;->G()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v0

    return-object v0
.end method

.method public handleConnectivityChange()V
    .locals 1

    .line 854
    invoke-super {p0}, Lo/bV;->handleConnectivityChange()V

    .line 855
    iget-boolean v0, p0, Lo/nQ;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/nQ;->r:Lo/nI;

    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {v0}, Lo/nI;->j()V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 1019
    invoke-static {}, Lo/aeB;->a()Z

    .line 1020
    iget-object v0, p0, Lo/nQ;->r:Lo/nI;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/nI;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected j()V
    .locals 14

    .line 295
    iget-object v0, p0, Lo/nQ;->d:Lo/cz;

    invoke-interface {v0}, Lo/cz;->W()Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lo/nQ;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v1

    invoke-static {v1, v0}, Lo/oS;->c(Lo/zS;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V

    .line 298
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lo/nQ;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lo/nQ;->z:Lo/pa;

    invoke-virtual {v0}, Lo/pa;->d()V

    .line 302
    iget-object v0, p0, Lo/nQ;->C:Lo/nW;

    iget-object v1, p0, Lo/nQ;->h:Lcom/netflix/mediaclient/service/NetflixPowerManager;

    invoke-virtual {v0, v1}, Lo/nW;->d(Lcom/netflix/mediaclient/service/NetflixPowerManager;)V

    .line 303
    new-instance v0, Lo/oT;

    iget-object v1, p0, Lo/nQ;->j:Lo/pM;

    iget-object v2, p0, Lo/nQ;->m:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Lo/nQ;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->s()Lo/jQ;

    move-result-object v3

    invoke-virtual {p0}, Lo/nQ;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lo/oT;-><init>(Lo/pM;Landroid/os/HandlerThread;Lo/jQ;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v0, p0, Lo/nQ;->k:Lo/oQ;

    .line 304
    new-instance v0, Lo/oM;

    invoke-virtual {p0}, Lo/nQ;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/nQ;->m:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lo/nQ;->j:Lo/pM;

    invoke-virtual {p0}, Lo/nQ;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lo/oM;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/pM;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V

    iput-object v0, p0, Lo/nQ;->l:Lo/oL;

    .line 305
    iget-object v0, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->d()Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    move-result-object v0

    .line 306
    sget-object v1, Lo/nQ$13;->b:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    goto :goto_1

    .line 314
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;->d:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->e:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->f:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    .line 317
    :goto_0
    invoke-virtual {p0}, Lo/nQ;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v1

    invoke-static {v1, v0}, Lo/oS;->c(Lo/zS;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V

    .line 318
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lo/nQ;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 322
    :cond_3
    :goto_1
    invoke-direct {p0}, Lo/nQ;->M()V

    .line 324
    const-class v0, Lo/Ck;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo/Ck;

    .line 325
    invoke-virtual {p0}, Lo/nQ;->getMainHandler()Landroid/os/Handler;

    move-result-object v4

    .line 326
    invoke-virtual {p0}, Lo/nQ;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 327
    invoke-virtual {p0}, Lo/nQ;->getServiceNotificationHelper()Lo/Ac;

    move-result-object v6

    iget-object v0, p0, Lo/nQ;->d:Lo/cz;

    .line 328
    invoke-interface {v0}, Lo/cz;->g()Z

    move-result v7

    move-object v8, p0

    .line 324
    invoke-interface/range {v3 .. v8}, Lo/Ck;->d(Landroid/os/Handler;Landroid/content/Context;Lo/Ac;ZLo/nS;)Lo/nL;

    move-result-object v0

    iput-object v0, p0, Lo/nQ;->x:Lo/nL;

    .line 331
    iget-object v0, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->l()Z

    move-result v13

    .line 333
    new-instance v0, Lo/nI;

    invoke-virtual {p0}, Lo/nQ;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lo/nQ;->c:Lo/iu;

    iget-object v6, p0, Lo/nQ;->D:Lo/nQ$ActionBar;

    iget-object v7, p0, Lo/nQ;->i:Ljava/util/List;

    iget-object v1, p0, Lo/nQ;->m:Landroid/os/HandlerThread;

    .line 335
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    iget-object v9, p0, Lo/nQ;->G:Lo/nI$Activity;

    iget-object v1, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    .line 336
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->f()Z

    move-result v10

    .line 337
    invoke-virtual {p0}, Lo/nQ;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v11

    invoke-virtual {p0}, Lo/nQ;->getNetflixPlatform()Lo/SmartSelectSprite;

    move-result-object v12

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lo/nI;-><init>(Landroid/content/Context;Lo/iu;Lo/iw;Ljava/util/List;Landroid/os/Looper;Lo/nI$Activity;ZLcom/netflix/mediaclient/servicemgr/IClientLogging;Lo/SmartSelectSprite;Z)V

    iput-object v0, p0, Lo/nQ;->r:Lo/nI;

    .line 339
    invoke-virtual {p0}, Lo/nQ;->getNetflixPlatform()Lo/SmartSelectSprite;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->i:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    iget-object v3, p0, Lo/nQ;->q:Lo/nP;

    invoke-interface {v0, v1, v3}, Lo/SmartSelectSprite;->d(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Lo/iB;)V

    .line 342
    iget-object v0, p0, Lo/nQ;->m:Landroid/os/HandlerThread;

    new-instance v1, Lo/nQ$14;

    invoke-direct {v1, p0}, Lo/nQ$14;-><init>(Lo/nQ;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 349
    new-instance v0, Lo/nF;

    invoke-virtual {p0}, Lo/nQ;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lo/nQ;->m:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, p0, v3}, Lo/nF;-><init>(Landroid/content/Context;Lo/nF$StateListAnimator;Landroid/os/Looper;)V

    iput-object v0, p0, Lo/nQ;->w:Lo/nF;

    .line 350
    iget-object v0, p0, Lo/nQ;->w:Lo/nF;

    invoke-virtual {v0}, Lo/nF;->e()V

    const-string v0, "nf_offlineAgent"

    const-string v1, "OfflineAgent doInit success."

    .line 351
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iput-boolean v2, p0, Lo/nQ;->u:Z

    .line 353
    iget-object v0, p0, Lo/nQ;->e:Landroid/content/Context;

    const-string v1, "offline_ever_worked"

    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 354
    iget-object v0, p0, Lo/nQ;->q:Lo/nP;

    invoke-interface {v0}, Lo/nP;->g()V

    .line 355
    iget-object v0, p0, Lo/nQ;->t:Lo/nK;

    invoke-interface {v0}, Lo/nK;->e()V

    .line 356
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lo/nQ;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 308
    :cond_4
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->bc:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-virtual {p0, v0}, Lo/nQ;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    .line 1943
    invoke-static {}, Lo/aek;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1944
    :cond_0
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Lo/nQ$Application;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1945
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    invoke-virtual {v0, p1}, Lo/nQ$Application;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public k()Lo/nY;
    .locals 1

    .line 1069
    sget-object v0, Lo/oa;->c:Lo/oa;

    return-object v0
.end method

.method public l()Lo/bN;
    .locals 0

    return-object p0
.end method

.method public m()V
    .locals 1

    .line 1039
    invoke-static {}, Lo/aeB;->a()Z

    const/16 v0, 0x8

    .line 1040
    invoke-direct {p0, v0}, Lo/nQ;->e(I)V

    return-void
.end method

.method public n()V
    .locals 1

    const/16 v0, 0xf

    .line 1045
    invoke-direct {p0, v0}, Lo/nQ;->e(I)V

    return-void
.end method

.method public o()V
    .locals 1

    .line 1051
    invoke-static {}, Lo/aeB;->a()Z

    const/16 v0, 0x10

    .line 1052
    invoke-direct {p0, v0}, Lo/nQ;->e(I)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 846
    iget-object v0, p0, Lo/nQ;->k:Lo/oQ;

    if-eqz v0, :cond_0

    .line 847
    invoke-interface {v0, p1}, Lo/oQ;->e(I)V

    :cond_0
    return-void
.end method

.method public p()Lo/Bg;
    .locals 1

    .line 1207
    iget-object v0, p0, Lo/nQ;->o:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->i()Lo/Bg;

    move-result-object v0

    return-object v0
.end method

.method public q()V
    .locals 2

    .line 1219
    iget-object v0, p0, Lo/nQ;->n:Lo/nQ$Application;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lo/nQ$Application;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public r()V
    .locals 0

    .line 1200
    invoke-direct {p0}, Lo/nQ;->I()V

    return-void
.end method

.method public s()Lo/nK;
    .locals 1

    .line 1933
    iget-object v0, p0, Lo/nQ;->t:Lo/nK;

    return-object v0
.end method

.method public t()Lo/nP;
    .locals 1

    .line 1928
    iget-object v0, p0, Lo/nQ;->q:Lo/nP;

    return-object v0
.end method

.method public y()Lo/Af;
    .locals 2

    .line 1937
    new-instance v0, Lo/nQ$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/nQ$Activity;-><init>(Lo/nQ;Lo/nQ$4;)V

    return-object v0
.end method
