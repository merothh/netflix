.class public Lo/F;
.super Lo/EnterTransitionCoordinator;
.source ""


# instance fields
.field private final c:Lorg/chromium/net/ExperimentalCronetEngine;

.field private final d:Z

.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/net/ExperimentalCronetEngine;Z)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/EnterTransitionCoordinator;-><init>()V

    .line 37
    iput-object p1, p0, Lo/F;->e:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lo/F;->c:Lorg/chromium/net/ExperimentalCronetEngine;

    .line 39
    iput-boolean p3, p0, Lo/F;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/BlockingQueue;Lo/DownloadManager;Lo/ContextImpl;Lo/FragmentState;Ljava/lang/String;)Lo/FragmentBreadCrumbs;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request;",
            ">;",
            "Lo/DownloadManager;",
            "Lo/ContextImpl;",
            "Lo/FragmentState;",
            "Ljava/lang/String;",
            ")",
            "Lo/FragmentBreadCrumbs;"
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lo/F;->d()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "nf_network"

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p5, v0, v1

    const-string v1, "creating NetworkDispatcher thread for %s"

    .line 55
    invoke-static {v3, v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 56
    new-instance v6, Lo/ExpandableListActivity;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lo/ExpandableListActivity;-><init>(Ljava/util/concurrent/BlockingQueue;Lo/DownloadManager;Lo/ContextImpl;Lo/FragmentState;Ljava/lang/String;)V

    return-object v6

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p5, v0, v1

    const-string v1, "creating AsynchronousNetworkDispatcher thread for %s"

    .line 58
    invoke-static {v3, v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 59
    new-instance v8, Lo/r;

    iget-object v1, p0, Lo/F;->e:Landroid/content/Context;

    iget-object v2, p0, Lo/F;->c:Lorg/chromium/net/ExperimentalCronetEngine;

    move-object v0, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lo/r;-><init>(Landroid/content/Context;Lorg/chromium/net/ExperimentalCronetEngine;Ljava/util/concurrent/BlockingQueue;Lo/DownloadManager;Lo/ContextImpl;Lo/FragmentState;Ljava/lang/String;)V

    return-object v8
.end method

.method public d()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lo/F;->c:Lorg/chromium/net/ExperimentalCronetEngine;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 77
    :cond_0
    iget-boolean v0, p0, Lo/F;->d:Z

    return v0
.end method
