.class public final Lcom/crittercism/internal/aj;
.super Lcom/crittercism/internal/aa;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/ah;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crittercism/internal/aa;-><init>(Lcom/crittercism/internal/ah;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/crittercism/internal/ab;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/crittercism/internal/ab;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    aget-object v1, v2, v1

    aget-object v2, v2, v0

    invoke-interface {v3, v1, v2}, Lcom/crittercism/internal/ah;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final b()Lcom/crittercism/internal/aa;
    .locals 1

    new-instance v0, Lcom/crittercism/internal/ai;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/ai;-><init>(Lcom/crittercism/internal/aa;)V

    return-object v0
.end method

.method public final c()Lcom/crittercism/internal/aa;
    .locals 1

    sget-object v0, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    return-object v0
.end method

.method protected final d()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method protected final e()I
    .locals 1

    const/16 v0, 0x800

    return v0
.end method
