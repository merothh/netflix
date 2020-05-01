.class public Lo/xz;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "[",
            "Lcom/netflix/mediaclient/media/subtitles/Subtitle;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lo/sE;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "[",
            "Lcom/netflix/mediaclient/media/AudioSource;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lo/xz;->d:Landroid/util/LongSparseArray;

    .line 25
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lo/xz;->b:Landroid/util/LongSparseArray;

    .line 26
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lo/xz;->c:Landroid/util/LongSparseArray;

    .line 27
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lo/xz;->a:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public a(J)Lo/sE;
    .locals 2

    .line 36
    iget-object v0, p0, Lo/xz;->b:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lo/xz;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/sE;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(JLo/sE;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lo/xz;->b:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lo/xz;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 32
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(J)[Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 3

    .line 68
    invoke-virtual {p0, p1, p2}, Lo/xz;->a(J)Lo/sE;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lo/xz;->a:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v2, p0, Lo/xz;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lo/sE;->J()[Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v2

    .line 74
    iget-object v0, p0, Lo/xz;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 76
    monitor-exit v1

    return-object p1

    .line 79
    :cond_1
    :goto_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p1

    .line 80
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(J)Lcom/netflix/mediaclient/media/Watermark;
    .locals 0

    .line 89
    invoke-virtual {p0, p1, p2}, Lo/xz;->a(J)Lo/sE;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p1}, Lo/sE;->ac()Lcom/netflix/mediaclient/media/Watermark;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public d(J)Ljava/lang/String;
    .locals 3

    .line 42
    iget-object v0, p0, Lo/xz;->d:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lo/xz;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 45
    invoke-static {}, Lo/adZ;->e()Ljava/lang/String;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lo/xz;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 48
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()V
    .locals 2

    .line 116
    iget-object v0, p0, Lo/xz;->d:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lo/xz;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 119
    iget-object v1, p0, Lo/xz;->a:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 120
    :try_start_1
    iget-object v0, p0, Lo/xz;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 121
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 122
    iget-object v0, p0, Lo/xz;->c:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 123
    :try_start_2
    iget-object v1, p0, Lo/xz;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 124
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    iget-object v1, p0, Lo/xz;->b:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 126
    :try_start_3
    iget-object v0, p0, Lo/xz;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 127
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 124
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    .line 121
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 118
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method

.method public e(J)[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 3

    .line 53
    invoke-virtual {p0, p1, p2}, Lo/xz;->a(J)Lo/sE;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lo/xz;->c:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v2, p0, Lo/xz;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/netflix/mediaclient/media/AudioSource;

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Lo/sE;->N()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    .line 59
    iget-object v0, p0, Lo/xz;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Lcom/netflix/mediaclient/media/AudioSource;

    .line 61
    monitor-exit v1

    return-object p1

    .line 64
    :cond_1
    :goto_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p1

    .line 65
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(J)Lcom/netflix/mediaclient/media/PlayerManifestData;
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2}, Lo/xz;->a(J)Lo/sE;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    invoke-interface {p1}, Lo/sE;->B()Lcom/netflix/mediaclient/media/PlayerManifestData;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public g(J)V
    .locals 2

    .line 110
    iget-object v0, p0, Lo/xz;->d:Landroid/util/LongSparseArray;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lo/xz;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 112
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(J)Lcom/netflix/mediaclient/service/player/StreamProfileType;
    .locals 0

    .line 95
    invoke-virtual {p0, p1, p2}, Lo/xz;->a(J)Lo/sE;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    invoke-interface {p1}, Lo/sE;->Z()Lcom/netflix/mediaclient/service/player/StreamProfileType;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/service/player/StreamProfileType;->b:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    :goto_0
    return-object p1
.end method
