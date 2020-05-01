.class public abstract Lcom/crittercism/internal/ag;
.super Lcom/crittercism/internal/aa;


# instance fields
.field d:Z

.field e:I

.field f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/aa;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/crittercism/internal/aa;-><init>(Lcom/crittercism/internal/aa;)V

    iput-boolean v0, p0, Lcom/crittercism/internal/ag;->d:Z

    iput-boolean v0, p0, Lcom/crittercism/internal/ag;->g:Z

    iput-boolean v0, p0, Lcom/crittercism/internal/ag;->h:Z

    iput-boolean v0, p0, Lcom/crittercism/internal/ag;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/crittercism/internal/ab;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    iget v2, v2, Lcom/crittercism/internal/ab;->b:I

    if-eqz v2, :cond_0

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    iget-object v2, v2, Lcom/crittercism/internal/ab;->a:[C

    aget-char v2, v2, v1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    iput-boolean v0, p0, Lcom/crittercism/internal/ag;->h:Z

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/crittercism/internal/ab;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ":"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-eq v3, v5, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lcom/crittercism/internal/ag;->d:Z

    if-nez v4, :cond_6

    const-string/jumbo v4, "content-length"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/crittercism/internal/ag;->d:Z

    iput v2, p0, Lcom/crittercism/internal/ag;->e:I

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "transfer-encoding"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v3, "chunked"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/crittercism/internal/ag;->f:Z

    goto :goto_1

    :cond_7
    iget-boolean v4, p0, Lcom/crittercism/internal/ag;->g:Z

    if-nez v4, :cond_1

    const-string/jumbo v4, "host"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/crittercism/internal/ag;->g:Z

    iget-object v3, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-interface {v3, v2}, Lcom/crittercism/internal/ah;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public final b()Lcom/crittercism/internal/aa;
    .locals 2

    iget-boolean v0, p0, Lcom/crittercism/internal/ag;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/crittercism/internal/ag;->g()Lcom/crittercism/internal/aa;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    const/4 v1, 0x0

    iput v1, v0, Lcom/crittercism/internal/ab;->b:I

    goto :goto_0
.end method

.method public final c()Lcom/crittercism/internal/aa;
    .locals 2

    iget-object v0, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    const/4 v1, 0x0

    iput v1, v0, Lcom/crittercism/internal/ab;->b:I

    new-instance v0, Lcom/crittercism/internal/an;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/an;-><init>(Lcom/crittercism/internal/aa;)V

    return-object v0
.end method

.method protected final d()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method protected final e()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method protected abstract g()Lcom/crittercism/internal/aa;
.end method
