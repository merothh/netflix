.class public Lo/MarshalQueryableStreamConfigurationDuration;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/HighSpeedVideoConfiguration;


# static fields
.field private static d:Lo/MarshalQueryableStreamConfigurationDuration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized c()Lo/MarshalQueryableStreamConfigurationDuration;
    .locals 2

    const-class v0, Lo/MarshalQueryableStreamConfigurationDuration;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lo/MarshalQueryableStreamConfigurationDuration;->d:Lo/MarshalQueryableStreamConfigurationDuration;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lo/MarshalQueryableStreamConfigurationDuration;

    invoke-direct {v1}, Lo/MarshalQueryableStreamConfigurationDuration;-><init>()V

    sput-object v1, Lo/MarshalQueryableStreamConfigurationDuration;->d:Lo/MarshalQueryableStreamConfigurationDuration;

    .line 23
    :cond_0
    sget-object v1, Lo/MarshalQueryableStreamConfigurationDuration;->d:Lo/MarshalQueryableStreamConfigurationDuration;
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
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/facebook/imagepipeline/memory/BasePool;)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method
