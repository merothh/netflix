.class public Lo/LauncherApps;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/cache/common/CacheErrorLogger;


# static fields
.field private static d:Lo/LauncherApps;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lo/LauncherApps;
    .locals 2

    const-class v0, Lo/LauncherApps;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lo/LauncherApps;->d:Lo/LauncherApps;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lo/LauncherApps;

    invoke-direct {v1}, Lo/LauncherApps;-><init>()V

    sput-object v1, Lo/LauncherApps;->d:Lo/LauncherApps;

    .line 25
    :cond_0
    sget-object v1, Lo/LauncherApps;->d:Lo/LauncherApps;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public e(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method
