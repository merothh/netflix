.class public Lo/SessionConfiguration;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized d()V
    .locals 3

    const-class v0, Lo/SessionConfiguration;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-boolean v1, Lo/SessionConfiguration;->a:Z

    if-nez v1, :cond_1

    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x10

    if-gt v1, v2, :cond_0

    :try_start_1
    const-string v1, "fb_jpegturbo"

    .line 23
    invoke-static {v1}, Lcom/facebook/soloader/SoLoader;->d(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    const-string v1, "native-imagetranscoder"

    .line 28
    invoke-static {v1}, Lcom/facebook/soloader/SoLoader;->d(Ljava/lang/String;)Z

    const/4 v1, 0x1

    .line 29
    sput-boolean v1, Lo/SessionConfiguration;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
