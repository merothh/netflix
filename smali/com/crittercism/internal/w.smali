.class public final Lcom/crittercism/internal/w;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/crittercism/internal/k$a;

.field private b:Lcom/crittercism/internal/e;

.field private c:Lcom/crittercism/internal/d;

.field private final d:Ljava/util/Queue;

.field private e:Lcom/crittercism/internal/l;

.field private f:Lcom/crittercism/internal/m;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/k$a;Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crittercism/internal/w;->a:Lcom/crittercism/internal/k$a;

    iput-object p2, p0, Lcom/crittercism/internal/w;->b:Lcom/crittercism/internal/e;

    iput-object p3, p0, Lcom/crittercism/internal/w;->c:Lcom/crittercism/internal/d;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/w;->d:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/InetAddress;)Lcom/crittercism/internal/c;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/crittercism/internal/w;->a:Lcom/crittercism/internal/k$a;

    invoke-virtual {p0, p1, v0, v1}, Lcom/crittercism/internal/w;->a(Ljava/net/InetAddress;Ljava/lang/Integer;Lcom/crittercism/internal/k$a;)Lcom/crittercism/internal/c;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/net/InetAddress;Ljava/lang/Integer;Lcom/crittercism/internal/k$a;)Lcom/crittercism/internal/c;
    .locals 3

    new-instance v0, Lcom/crittercism/internal/c;

    invoke-direct {v0}, Lcom/crittercism/internal/c;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/crittercism/internal/c;->i:Ljava/lang/String;

    iget-object v1, v0, Lcom/crittercism/internal/c;->h:Lcom/crittercism/internal/k;

    iput-object p1, v1, Lcom/crittercism/internal/k;->a:Ljava/net/InetAddress;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lcom/crittercism/internal/c;->h:Lcom/crittercism/internal/k;

    if-lez v1, :cond_1

    iput v1, v2, Lcom/crittercism/internal/k;->e:I

    :cond_1
    if-eqz p3, :cond_2

    iget-object v1, v0, Lcom/crittercism/internal/c;->h:Lcom/crittercism/internal/k;

    iput-object p3, v1, Lcom/crittercism/internal/k;->d:Lcom/crittercism/internal/k$a;

    :cond_2
    iget-object v1, p0, Lcom/crittercism/internal/w;->c:Lcom/crittercism/internal/d;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/crittercism/internal/w;->c:Lcom/crittercism/internal/d;

    invoke-virtual {v1}, Lcom/crittercism/internal/d;->a()Lcom/crittercism/internal/b;

    move-result-object v1

    iput-object v1, v0, Lcom/crittercism/internal/c;->j:Lcom/crittercism/internal/b;

    :cond_3
    invoke-static {}, Lcom/crittercism/internal/ba;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/crittercism/internal/ba;->a()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/c;->a(Landroid/location/Location;)V

    :cond_4
    return-object v0
.end method

.method public final a(Lcom/crittercism/internal/z;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/w;->f:Lcom/crittercism/internal/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/crittercism/internal/w;->f:Lcom/crittercism/internal/m;

    iget-object v0, v0, Lcom/crittercism/internal/m;->b:Ljava/io/InputStream;

    if-ne v0, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/crittercism/internal/w;->f:Lcom/crittercism/internal/m;

    :cond_0
    :goto_1
    return-object p2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/crittercism/internal/m;

    iget-object v1, p0, Lcom/crittercism/internal/w;->b:Lcom/crittercism/internal/e;

    invoke-direct {v0, p1, p2, v1}, Lcom/crittercism/internal/m;-><init>(Lcom/crittercism/internal/z;Ljava/io/InputStream;Lcom/crittercism/internal/e;)V

    iput-object v0, p0, Lcom/crittercism/internal/w;->f:Lcom/crittercism/internal/m;

    iget-object p2, p0, Lcom/crittercism/internal/w;->f:Lcom/crittercism/internal/m;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Lcom/crittercism/internal/z;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/w;->e:Lcom/crittercism/internal/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/crittercism/internal/w;->e:Lcom/crittercism/internal/l;

    iget-object v0, v0, Lcom/crittercism/internal/l;->a:Ljava/io/OutputStream;

    if-ne v0, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/crittercism/internal/w;->e:Lcom/crittercism/internal/l;

    :cond_0
    :goto_1
    return-object p2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/crittercism/internal/l;

    invoke-direct {v0, p1, p2}, Lcom/crittercism/internal/l;-><init>(Lcom/crittercism/internal/z;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/crittercism/internal/w;->e:Lcom/crittercism/internal/l;

    iget-object p2, p0, Lcom/crittercism/internal/w;->e:Lcom/crittercism/internal/l;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/w;->f:Lcom/crittercism/internal/m;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/crittercism/internal/w;->f:Lcom/crittercism/internal/m;

    iget-object v0, v1, Lcom/crittercism/internal/m;->a:Lcom/crittercism/internal/c;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/crittercism/internal/m;->a:Lcom/crittercism/internal/c;

    iget-object v0, v0, Lcom/crittercism/internal/c;->g:Lcom/crittercism/internal/cl;

    sget-object v2, Lcom/crittercism/internal/ck;->a:Lcom/crittercism/internal/ck;

    iget v3, v0, Lcom/crittercism/internal/cl;->a:I

    sget v4, Lcom/crittercism/internal/cm;->d:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    iget v0, v0, Lcom/crittercism/internal/cl;->b:I

    iget v2, v2, Lcom/crittercism/internal/ck;->C:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/crittercism/internal/m;->c:Lcom/crittercism/internal/aa;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/crittercism/internal/m;->c:Lcom/crittercism/internal/aa;

    invoke-virtual {v0}, Lcom/crittercism/internal/aa;->f()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Lcom/crittercism/internal/c;)V
    .locals 2

    iget-object v1, p0, Lcom/crittercism/internal/w;->d:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/w;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(Ljava/io/IOException;Ljava/net/InetAddress;ILjava/lang/String;Lcom/crittercism/internal/k$a;)V
    .locals 3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p5}, Lcom/crittercism/internal/w;->a(Ljava/net/InetAddress;Ljava/lang/Integer;Lcom/crittercism/internal/k$a;)Lcom/crittercism/internal/c;

    move-result-object v0

    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Lcom/crittercism/internal/c;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/crittercism/internal/c;->b()V

    invoke-virtual {v0}, Lcom/crittercism/internal/c;->c()V

    iget-object v1, v0, Lcom/crittercism/internal/c;->h:Lcom/crittercism/internal/k;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/crittercism/internal/k;->f:Z

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/c;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/crittercism/internal/w;->b:Lcom/crittercism/internal/e;

    invoke-virtual {v1, v0}, Lcom/crittercism/internal/e;->a(Lcom/crittercism/internal/c;)V

    return-void
.end method

.method public final a(Ljava/io/IOException;Ljavax/net/ssl/SSLSocket;)V
    .locals 6

    :try_start_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/crittercism/internal/w;->a:Lcom/crittercism/internal/k$a;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/crittercism/internal/w;->a(Ljava/io/IOException;Ljava/net/InetAddress;ILjava/lang/String;Lcom/crittercism/internal/k$a;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
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
.end method

.method public final b()Lcom/crittercism/internal/c;
    .locals 2

    iget-object v1, p0, Lcom/crittercism/internal/w;->d:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/w;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/c;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
