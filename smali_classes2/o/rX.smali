.class abstract Lo/rX;
.super Lo/sO;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/rX$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final i:I

.field private final j:I


# direct methods
.method constructor <init>(Ljava/util/List;ILjava/lang/String;IIILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lo/sO;-><init>()V

    if-eqz p1, :cond_2

    .line 42
    iput-object p1, p0, Lo/rX;->d:Ljava/util/List;

    .line 43
    iput p2, p0, Lo/rX;->e:I

    if-eqz p3, :cond_1

    .line 47
    iput-object p3, p0, Lo/rX;->a:Ljava/lang/String;

    .line 48
    iput p4, p0, Lo/rX;->c:I

    .line 49
    iput p5, p0, Lo/rX;->b:I

    .line 50
    iput p6, p0, Lo/rX;->j:I

    if-eqz p7, :cond_0

    .line 54
    iput-object p7, p0, Lo/rX;->f:Ljava/lang/String;

    .line 55
    iput p8, p0, Lo/rX;->i:I

    .line 56
    iput p9, p0, Lo/rX;->g:I

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null id"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null downloadableId"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null urls"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lo/rX;->d:Ljava/util/List;

    return-object v0
.end method

.method public b()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation

    .line 68
    iget v0, p0, Lo/rX;->e:I

    return v0
.end method

.method public c()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
    .end annotation

    .line 80
    iget v0, p0, Lo/rX;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downloadable_id"
    .end annotation

    .line 74
    iget-object v0, p0, Lo/rX;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interval"
    .end annotation

    .line 86
    iget v0, p0, Lo/rX;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 133
    :cond_0
    instance-of v1, p1, Lo/sO;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 134
    check-cast p1, Lo/sO;

    .line 135
    iget-object v1, p0, Lo/rX;->d:Ljava/util/List;

    invoke-virtual {p1}, Lo/sO;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lo/rX;->e:I

    .line 136
    invoke-virtual {p1}, Lo/sO;->b()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lo/rX;->a:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Lo/sO;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lo/rX;->c:I

    .line 138
    invoke-virtual {p1}, Lo/sO;->c()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lo/rX;->b:I

    .line 139
    invoke-virtual {p1}, Lo/sO;->e()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lo/rX;->j:I

    .line 140
    invoke-virtual {p1}, Lo/sO;->h()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lo/rX;->f:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Lo/sO;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lo/rX;->i:I

    .line 142
    invoke-virtual {p1}, Lo/sO;->f()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lo/rX;->g:I

    .line 143
    invoke-virtual {p1}, Lo/sO;->i()I

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

.method public f()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pixelsAspectX"
    .end annotation

    .line 104
    iget v0, p0, Lo/rX;->i:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation

    .line 98
    iget-object v0, p0, Lo/rX;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pixelsAspectY"
    .end annotation

    .line 92
    iget v0, p0, Lo/rX;->j:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 152
    iget-object v0, p0, Lo/rX;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 154
    iget v2, p0, Lo/rX;->e:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 156
    iget-object v2, p0, Lo/rX;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 158
    iget v2, p0, Lo/rX;->c:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 160
    iget v2, p0, Lo/rX;->b:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 162
    iget v2, p0, Lo/rX;->j:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 164
    iget-object v2, p0, Lo/rX;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 166
    iget v2, p0, Lo/rX;->i:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 168
    iget v1, p0, Lo/rX;->g:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation

    .line 110
    iget v0, p0, Lo/rX;->g:I

    return v0
.end method

.method public j()Lo/sO$ActionBar;
    .locals 2

    .line 174
    new-instance v0, Lo/rX$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/rX$TaskDescription;-><init>(Lo/sO;Lo/rX$5;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trickplay{urls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rX;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/rX;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downloadableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rX;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/rX;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/rX;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pixelsAspectY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/rX;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rX;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pixelsAspectX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/rX;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/rX;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
