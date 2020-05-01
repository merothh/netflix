.class public final Lcom/crittercism/internal/m;
.super Ljava/io/InputStream;

# interfaces
.implements Lcom/crittercism/internal/ah;


# instance fields
.field a:Lcom/crittercism/internal/c;

.field b:Ljava/io/InputStream;

.field c:Lcom/crittercism/internal/aa;

.field private d:Lcom/crittercism/internal/z;

.field private e:Lcom/crittercism/internal/e;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/z;Ljava/io/InputStream;Lcom/crittercism/internal/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "socket was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "delegate was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "dispatch was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/crittercism/internal/m;->d:Lcom/crittercism/internal/z;

    iput-object p2, p0, Lcom/crittercism/internal/m;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/crittercism/internal/m;->e:Lcom/crittercism/internal/e;

    invoke-virtual {p0}, Lcom/crittercism/internal/m;->b()Lcom/crittercism/internal/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/m;->c:Lcom/crittercism/internal/aa;

    iget-object v0, p0, Lcom/crittercism/internal/m;->c:Lcom/crittercism/internal/aa;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "parser was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/crittercism/internal/m;->d()Lcom/crittercism/internal/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/c;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/crittercism/internal/m;->e:Lcom/crittercism/internal/e;

    sget-object v2, Lcom/crittercism/internal/c$a;->h:Lcom/crittercism/internal/c$a;

    invoke-virtual {v1, v0, v2}, Lcom/crittercism/internal/e;->a(Lcom/crittercism/internal/c;Lcom/crittercism/internal/c$a;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private a([BII)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/m;->c:Lcom/crittercism/internal/aa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/crittercism/internal/aa;->a([BII)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    iput-object v0, p0, Lcom/crittercism/internal/m;->c:Lcom/crittercism/internal/aa;

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    iput-object v1, p0, Lcom/crittercism/internal/m;->c:Lcom/crittercism/internal/aa;

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private d()Lcom/crittercism/internal/c;
    .locals 2

    iget-object v0, p0, Lcom/crittercism/internal/m;->a:Lcom/crittercism/internal/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/m;->d:Lcom/crittercism/internal/z;

    invoke-interface {v0}, Lcom/crittercism/internal/z;->b()Lcom/crittercism/internal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/m;->a:Lcom/crittercism/internal/c;

    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/m;->a:Lcom/crittercism/internal/c;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No statistics were queued up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/crittercism/internal/m;->a:Lcom/crittercism/internal/c;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/crittercism/internal/aa;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/m;->c:Lcom/crittercism/internal/aa;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    invoke-direct {p0}, Lcom/crittercism/internal/m;->d()Lcom/crittercism/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crittercism/internal/c;->c()V

    iput p1, v0, Lcom/crittercism/internal/c;->e:I

    return-void
.end method

.method public final a(Lcom/crittercism/internal/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/internal/m;->c:Lcom/crittercism/internal/aa;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final available()I
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/m;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final b()Lcom/crittercism/internal/aa;
    .locals 1

    new-instance v0, Lcom/crittercism/internal/al;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/al;-><init>(Lcom/crittercism/internal/ah;)V

    return-object v0
.end method

.method public final b(I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/crittercism/internal/m;->a:Lcom/crittercism/internal/c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/crittercism/internal/m;->a:Lcom/crittercism/internal/c;

    iget v1, v1, Lcom/crittercism/internal/c;->e:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_0

    new-instance v0, Lcom/crittercism/internal/c;

    iget-object v1, p0, Lcom/crittercism/internal/m;->a:Lcom/crittercism/internal/c;

    invoke-virtual {v1}, Lcom/crittercism/internal/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crittercism/internal/c;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crittercism/internal/m;->a:Lcom/crittercism/internal/c;

    iget-wide v2, v1, Lcom/crittercism/internal/c;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/crittercism/internal/c;->c(J)V

    iget-object v1, p0, Lcom/crittercism/internal/m;->a:Lcom/crittercism/internal/c;

    iget-wide v2, v1, Lcom/crittercism/internal/c;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/crittercism/internal/c;->b(J)V

    iget-object v1, p0, Lcom/crittercism/internal/m;->a:Lcom/crittercism/internal/c;

    iget-object v1, v1, Lcom/crittercism/internal/c;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/crittercism/internal/c;->f:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/crittercism/internal/m;->a:Lcom/crittercism/internal/c;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/crittercism/internal/c;->a(J)V

    iget-object v1, p0, Lcom/crittercism/internal/m;->e:Lcom/crittercism/internal/e;

    iget-object v2, p0, Lcom/crittercism/internal/m;->a:Lcom/crittercism/internal/c;

    sget-object v3, Lcom/crittercism/internal/c$a;->g:Lcom/crittercism/internal/c$a;

    invoke-virtual {v1, v2, v3}, Lcom/crittercism/internal/e;->a(Lcom/crittercism/internal/c;Lcom/crittercism/internal/c$a;)V

    :cond_1
    iput-object v0, p0, Lcom/crittercism/internal/m;->a:Lcom/crittercism/internal/c;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/crittercism/internal/m;->d()Lcom/crittercism/internal/c;

    move-result-object v0

    iget-object v0, v0, Lcom/crittercism/internal/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/m;->c:Lcom/crittercism/internal/aa;

    invoke-virtual {v0}, Lcom/crittercism/internal/aa;->f()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/crittercism/internal/m;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final mark(I)V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/m;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/m;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/m;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :try_start_1
    iget-object v0, p0, Lcom/crittercism/internal/m;->c:Lcom/crittercism/internal/aa;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/aa;->a(I)Z
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/crittercism/internal/m;->a(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    sget-object v0, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    iput-object v0, p0, Lcom/crittercism/internal/m;->c:Lcom/crittercism/internal/aa;

    goto :goto_0

    :catch_3
    move-exception v0

    sget-object v2, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    iput-object v2, p0, Lcom/crittercism/internal/m;->c:Lcom/crittercism/internal/aa;

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/m;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/crittercism/internal/m;->a([BII)V

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/crittercism/internal/m;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final read([BII)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/m;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/crittercism/internal/m;->a([BII)V

    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/crittercism/internal/m;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/m;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 3

    iget-object v0, p0, Lcom/crittercism/internal/m;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
