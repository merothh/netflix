.class public final Lcom/crittercism/internal/l;
.super Ljava/io/OutputStream;

# interfaces
.implements Lcom/crittercism/internal/ah;


# instance fields
.field a:Ljava/io/OutputStream;

.field private b:Lcom/crittercism/internal/z;

.field private c:Lcom/crittercism/internal/c;

.field private d:Lcom/crittercism/internal/aa;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/z;Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "socket was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "output stream was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/crittercism/internal/l;->b:Lcom/crittercism/internal/z;

    iput-object p2, p0, Lcom/crittercism/internal/l;->a:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lcom/crittercism/internal/l;->b()Lcom/crittercism/internal/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/l;->d:Lcom/crittercism/internal/aa;

    iget-object v0, p0, Lcom/crittercism/internal/l;->d:Lcom/crittercism/internal/aa;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "parser was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private a([BII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/l;->d:Lcom/crittercism/internal/aa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/crittercism/internal/aa;->a([BII)V
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

    sget-object v0, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    iput-object v0, p0, Lcom/crittercism/internal/l;->d:Lcom/crittercism/internal/aa;

    goto :goto_0
.end method

.method private d()Lcom/crittercism/internal/c;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/l;->c:Lcom/crittercism/internal/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/l;->b:Lcom/crittercism/internal/z;

    invoke-interface {v0}, Lcom/crittercism/internal/z;->a()Lcom/crittercism/internal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/l;->c:Lcom/crittercism/internal/c;

    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/l;->c:Lcom/crittercism/internal/c;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/crittercism/internal/aa;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/l;->d:Lcom/crittercism/internal/aa;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/crittercism/internal/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/internal/l;->d:Lcom/crittercism/internal/aa;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/crittercism/internal/l;->d()Lcom/crittercism/internal/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/c;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/crittercism/internal/l;->d()Lcom/crittercism/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crittercism/internal/c;->b()V

    iput-object p1, v0, Lcom/crittercism/internal/c;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/crittercism/internal/c;->i:Ljava/lang/String;

    iget-object v1, v0, Lcom/crittercism/internal/c;->h:Lcom/crittercism/internal/k;

    if-eqz p2, :cond_0

    iput-object p2, v1, Lcom/crittercism/internal/k;->c:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/crittercism/internal/l;->b:Lcom/crittercism/internal/z;

    invoke-interface {v1, v0}, Lcom/crittercism/internal/z;->a(Lcom/crittercism/internal/c;)V

    return-void
.end method

.method public final b()Lcom/crittercism/internal/aa;
    .locals 1

    new-instance v0, Lcom/crittercism/internal/aj;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/aj;-><init>(Lcom/crittercism/internal/ah;)V

    return-object v0
.end method

.method public final b(I)V
    .locals 4

    iget-object v0, p0, Lcom/crittercism/internal/l;->c:Lcom/crittercism/internal/c;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/crittercism/internal/l;->c:Lcom/crittercism/internal/c;

    if-eqz v0, :cond_0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/crittercism/internal/c;->b(J)V

    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/crittercism/internal/l;->d()Lcom/crittercism/internal/c;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/crittercism/internal/c;->f:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/l;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/l;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final write(I)V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/l;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/l;->d:Lcom/crittercism/internal/aa;

    invoke-virtual {v0, p1}, Lcom/crittercism/internal/aa;->a(I)Z
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

    sget-object v0, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    iput-object v0, p0, Lcom/crittercism/internal/l;->d:Lcom/crittercism/internal/aa;

    goto :goto_0
.end method

.method public final write([B)V
    .locals 2

    iget-object v0, p0, Lcom/crittercism/internal/l;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/crittercism/internal/l;->a([BII)V

    :cond_0
    return-void
.end method

.method public final write([BII)V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/l;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/crittercism/internal/l;->a([BII)V

    :cond_0
    return-void
.end method
