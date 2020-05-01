.class public Lo/J;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/H;


# static fields
.field private static a:Lorg/chromium/net/ExperimentalCronetEngine;


# instance fields
.field private final c:Landroid/content/Context;

.field private d:Lo/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lo/J;->c:Landroid/content/Context;

    .line 51
    new-instance v0, Lo/y;

    invoke-direct {v0, p1}, Lo/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/J;->d:Lo/y;

    .line 52
    sget-object v0, Lo/J;->a:Lorg/chromium/net/ExperimentalCronetEngine;

    if-nez v0, :cond_0

    .line 53
    invoke-static {p1}, Lo/G;->a(Landroid/content/Context;)Lorg/chromium/net/ExperimentalCronetEngine;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lo/J;->d:Lo/y;

    invoke-static {v0}, Lo/A;->a(Lo/y;)Lo/A;

    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Lorg/chromium/net/ExperimentalCronetEngine;->addRequestFinishedListener(Lorg/chromium/net/RequestFinishedInfo$Listener;)V

    .line 58
    sput-object p1, Lo/J;->a:Lorg/chromium/net/ExperimentalCronetEngine;

    .line 61
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-ge p1, v0, :cond_1

    .line 66
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lo/E;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lo/J;->d:Lo/y;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Lo/y;->b(Lo/E;)V

    :cond_0
    return-void
.end method

.method public c(Lo/ContextImpl;Lo/DownloadManager;IZLjava/lang/String;)Lo/FragmentHostCallback;
    .locals 7

    .line 139
    new-instance v6, Lo/F;

    iget-object v0, p0, Lo/J;->c:Landroid/content/Context;

    sget-object v1, Lo/J;->a:Lorg/chromium/net/ExperimentalCronetEngine;

    invoke-direct {v6, v0, v1, p4}, Lo/F;-><init>(Landroid/content/Context;Lorg/chromium/net/ExperimentalCronetEngine;Z)V

    .line 141
    invoke-virtual {v6}, Lo/F;->d()Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, p3

    .line 145
    :goto_0
    new-instance p3, Lo/FragmentHostCallback;

    new-instance v4, Lo/DatePickerDialog;

    new-instance p4, Landroid/os/Handler;

    .line 146
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v4, p4}, Lo/DatePickerDialog;-><init>(Landroid/os/Handler;)V

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lo/FragmentHostCallback;-><init>(Lo/ContextImpl;Lo/DownloadManager;ILo/FragmentState;Ljava/lang/String;Lo/EnterTransitionCoordinator;)V

    return-object p3
.end method

.method public d()I
    .locals 2

    .line 124
    sget-object v0, Lo/J;->a:Lorg/chromium/net/ExperimentalCronetEngine;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lorg/chromium/net/ExperimentalCronetEngine;->getDownstreamThroughputKbps()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public d(Ljava/lang/String;Lcom/android/volley/Request$Priority;Ljava/util/Map;Ljava/lang/Object;Ljava/util/List;)Lo/B;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request$Priority;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/B;"
        }
    .end annotation

    .line 77
    new-instance v7, Lo/S;

    sget-object v1, Lo/J;->a:Lorg/chromium/net/ExperimentalCronetEngine;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lo/S;-><init>(Lorg/chromium/net/ExperimentalCronetEngine;Ljava/lang/String;Lcom/android/volley/Request$Priority;Ljava/util/Map;Ljava/lang/Object;Ljava/util/List;)V

    return-object v7
.end method

.method public e(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 72
    new-instance v0, Lo/Y;

    sget-object v1, Lo/J;->a:Lorg/chromium/net/ExperimentalCronetEngine;

    invoke-direct {v0, p1, v1}, Lo/Y;-><init>(Ljava/net/URL;Lorg/chromium/net/CronetEngine;)V

    return-object v0
.end method
