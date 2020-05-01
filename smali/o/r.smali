.class public Lo/r;
.super Lo/ExpandableListActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/r$Application;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/Executor;


# instance fields
.field private a:Lo/O;

.field private b:I

.field private final d:Landroid/content/Context;

.field private e:Landroid/os/Handler;

.field private final g:Lorg/chromium/net/ExperimentalCronetEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 81
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lo/r;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/net/ExperimentalCronetEngine;Ljava/util/concurrent/BlockingQueue;Lo/DownloadManager;Lo/ContextImpl;Lo/FragmentState;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/chromium/net/ExperimentalCronetEngine;",
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

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 102
    invoke-direct/range {v0 .. v5}, Lo/ExpandableListActivity;-><init>(Ljava/util/concurrent/BlockingQueue;Lo/DownloadManager;Lo/ContextImpl;Lo/FragmentState;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lo/O;->e()Lo/O;

    move-result-object p3

    iput-object p3, p0, Lo/r;->a:Lo/O;

    .line 86
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lo/r;->e:Landroid/os/Handler;

    .line 103
    iput-object p1, p0, Lo/r;->d:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lo/r;->g:Lorg/chromium/net/ExperimentalCronetEngine;

    return-void
.end method

.method static synthetic b(Lo/r;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lo/r;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lo/r;Lo/O;)Lo/O;
    .locals 0

    .line 60
    iput-object p1, p0, Lo/r;->a:Lo/O;

    return-object p1
.end method

.method private b(Lo/np;Ljava/util/Map;Lo/r$Application;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/np;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lo/r$Application;",
            ")V"
        }
    .end annotation

    .line 125
    sget-object v0, Lo/r;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/r$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/r$2;-><init>(Lo/r;Lo/np;Ljava/util/Map;Lo/r$Application;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lo/r;I)I
    .locals 0

    .line 60
    iput p1, p0, Lo/r;->b:I

    return p1
.end method

.method static synthetic c(Lo/r;)Lo/O;
    .locals 0

    .line 60
    iget-object p0, p0, Lo/r;->a:Lo/O;

    return-object p0
.end method

.method static synthetic d(Lo/r;)I
    .locals 0

    .line 60
    iget p0, p0, Lo/r;->b:I

    return p0
.end method

.method private d(Lcom/android/volley/Request;Lo/r$Application;)V
    .locals 6

    .line 187
    invoke-virtual {p1}, Lcom/android/volley/Request;->G()Lo/FragmentTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p1}, Lcom/android/volley/Request;->G()Lo/FragmentTransition;

    move-result-object v0

    invoke-interface {v0}, Lo/FragmentTransition;->c()Lo/GrantedUriPermission;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->e(Lo/GrantedUriPermission;)V

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->e()V

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    :try_start_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->o()Lo/ContextImpl$StateListAnimator;

    move-result-object v1

    invoke-static {v1}, Lo/L;->e(Lo/ContextImpl$StateListAnimator;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 195
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 198
    :cond_1
    instance-of v1, p1, Lo/np;

    if-eqz v1, :cond_2

    .line 199
    check-cast p1, Lo/np;

    invoke-direct {p0, p1, v0, p2}, Lo/r;->b(Lo/np;Ljava/util/Map;Lo/r$Application;)V

    return-void

    .line 203
    :cond_2
    invoke-virtual {p1}, Lcom/android/volley/Request;->v()[B

    move-result-object v1

    .line 205
    iget-object v2, p0, Lo/r;->g:Lorg/chromium/net/ExperimentalCronetEngine;

    invoke-virtual {p1}, Lcom/android/volley/Request;->k()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/w;

    invoke-virtual {p1}, Lcom/android/volley/Request;->k()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p2}, Lo/w;-><init>(Ljava/lang/String;Lo/w$StateListAnimator;)V

    sget-object v5, Lo/H;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v4, v5}, Lorg/chromium/net/ExperimentalCronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object v2

    .line 207
    invoke-virtual {p1}, Lcom/android/volley/Request;->B()Z

    move-result v3

    if-nez v3, :cond_3

    .line 208
    invoke-virtual {v2}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->disableCache()Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    .line 211
    :cond_3
    invoke-static {p1, v1}, Lo/C;->b(Lcom/android/volley/Request;[B)Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-virtual {v2, v3}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    const-string v4, "POST"

    .line 213
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 214
    invoke-static {v1}, Lorg/chromium/net/UploadDataProviders;->create([B)Lorg/chromium/net/UploadDataProvider;

    move-result-object v1

    sget-object v3, Lo/H;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v1, v3}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    const-string v1, "Content-Type"

    .line 215
    invoke-virtual {p1}, Lcom/android/volley/Request;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    .line 218
    :cond_4
    invoke-virtual {p1}, Lcom/android/volley/Request;->q()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 220
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 225
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 226
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    goto :goto_0

    .line 229
    :cond_6
    invoke-virtual {p1}, Lcom/android/volley/Request;->D()Lcom/android/volley/Request$Priority;

    move-result-object v0

    invoke-static {v0}, Lo/C;->e(Lcom/android/volley/Request$Priority;)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->setPriority(I)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    .line 231
    invoke-virtual {p1}, Lcom/android/volley/Request;->I()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 232
    invoke-virtual {v2, v1}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->addRequestAnnotation(Ljava/lang/Object;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    goto :goto_1

    .line 234
    :cond_7
    invoke-virtual {p1}, Lcom/android/volley/Request;->f()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/net/NetworkRequestType;

    if-eqz v0, :cond_8

    .line 236
    invoke-virtual {p1}, Lcom/android/volley/Request;->f()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->addRequestAnnotation(Ljava/lang/Object;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    .line 239
    :cond_8
    invoke-virtual {v2}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;->build()Lorg/chromium/net/ExperimentalUrlRequest;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 242
    invoke-virtual {p2, p1}, Lo/r$Application;->c(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method static synthetic e(Lo/r;Lcom/android/volley/Request;Lo/r$Application;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lo/r;->d(Lcom/android/volley/Request;Lo/r$Application;)V

    return-void
.end method


# virtual methods
.method protected d(Lcom/android/volley/Request;Lo/ExpandableListActivity$TaskDescription;)V
    .locals 2

    .line 109
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->b:Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlController;->d()Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p1}, Lcom/android/volley/Request;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/Request;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->a(Lo/FragmentTransition;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->b(Ljava/lang/String;)V

    .line 121
    :cond_1
    :goto_0
    new-instance v0, Lo/r$Application;

    invoke-direct {v0, p0, p1, p2}, Lo/r$Application;-><init>(Lo/r;Lcom/android/volley/Request;Lo/ExpandableListActivity$TaskDescription;)V

    invoke-direct {p0, p1, v0}, Lo/r;->d(Lcom/android/volley/Request;Lo/r$Application;)V

    return-void
.end method
