.class public final Lo/SoundTriggerModule;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final c:Ljava/nio/channels/FileLock;

.field private final d:Ljava/io/FileOutputStream;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lo/SoundTriggerModule;->d:Ljava/io/FileOutputStream;

    .line 38
    :try_start_0
    iget-object p1, p0, Lo/SoundTriggerModule;->d:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 41
    iget-object v0, p0, Lo/SoundTriggerModule;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 45
    :cond_0
    iput-object p1, p0, Lo/SoundTriggerModule;->c:Ljava/nio/channels/FileLock;

    return-void

    :catchall_0
    move-exception p1

    .line 41
    iget-object v0, p0, Lo/SoundTriggerModule;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 43
    throw p1
.end method

.method public static c(Ljava/io/File;)Lo/SoundTriggerModule;
    .locals 1

    .line 31
    new-instance v0, Lo/SoundTriggerModule;

    invoke-direct {v0, p0}, Lo/SoundTriggerModule;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 51
    :try_start_0
    iget-object v0, p0, Lo/SoundTriggerModule;->c:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lo/SoundTriggerModule;->c:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    iget-object v0, p0, Lo/SoundTriggerModule;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lo/SoundTriggerModule;->d:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 56
    throw v0
.end method
