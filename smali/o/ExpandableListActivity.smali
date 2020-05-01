.class public Lo/ExpandableListActivity;
.super Ljava/lang/Thread;
.source ""

# interfaces
.implements Lo/FragmentBreadCrumbs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ExpandableListActivity$StateListAnimator;,
        Lo/ExpandableListActivity$TaskDescription;
    }
.end annotation


# static fields
.field private static final h:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lo/ExpandableListActivity$StateListAnimator;",
            "Lo/ExpandableListActivity$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile a:Z

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/ContextImpl;

.field private final d:Lo/DownloadManager;

.field private final e:Lo/FragmentState;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lo/ExpandableListActivity;->h:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lo/DownloadManager;Lo/ContextImpl;Lo/FragmentState;Ljava/lang/String;)V
    .locals 2
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
            ")V"
        }
    .end annotation

    if-nez p5, :cond_0

    const-string v0, "NetworkDispatcher"

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkDispatcher-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lo/ExpandableListActivity;->a:Z

    .line 76
    iput-object p1, p0, Lo/ExpandableListActivity;->b:Ljava/util/concurrent/BlockingQueue;

    .line 77
    iput-object p2, p0, Lo/ExpandableListActivity;->d:Lo/DownloadManager;

    .line 78
    iput-object p3, p0, Lo/ExpandableListActivity;->c:Lo/ContextImpl;

    .line 79
    iput-object p4, p0, Lo/ExpandableListActivity;->e:Lo/FragmentState;

    .line 80
    iput-object p5, p0, Lo/ExpandableListActivity;->f:Ljava/lang/String;

    return-void
.end method

