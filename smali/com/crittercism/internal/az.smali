.class public final Lcom/crittercism/internal/az;
.super Lcom/crittercism/app/CrittercismConfig;


# instance fields
.field b:Ljava/lang/String;

.field public c:Lcom/crittercism/internal/bl;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/bl;Lcom/crittercism/app/CrittercismConfig;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/crittercism/app/CrittercismConfig;-><init>(Lcom/crittercism/app/CrittercismConfig;)V

    const-string/jumbo v0, "524c99a04002057fcd000001"

    iput-object v0, p0, Lcom/crittercism/internal/az;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2

    invoke-super {p0}, Lcom/crittercism/app/CrittercismConfig;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    iget-object v1, v1, Lcom/crittercism/internal/bl;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/az;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/crittercism/internal/az;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/crittercism/internal/az;

    invoke-super {p0, p1}, Lcom/crittercism/app/CrittercismConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    iget-object v2, v2, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    iget-object v3, v3, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/crittercism/internal/az;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    iget-object v2, v2, Lcom/crittercism/internal/bl;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    iget-object v3, v3, Lcom/crittercism/internal/bl;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/crittercism/internal/az;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    iget-object v2, v2, Lcom/crittercism/internal/bl;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    iget-object v3, v3, Lcom/crittercism/internal/bl;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/crittercism/internal/az;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    iget-object v2, v2, Lcom/crittercism/internal/bl;->d:Ljava/lang/String;

    iget-object v3, v0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    iget-object v3, v3, Lcom/crittercism/internal/bl;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/crittercism/internal/az;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/crittercism/internal/az;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/crittercism/internal/az;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/crittercism/internal/az;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/crittercism/app/CrittercismConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    iget-object v1, v1, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    iget-object v1, v1, Lcom/crittercism/internal/bl;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    iget-object v1, v1, Lcom/crittercism/internal/bl;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    iget-object v1, v1, Lcom/crittercism/internal/bl;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/crittercism/internal/az;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
