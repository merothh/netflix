.class public Lo/PackageInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/cache/common/CacheEventListener;


# static fields
.field private static b:Lo/PackageInfo;


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

.method public static declared-synchronized e()Lo/PackageInfo;
    .locals 2

    const-class v0, Lo/PackageInfo;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lo/PackageInfo;->b:Lo/PackageInfo;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lo/PackageInfo;

    invoke-direct {v1}, Lo/PackageInfo;-><init>()V

    sput-object v1, Lo/PackageInfo;->b:Lo/PackageInfo;

    .line 25
    :cond_0
    sget-object v1, Lo/PackageInfo;->b:Lo/PackageInfo;
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
.method public a(Lo/LimitedLengthInputStream;)V
    .locals 0

    return-void
.end method

.method public b(Lo/LimitedLengthInputStream;)V
    .locals 0

    return-void
.end method

.method public c(Lo/LimitedLengthInputStream;)V
    .locals 0

    return-void
.end method

.method public d(Lo/LimitedLengthInputStream;)V
    .locals 0

    return-void
.end method

.method public e(Lo/LimitedLengthInputStream;)V
    .locals 0

    return-void
.end method

.method public f(Lo/LimitedLengthInputStream;)V
    .locals 0

    return-void
.end method

.method public h(Lo/LimitedLengthInputStream;)V
    .locals 0

    return-void
.end method
