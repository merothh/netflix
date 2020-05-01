.class public final Lo/Presentation;
.super Ljava/lang/Object;
.source ""


# static fields
.field static b:Lo/Service;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/Presentation;->d:Ljava/lang/Object;

    return-void
.end method

.method private static b()V
    .locals 1

    const-string v0, "It appears that Bugsnag.init() was called more than once. Subsequent calls have no effect, but may indicate that Bugsnag is not integrated in an Application subclass, which can lead to undesired behaviour."

    .line 86
    invoke-static {v0}, Lo/WallpaperColors;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 569
    invoke-static {}, Lo/Presentation;->d()Lo/Service;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lo/Service;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Lo/QueuedWork;)V
    .locals 1

    .line 363
    invoke-static {}, Lo/Presentation;->d()Lo/Service;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/Service;->b(Lo/QueuedWork;)V

    return-void
.end method

.method public static c(Z)V
    .locals 1

    .line 668
    invoke-static {}, Lo/Presentation;->d()Lo/Service;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/Service;->e(Z)V

    return-void
.end method

.method public static d()Lo/Service;
    .locals 2

    .line 741
    sget-object v0, Lo/Presentation;->b:Lo/Service;

    if-eqz v0, :cond_0

    return-object v0

    .line 742
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Bugsnag.init before any other Bugsnag methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 606
    invoke-static {}, Lo/Presentation;->d()Lo/Service;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/Service;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Lo/SearchDialog;)Lo/Service;
    .locals 2

    .line 75
    sget-object v0, Lo/Presentation;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lo/Presentation;->b:Lo/Service;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lo/Service;

    invoke-direct {v1, p0, p1}, Lo/Service;-><init>(Landroid/content/Context;Lo/SearchDialog;)V

    sput-object v1, Lo/Presentation;->b:Lo/Service;

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Lo/Presentation;->b()V

    .line 81
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    sget-object p0, Lo/Presentation;->b:Lo/Service;

    return-object p0

    :catchall_0
    move-exception p0

    .line 81
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static e()V
    .locals 1

    .line 655
    invoke-static {}, Lo/Presentation;->d()Lo/Service;

    move-result-object v0

    invoke-virtual {v0}, Lo/Service;->g()V

    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1

    .line 395
    invoke-static {}, Lo/Presentation;->d()Lo/Service;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/Service;->d(Ljava/lang/Throwable;)V

    return-void
.end method
