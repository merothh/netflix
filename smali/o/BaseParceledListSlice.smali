.class public Lo/BaseParceledListSlice;
.super Ljava/io/InputStream;
.source ""


# static fields
.field private static final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lo/BaseParceledListSlice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/io/InputStream;

.field private c:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Lo/FallbackCategoryProvider;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lo/BaseParceledListSlice;->b:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method public static e(Ljava/io/InputStream;)Lo/BaseParceledListSlice;
    .locals 2

    .line 27
    sget-object v0, Lo/BaseParceledListSlice;->b:Ljava/util/Queue;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lo/BaseParceledListSlice;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/BaseParceledListSlice;

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lo/BaseParceledListSlice;

    invoke-direct {v1}, Lo/BaseParceledListSlice;-><init>()V

    .line 33
    :cond_0
    invoke-virtual {v1, p0}, Lo/BaseParceledListSlice;->d(Ljava/io/InputStream;)V

    return-object v1

    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()Ljava/io/IOException;
    .locals 1

    .line 127
    iget-object v0, p0, Lo/BaseParceledListSlice;->c:Ljava/io/IOException;

    return-object v0
.end method

.method public available()I
    .locals 1

    .line 54
    iget-object v0, p0, Lo/BaseParceledListSlice;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 59
    iget-object v0, p0, Lo/BaseParceledListSlice;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lo/BaseParceledListSlice;->c:Ljava/io/IOException;

    .line 132
    iput-object v0, p0, Lo/BaseParceledListSlice;->a:Ljava/io/InputStream;

    .line 133
    sget-object v0, Lo/BaseParceledListSlice;->b:Ljava/util/Queue;

    monitor-enter v0

    .line 134
    :try_start_0
    sget-object v1, Lo/BaseParceledListSlice;->b:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 135
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method d(Ljava/io/InputStream;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lo/BaseParceledListSlice;->a:Ljava/io/InputStream;

    return-void
.end method

.method public mark(I)V
    .locals 1

    .line 64
    iget-object v0, p0, Lo/BaseParceledListSlice;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lo/BaseParceledListSlice;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1

    .line 117
    :try_start_0
    iget-object v0, p0, Lo/BaseParceledListSlice;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    iput-object v0, p0, Lo/BaseParceledListSlice;->c:Ljava/io/IOException;

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 1

    .line 76
    :try_start_0
    iget-object v0, p0, Lo/BaseParceledListSlice;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    iput-object p1, p0, Lo/BaseParceledListSlice;->c:Ljava/io/IOException;

    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public read([BII)I
    .locals 1

    .line 88
    :try_start_0
    iget-object v0, p0, Lo/BaseParceledListSlice;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    iput-object p1, p0, Lo/BaseParceledListSlice;->c:Ljava/io/IOException;

    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lo/BaseParceledListSlice;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 1

    .line 105
    :try_start_0
    iget-object v0, p0, Lo/BaseParceledListSlice;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    iput-object p1, p0, Lo/BaseParceledListSlice;->c:Ljava/io/IOException;

    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method
