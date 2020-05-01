.class Lo/r$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/w$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic b:Lo/r;

.field private final d:Lcom/android/volley/Request;

.field private final e:Lo/ExpandableListActivity$TaskDescription;


# direct methods
.method public constructor <init>(Lo/r;Lcom/android/volley/Request;Lo/ExpandableListActivity$TaskDescription;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lo/r$Application;->b:Lo/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p2, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    .line 257
    iput-object p3, p0, Lo/r$Application;->e:Lo/ExpandableListActivity$TaskDescription;

    .line 258
    iget-object p1, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    invoke-virtual {p1}, Lcom/android/volley/Request;->G()Lo/FragmentTransition;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    invoke-virtual {p1}, Lcom/android/volley/Request;->G()Lo/FragmentTransition;

    move-result-object p1

    invoke-interface {p1, p2}, Lo/FragmentTransition;->c(Lcom/android/volley/Request;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 325
    iget-object v0, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    invoke-direct {p0, v0}, Lo/r$Application;->e(Lcom/android/volley/Request;)J

    move-result-wide v0

    .line 326
    iget-object v2, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    invoke-direct {p0, v2, p1}, Lo/r$Application;->b(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    iget-object p1, p0, Lo/r$Application;->b:Lo/r;

    invoke-static {p1}, Lo/r;->b(Lo/r;)Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Lo/r$Application$2;

    invoke-direct {v2, p0}, Lo/r$Application$2;-><init>(Lo/r$Application;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p0, Lo/r$Application;->e:Lo/ExpandableListActivity$TaskDescription;

    iget-object v1, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lo/ExpandableListActivity$TaskDescription;->d(Lcom/android/volley/Request;Lo/ExitTransitionCoordinator;Lcom/android/volley/VolleyError;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lo/r$Application;)Lcom/android/volley/Request;
    .locals 0

    .line 251
    iget-object p0, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    return-object p0
.end method

.method private b(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)Z
    .locals 4

    .line 343
    invoke-virtual {p1}, Lcom/android/volley/Request;->A()Lo/FragmentController;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 346
    :try_start_0
    invoke-interface {p1, p2}, Lo/FragmentController;->b(Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p2, 0x0

    .line 352
    :goto_0
    iget-object v2, p0, Lo/r$Application;->b:Lo/r;

    invoke-static {v2}, Lo/r;->c(Lo/r;)Lo/O;

    move-result-object v2

    invoke-virtual {v2}, Lo/O;->c()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 356
    invoke-interface {p1}, Lo/FragmentController;->a()I

    move-result p1

    iget-object v2, p0, Lo/r$Application;->b:Lo/r;

    invoke-static {v2}, Lo/r;->c(Lo/r;)Lo/O;

    move-result-object v2

    invoke-virtual {v2}, Lo/O;->c()I

    move-result v2

    if-ge p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method private d(Lo/ExitTransitionCoordinator;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 375
    iget-object v0, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    iget-object p1, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v0, "X-Netflix.Retry.Server.Policy"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 379
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/r$Application;->b:Lo/r;

    invoke-static {v1}, Lo/r;->d(Lo/r;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 380
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    const-class v1, Lo/O;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/O;

    .line 381
    iget-object v1, p0, Lo/r$Application;->b:Lo/r;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {v1, p1}, Lo/r;->c(Lo/r;I)I

    .line 382
    iget-object p1, p0, Lo/r$Application;->b:Lo/r;

    invoke-static {p1}, Lo/r;->c(Lo/r;)Lo/O;

    move-result-object v1

    invoke-static {v1, v0}, Lo/O;->e(Lo/O;Lo/O;)Lo/O;

    move-result-object v0

    invoke-static {p1, v0}, Lo/r;->b(Lo/r;Lo/O;)Lo/O;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 383
    iget-object v1, p0, Lo/r$Application;->b:Lo/r;

    invoke-static {v1}, Lo/r;->c(Lo/r;)Lo/O;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "nf_network"

    const-string v1, "updated server retry policy to %s"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private e(Lcom/android/volley/Request;)J
    .locals 6

    .line 364
    invoke-virtual {p1}, Lcom/android/volley/Request;->A()Lo/FragmentController;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 366
    invoke-interface {p1}, Lo/FragmentController;->a()I

    move-result p1

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, v0

    double-to-long v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    .line 368
    :goto_0
    iget-object p1, p0, Lo/r$Application;->b:Lo/r;

    invoke-static {p1}, Lo/r;->c(Lo/r;)Lo/O;

    move-result-object p1

    invoke-virtual {p1}, Lo/O;->a()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 369
    iget-object p1, p0, Lo/r$Application;->b:Lo/r;

    invoke-static {p1}, Lo/r;->c(Lo/r;)Lo/O;

    move-result-object p1

    invoke-virtual {p1}, Lo/O;->a()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public b(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->G()Lo/FragmentTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->G()Lo/FragmentTransition;

    move-result-object v0

    iget-object v1, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    iget-object v2, p1, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    invoke-interface {v0, v1, v2, p1}, Lo/FragmentTransition;->c(Lcom/android/volley/Request;Lo/ExitTransitionCoordinator;Lcom/android/volley/VolleyError;)V

    .line 312
    :cond_0
    iget-object v0, p1, Lcom/android/volley/VolleyError;->e:Lo/ExitTransitionCoordinator;

    invoke-direct {p0, v0}, Lo/r$Application;->d(Lo/ExitTransitionCoordinator;)V

    .line 313
    invoke-direct {p0, p1}, Lo/r$Application;->a(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 3

    .line 318
    instance-of v0, p1, Lcom/android/volley/VolleyError;

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 321
    :cond_0
    iget-object v0, p0, Lo/r$Application;->e:Lo/ExpandableListActivity$TaskDescription;

    iget-object v1, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    const/4 v2, 0x0

    check-cast p1, Lcom/android/volley/VolleyError;

    invoke-interface {v0, v1, v2, p1}, Lo/ExpandableListActivity$TaskDescription;->d(Lcom/android/volley/Request;Lo/ExitTransitionCoordinator;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public e(Lo/ExitTransitionCoordinator;)V
    .locals 7

    .line 265
    iget-object v0, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    iget-object v1, p1, Lo/ExitTransitionCoordinator;->c:[B

    array-length v1, v1

    iget-object v2, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    invoke-virtual {v2}, Lcom/android/volley/Request;->c()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lo/Instrumentation;->e(Lcom/android/volley/Request;IJ)V

    .line 266
    iget-object v0, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->G()Lo/FragmentTransition;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->G()Lo/FragmentTransition;

    move-result-object v0

    iget-object v2, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    invoke-interface {v0, v2, p1, v1}, Lo/FragmentTransition;->c(Lcom/android/volley/Request;Lo/ExitTransitionCoordinator;Lcom/android/volley/VolleyError;)V

    .line 269
    :cond_0
    invoke-direct {p0, p1}, Lo/r$Application;->d(Lo/ExitTransitionCoordinator;)V

    .line 270
    iget v0, p1, Lo/ExitTransitionCoordinator;->d:I

    const/16 v2, 0x19a

    const/4 v3, 0x0

    const-string v4, "nf_network"

    const/4 v5, 0x1

    if-ne v0, v2, :cond_2

    .line 271
    iget-object v0, p1, Lo/ExitTransitionCoordinator;->c:[B

    invoke-static {v0}, Lo/L;->b([B)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v2, "GONE: redirecting to %s"

    .line 272
    invoke-static {v4, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v0, :cond_1

    .line 274
    iget-object p1, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->b(Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lo/r$Application;->b:Lo/r;

    iget-object v0, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    invoke-static {p1, v0, p0}, Lo/r;->e(Lo/r;Lcom/android/volley/Request;Lo/r$Application;)V

    goto/16 :goto_2

    .line 277
    :cond_1
    new-instance v0, Lcom/android/volley/ServerError;

    invoke-direct {v0, p1}, Lcom/android/volley/ServerError;-><init>(Lo/ExitTransitionCoordinator;)V

    invoke-direct {p0, v0}, Lo/r$Application;->a(Lcom/android/volley/VolleyError;)V

    goto/16 :goto_2

    .line 279
    :cond_2
    iget v0, p1, Lo/ExitTransitionCoordinator;->d:I

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_7

    iget v0, p1, Lo/ExitTransitionCoordinator;->d:I

    const/16 v2, 0x12e

    if-eq v0, v2, :cond_7

    iget v0, p1, Lo/ExitTransitionCoordinator;->d:I

    const/16 v2, 0x133

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 291
    :cond_3
    iget v0, p1, Lo/ExitTransitionCoordinator;->d:I

    const/16 v2, 0x190

    if-ge v0, v2, :cond_6

    iget v0, p1, Lo/ExitTransitionCoordinator;->d:I

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_4

    goto :goto_0

    .line 295
    :cond_4
    iget v0, p1, Lo/ExitTransitionCoordinator;->d:I

    const/16 v2, 0x130

    if-ne v0, v2, :cond_5

    .line 297
    iget-object v0, p0, Lo/r$Application;->e:Lo/ExpandableListActivity$TaskDescription;

    iget-object v2, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    new-instance v3, Lo/ExitTransitionCoordinator;

    iget v4, p1, Lo/ExitTransitionCoordinator;->d:I

    iget-object v6, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    .line 298
    invoke-virtual {v6}, Lcom/android/volley/Request;->o()Lo/ContextImpl$StateListAnimator;

    move-result-object v6

    iget-object v6, v6, Lo/ContextImpl$StateListAnimator;->a:[B

    iget-object p1, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    invoke-direct {v3, v4, v6, p1, v5}, Lo/ExitTransitionCoordinator;-><init>(I[BLjava/util/Map;Z)V

    .line 297
    invoke-interface {v0, v2, v3, v1}, Lo/ExpandableListActivity$TaskDescription;->d(Lcom/android/volley/Request;Lo/ExitTransitionCoordinator;Lcom/android/volley/VolleyError;)V

    goto :goto_2

    .line 300
    :cond_5
    iget-object v0, p0, Lo/r$Application;->e:Lo/ExpandableListActivity$TaskDescription;

    iget-object v2, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    invoke-interface {v0, v2, p1, v1}, Lo/ExpandableListActivity$TaskDescription;->d(Lcom/android/volley/Request;Lo/ExitTransitionCoordinator;Lcom/android/volley/VolleyError;)V

    goto :goto_2

    .line 293
    :cond_6
    :goto_0
    new-instance v0, Lcom/android/volley/ServerError;

    invoke-direct {v0, p1}, Lcom/android/volley/ServerError;-><init>(Lo/ExitTransitionCoordinator;)V

    .line 294
    invoke-direct {p0, v0}, Lo/r$Application;->a(Lcom/android/volley/VolleyError;)V

    goto :goto_2

    .line 283
    :cond_7
    :goto_1
    iget-object v0, p1, Lo/ExitTransitionCoordinator;->a:Ljava/util/Map;

    const-string v1, "Location"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v2, "REDIRECT: redirecting to %s"

    .line 284
    invoke-static {v4, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v0, :cond_8

    .line 286
    iget-object p1, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->d(Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lo/r$Application;->b:Lo/r;

    iget-object v0, p0, Lo/r$Application;->d:Lcom/android/volley/Request;

    invoke-static {p1, v0, p0}, Lo/r;->e(Lo/r;Lcom/android/volley/Request;Lo/r$Application;)V

    goto :goto_2

    .line 289
    :cond_8
    new-instance v0, Lcom/android/volley/ServerError;

    invoke-direct {v0, p1}, Lcom/android/volley/ServerError;-><init>(Lo/ExitTransitionCoordinator;)V

    invoke-direct {p0, v0}, Lo/r$Application;->a(Lcom/android/volley/VolleyError;)V

    :goto_2
    return-void
.end method
