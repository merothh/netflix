.class public Lorg/linphone/core/LinphonePlayerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/linphone/core/LinphonePlayer;


# instance fields
.field private nativePtr:J


# direct methods
.method constructor <init>(J)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    .line 15
    iput-wide p1, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    .line 16
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphonePlayerImpl;->init(J)V

    return-void
.end method

.method private native close(J)V
.end method

.method private native destroy(J)V
.end method

.method private native getCurrentPosition(J)I
.end method

.method private native getDuration(J)I
.end method

.method private native getState(J)I
.end method

.method private native init(J)V
.end method

.method private native open(JLjava/lang/String;)I
.end method

.method private native pause(J)I
.end method

.method private native seek(JI)I
.end method

.method private native start(J)I
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 64
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphonePlayerImpl;->close(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2

    .line 70
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphonePlayerImpl;->destroy(J)V

    return-void
.end method

.method public declared-synchronized getCurrentPosition()I
    .locals 2

    monitor-enter p0

    .line 58
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphonePlayerImpl;->getCurrentPosition(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDuration()I
    .locals 2

    monitor-enter p0

    .line 52
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphonePlayerImpl;->getDuration(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()Lorg/linphone/core/LinphonePlayer$State;
    .locals 2

    monitor-enter p0

    .line 46
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphonePlayerImpl;->getState(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphonePlayer$State;->fromValue(I)Lorg/linphone/core/LinphonePlayer$State;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    .line 22
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphonePlayerImpl;->open(JLjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pause()I
    .locals 2

    monitor-enter p0

    .line 34
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphonePlayerImpl;->pause(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seek(I)I
    .locals 2

    monitor-enter p0

    .line 40
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphonePlayerImpl;->seek(JI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()I
    .locals 2

    monitor-enter p0

    .line 28
    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphonePlayerImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphonePlayerImpl;->start(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
