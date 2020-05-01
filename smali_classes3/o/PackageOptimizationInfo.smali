.class public Lo/PackageOptimizationInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RuntimePermissionPresenter;


# static fields
.field private static c:Lo/PackageOptimizationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lo/PackageOptimizationInfo;
    .locals 2

    const-class v0, Lo/PackageOptimizationInfo;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lo/PackageOptimizationInfo;->c:Lo/PackageOptimizationInfo;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lo/PackageOptimizationInfo;

    invoke-direct {v1}, Lo/PackageOptimizationInfo;-><init>()V

    sput-object v1, Lo/PackageOptimizationInfo;->c:Lo/PackageOptimizationInfo;

    .line 23
    :cond_0
    sget-object v1, Lo/PackageOptimizationInfo;->c:Lo/PackageOptimizationInfo;
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
.method public d(Lo/SplitAssetDependencyLoader;)V
    .locals 0

    return-void
.end method