.method private b(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .line 247
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->a_(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object p2

    .line 248
    iget-object v0, p0, Lo/ExpandableListActivity;->e:Lo/FragmentState;

    invoke-interface {v0, p1, p2}, Lo/FragmentState;->b(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method private b(Lcom/android/volley/Request;Ljava/lang/Throwable;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1, p2}, Lo/ExpandableListActivity;->e(Lcom/android/volley/Request;Ljava/lang/Throwable;)V

    return-void
.end method

.method private d(Lcom/android/volley/Request;)V
    .locals 2

    const/4 v0, 0x1

    .line 209
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->b(Z)V

    .line 210
    sget-object v0, Lcom/android/volley/Request$ResourceLocationType;->e:Lcom/android/volley/Request$ResourceLocationType;

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->a(Lcom/android/volley/Request$ResourceLocationType;)V

    .line 212
    sget-object v0, Lo/ExpandableListActivity;->h:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 213
    :try_start_0
    sget-object v1, Lo/ExpandableListActivity;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 214
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ExpandableListActivity$StateListAnimator;

    if-eqz v1, :cond_0

    .line 217
    invoke-interface {v1, p1}, Lo/ExpandableListActivity$StateListAnimator;->c(Lcom/android/volley/Request;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 214
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private e(Lcom/android/volley/Request;)V
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, p1, v0}, Lo/ExpandableListActivity;->e(Lcom/android/volley/Request;Ljava/lang/Throwable;)V

    return-void
.end method

.method private e(Lcom/android/volley/Request;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->b(Z)V

    .line 236
    sget-object v0, Lo/ExpandableListActivity;->h:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 237
    :try_start_0
    sget-object v1, Lo/ExpandableListActivity;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 238
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ExpandableListActivity$StateListAnimator;

    if-eqz v1, :cond_0

    .line 241
    invoke-interface {v1, p1, p2}, Lo/ExpandableListActivity$StateListAnimator;->e(Lcom/android/volley/Request;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 238
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static e(Lo/ExpandableListActivity$StateListAnimator;)V
    .locals 2

    .line 258
    sget-object v0, Lo/ExpandableListActivity;->h:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 259
    :try_start_0
    sget-object v1, Lo/ExpandableListActivity;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method protected c(Lcom/android/volley/Request;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 203
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Unhandled exception %s"

    invoke-static {p2, v1, v0}, Lo/FragmentContainer;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lo/ExpandableListActivity;->e:Lo/FragmentState;

    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-direct {v1, p2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, p1, v1}, Lo/FragmentState;->b(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 205
    invoke-direct {p0, p1, p2}, Lo/ExpandableListActivity;->b(Lcom/android/volley/Request;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected c(Lcom/android/volley/Request;Lo/ExitTransitionCoordinator;)V
    .locals 3

    const-string v0, "network-http-complete"

    .line 171
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 175
    iget-boolean v0, p2, Lo/ExitTransitionCoordinator;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/Request;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "not-modified"

    .line 176
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    return-void

    .line 181
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;

    move-result-object p2

    const-string v0, "network-parse-complete"

    .line 182
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Lcom/android/volley/Request;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lo/FragmentManagerNonConfig;->d:Lo/ContextImpl$StateListAnimator;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lo/ExpandableListActivity;->c:Lo/ContextImpl;

    invoke-virtual {p1}, Lcom/android/volley/Request;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lo/FragmentManagerNonConfig;->d:Lo/ContextImpl$StateListAnimator;

    invoke-interface {v0, v1, v2}, Lo/ContextImpl;->e(Ljava/lang/String;Lo/ContextImpl$StateListAnimator;)V

    const-string v0, "network-cache-written"

    .line 188
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 192
    :cond_1
    invoke-virtual {p1}, Lcom/android/volley/Request;->z()V

    .line 193
    iget-object v0, p0, Lo/ExpandableListActivity;->e:Lo/FragmentState;

    invoke-interface {v0, p1, p2}, Lo/FragmentState;->c(Lcom/android/volley/Request;Lo/FragmentManagerNonConfig;)V

    .line 194
    invoke-direct {p0, p1}, Lo/ExpandableListActivity;->e(Lcom/android/volley/Request;)V

    return-void
.end method

.method protected d(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2}, Lo/ExpandableListActivity;->b(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 199
    invoke-direct {p0, p1, p2}, Lo/ExpandableListActivity;->b(Lcom/android/volley/Request;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected d(Lcom/android/volley/Request;Lo/ExpandableListActivity$TaskDescription;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lo/ExpandableListActivity;->d:Lo/DownloadManager;

    invoke-interface {v0, p1}, Lo/DownloadManager;->c(Lcom/android/volley/Request;)Lo/ExitTransitionCoordinator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lo/ExpandableListActivity$TaskDescription;->d(Lcom/android/volley/Request;Lo/ExitTransitionCoordinator;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lo/ExpandableListActivity;->a:Z

    .line 89
    invoke-virtual {p0}, Lo/ExpandableListActivity;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 6

    const/16 v0, 0xa

    .line 95
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 101
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lo/ExpandableListActivity;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 110
    iget-object v1, p0, Lo/ExpandableListActivity;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo/ExpandableListActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Http request is blocked ?- queue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/ExpandableListActivity;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RequestQueue_Blocked"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catch Lcom/android/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v1, "network-queue-take"

    .line 116
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->e(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Lcom/android/volley/Request;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "network-discard-cancelled"

    .line 121
    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->a(Ljava/lang/String;)V

    .line 122
    monitor-exit v0

    goto :goto_0

    .line 125
    :cond_2
    invoke-direct {p0, v0}, Lo/ExpandableListActivity;->d(Lcom/android/volley/Request;)V

    .line 126
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :try_start_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_3

    .line 129
    invoke-virtual {v0}, Lcom/android/volley/Request;->m()I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 132
    :cond_3
    invoke-virtual {v0}, Lcom/android/volley/Request;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    invoke-virtual {v0}, Lcom/android/volley/Request;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/Notification;->d(Ljava/lang/String;)[B

    move-result-object v1

    .line 134
    new-instance v2, Lo/ExitTransitionCoordinator;

    const/16 v3, 0xc8

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Lo/ExitTransitionCoordinator;-><init>(I[BLjava/util/Map;Z)V

    invoke-virtual {p0, v0, v2}, Lo/ExpandableListActivity;->c(Lcom/android/volley/Request;Lo/ExitTransitionCoordinator;)V

    goto :goto_0

    .line 137
    :cond_4
    new-instance v1, Lo/ExpandableListActivity$4;

    invoke-direct {v1, p0}, Lo/ExpandableListActivity$4;-><init>(Lo/ExpandableListActivity;)V

    invoke-virtual {p0, v0, v1}, Lo/ExpandableListActivity;->d(Lcom/android/volley/Request;Lo/ExpandableListActivity$TaskDescription;)V
    :try_end_3
    .catch Lcom/android/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 126
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Lcom/android/volley/VolleyError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v1

    .line 157
    invoke-virtual {p0, v0, v1}, Lo/ExpandableListActivity;->c(Lcom/android/volley/Request;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .line 155
    invoke-virtual {p0, v0, v1}, Lo/ExpandableListActivity;->d(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    :catch_2
    nop

    .line 104
    iget-boolean v0, p0, Lo/ExpandableListActivity;->a:Z

    if-eqz v0, :cond_0

    return-void
.end method
