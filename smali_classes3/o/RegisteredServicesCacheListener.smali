.class public Lo/RegisteredServicesCacheListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PackageSharedLibraryUpdater;


# static fields
.field private static c:Lo/RegisteredServicesCacheListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lo/RegisteredServicesCacheListener;
    .locals 2

    const-class v0, Lo/RegisteredServicesCacheListener;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lo/RegisteredServicesCacheListener;->c:Lo/RegisteredServicesCacheListener;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lo/RegisteredServicesCacheListener;

    invoke-direct {v1}, Lo/RegisteredServicesCacheListener;-><init>()V

    sput-object v1, Lo/RegisteredServicesCacheListener;->c:Lo/RegisteredServicesCacheListener;

    .line 24
    :cond_0
    sget-object v1, Lo/RegisteredServicesCacheListener;->c:Lo/RegisteredServicesCacheListener;
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
.method public c(Lo/PathPermission;)V
    .locals 0

    return-void
.end method
