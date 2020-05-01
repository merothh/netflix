.class final Lo/PX;
.super Lo/QL;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PX$ActionBar;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final d:I

.field private final e:I

.field private final g:I

.field private final h:Z


# direct methods
.method private constructor <init>(IIIIIZ)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/QL;-><init>()V

    .line 27
    iput p1, p0, Lo/PX;->e:I

    .line 28
    iput p2, p0, Lo/PX;->b:I

    .line 29
    iput p3, p0, Lo/PX;->d:I

    .line 30
    iput p4, p0, Lo/PX;->a:I

    .line 31
    iput p5, p0, Lo/PX;->g:I

    .line 32
    iput-boolean p6, p0, Lo/PX;->h:Z

    return-void
.end method

.method synthetic constructor <init>(IIIIIZLo/PX$2;)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p6}, Lo/PX;-><init>(IIIIIZ)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 37
    iget v0, p0, Lo/PX;->e:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 57
    iget v0, p0, Lo/PX;->g:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 52
    iget v0, p0, Lo/PX;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 42
    iget v0, p0, Lo/PX;->b:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 47
    iget v0, p0, Lo/PX;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 82
    :cond_0
    instance-of v1, p1, Lo/QL;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 83
    check-cast p1, Lo/QL;

    .line 84
    iget v1, p0, Lo/PX;->e:I

    invoke-virtual {p1}, Lo/QL;->a()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lo/PX;->b:I

    .line 85
    invoke-virtual {p1}, Lo/QL;->d()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lo/PX;->d:I

    .line 86
    invoke-virtual {p1}, Lo/QL;->e()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lo/PX;->a:I

    .line 87
    invoke-virtual {p1}, Lo/QL;->c()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lo/PX;->g:I

    .line 88
    invoke-virtual {p1}, Lo/QL;->b()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lo/PX;->h:Z

    .line 89
    invoke-virtual {p1}, Lo/QL;->j()Z

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 98
    iget v0, p0, Lo/PX;->e:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 100
    iget v2, p0, Lo/PX;->b:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 102
    iget v2, p0, Lo/PX;->d:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 104
    iget v2, p0, Lo/PX;->a:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 106
    iget v2, p0, Lo/PX;->g:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 108
    iget-boolean v1, p0, Lo/PX;->h:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public j()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lo/PX;->h:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadsSummary{currentActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/PX;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/PX;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", completed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/PX;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/PX;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", overallProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/PX;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wifiOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/PX;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
