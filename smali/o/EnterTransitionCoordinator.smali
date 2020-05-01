.class public Lo/EnterTransitionCoordinator;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/BlockingQueue;Lo/DownloadManager;Lo/ContextImpl;Lo/FragmentState;Ljava/lang/String;)Lo/FragmentBreadCrumbs;
    .locals 7
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

    .line 24
    new-instance v6, Lo/ExpandableListActivity;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lo/ExpandableListActivity;-><init>(Ljava/util/concurrent/BlockingQueue;Lo/DownloadManager;Lo/ContextImpl;Lo/FragmentState;Ljava/lang/String;)V

    return-object v6
.end method
