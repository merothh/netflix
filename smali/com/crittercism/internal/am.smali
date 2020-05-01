.class public final Lcom/crittercism/internal/am;
.super Lcom/crittercism/internal/aa;


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/aa;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/crittercism/internal/aa;-><init>(Lcom/crittercism/internal/aa;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crittercism/internal/am;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/crittercism/internal/ab;)Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p1, Lcom/crittercism/internal/ab;->b:I

    invoke-virtual {p1, v0}, Lcom/crittercism/internal/ab;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/crittercism/internal/am;->d:Z

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/crittercism/internal/aa;
    .locals 2

    iget-boolean v0, p0, Lcom/crittercism/internal/am;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-virtual {p0}, Lcom/crittercism/internal/am;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->b(I)V

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-interface {v0}, Lcom/crittercism/internal/ah;->b()Lcom/crittercism/internal/aa;

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

    const/16 v0, 0x8

    return v0
.end method

.method protected final e()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method
