.class final Lo/MessageQueue;
.super Lo/PooledStringWriter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MessageQueue$ActionBar;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:F

.field private final d:I

.field private final e:I

.field private final f:Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

.field private final g:I

.field private final h:Lo/PooledStringWriter$Activity;

.field private final i:F

.field private final j:I

.field private final k:I

.field private final l:Z

.field private final m:Z

.field private final n:I

.field private final o:Z

.field private final q:I

.field private final r:I


# direct methods
.method private constructor <init>(IFIIIIFILandroidx/recyclerview/widget/RecyclerView$SharedElementCallback;Lo/PooledStringWriter$Activity;IZZZIII)V
    .locals 2

    move-object v0, p0

    .line 65
    invoke-direct {p0}, Lo/PooledStringWriter;-><init>()V

    move v1, p1

    .line 66
    iput v1, v0, Lo/MessageQueue;->b:I

    move v1, p2

    .line 67
    iput v1, v0, Lo/MessageQueue;->c:F

    move v1, p3

    .line 68
    iput v1, v0, Lo/MessageQueue;->a:I

    move v1, p4

    .line 69
    iput v1, v0, Lo/MessageQueue;->e:I

    move v1, p5

    .line 70
    iput v1, v0, Lo/MessageQueue;->d:I

    move v1, p6

    .line 71
    iput v1, v0, Lo/MessageQueue;->g:I

    move v1, p7

    .line 72
    iput v1, v0, Lo/MessageQueue;->i:F

    move v1, p8

    .line 73
    iput v1, v0, Lo/MessageQueue;->j:I

    move-object v1, p9

    .line 74
    iput-object v1, v0, Lo/MessageQueue;->f:Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-object v1, p10

    .line 75
    iput-object v1, v0, Lo/MessageQueue;->h:Lo/PooledStringWriter$Activity;

    move v1, p11

    .line 76
    iput v1, v0, Lo/MessageQueue;->k:I

    move v1, p12

    .line 77
    iput-boolean v1, v0, Lo/MessageQueue;->m:Z

    move v1, p13

    .line 78
    iput-boolean v1, v0, Lo/MessageQueue;->o:Z

    move/from16 v1, p14

    .line 79
    iput-boolean v1, v0, Lo/MessageQueue;->l:Z

    move/from16 v1, p15

    .line 80
    iput v1, v0, Lo/MessageQueue;->n:I

    move/from16 v1, p16

    .line 81
    iput v1, v0, Lo/MessageQueue;->r:I

    move/from16 v1, p17

    .line 82
    iput v1, v0, Lo/MessageQueue;->q:I

    return-void
.end method

.method synthetic constructor <init>(IFIIIIFILandroidx/recyclerview/widget/RecyclerView$SharedElementCallback;Lo/PooledStringWriter$Activity;IZZZIIILo/MessageQueue$1;)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p17}, Lo/MessageQueue;-><init>(IFIIIIFILandroidx/recyclerview/widget/RecyclerView$SharedElementCallback;Lo/PooledStringWriter$Activity;IZZZIII)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 88
    iget v0, p0, Lo/MessageQueue;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 109
    iget v0, p0, Lo/MessageQueue;->d:I

    return v0
.end method

.method public c()F
    .locals 1

    .line 93
    iget v0, p0, Lo/MessageQueue;->c:F

    return v0
.end method

.method public d()I
    .locals 1

    .line 98
    iget v0, p0, Lo/MessageQueue;->a:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 103
    iget v0, p0, Lo/MessageQueue;->e:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 206
    :cond_0
    instance-of v1, p1, Lo/PooledStringWriter;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 207
    check-cast p1, Lo/PooledStringWriter;

    .line 208
    iget v1, p0, Lo/MessageQueue;->b:I

    invoke-virtual {p1}, Lo/PooledStringWriter;->a()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lo/MessageQueue;->c:F

    .line 209
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lo/PooledStringWriter;->c()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lo/MessageQueue;->a:I

    .line 210
    invoke-virtual {p1}, Lo/PooledStringWriter;->d()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lo/MessageQueue;->e:I

    .line 211
    invoke-virtual {p1}, Lo/PooledStringWriter;->e()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lo/MessageQueue;->d:I

    .line 212
    invoke-virtual {p1}, Lo/PooledStringWriter;->b()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lo/MessageQueue;->g:I

    .line 213
    invoke-virtual {p1}, Lo/PooledStringWriter;->i()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lo/MessageQueue;->i:F

    .line 214
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lo/PooledStringWriter;->f()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lo/MessageQueue;->j:I

    .line 215
    invoke-virtual {p1}, Lo/PooledStringWriter;->h()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lo/MessageQueue;->f:Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    if-nez v1, :cond_1

    .line 216
    invoke-virtual {p1}, Lo/PooledStringWriter;->j()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lo/PooledStringWriter;->j()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lo/MessageQueue;->h:Lo/PooledStringWriter$Activity;

    if-nez v1, :cond_2

    .line 217
    invoke-virtual {p1}, Lo/PooledStringWriter;->g()Lo/PooledStringWriter$Activity;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lo/PooledStringWriter;->g()Lo/PooledStringWriter$Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    iget v1, p0, Lo/MessageQueue;->k:I

    .line 218
    invoke-virtual {p1}, Lo/PooledStringWriter;->n()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lo/MessageQueue;->m:Z

    .line 219
    invoke-virtual {p1}, Lo/PooledStringWriter;->l()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lo/MessageQueue;->o:Z

    .line 220
    invoke-virtual {p1}, Lo/PooledStringWriter;->o()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lo/MessageQueue;->l:Z

    .line 221
    invoke-virtual {p1}, Lo/PooledStringWriter;->k()Z

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lo/MessageQueue;->n:I

    .line 222
    invoke-virtual {p1}, Lo/PooledStringWriter;->m()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lo/MessageQueue;->r:I

    .line 223
    invoke-virtual {p1}, Lo/PooledStringWriter;->p()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lo/MessageQueue;->q:I

    .line 224
    invoke-virtual {p1}, Lo/PooledStringWriter;->q()I

    move-result p1

    if-ne v1, p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_4
    return v2
.end method

.method public f()F
    .locals 1

    .line 121
    iget v0, p0, Lo/MessageQueue;->i:F

    return v0
.end method

.method public g()Lo/PooledStringWriter$Activity;
    .locals 1

    .line 139
    iget-object v0, p0, Lo/MessageQueue;->h:Lo/PooledStringWriter$Activity;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 127
    iget v0, p0, Lo/MessageQueue;->j:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 233
    iget v0, p0, Lo/MessageQueue;->b:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 235
    iget v2, p0, Lo/MessageQueue;->c:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 237
    iget v2, p0, Lo/MessageQueue;->a:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 239
    iget v2, p0, Lo/MessageQueue;->e:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 241
    iget v2, p0, Lo/MessageQueue;->d:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 243
    iget v2, p0, Lo/MessageQueue;->g:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 245
    iget v2, p0, Lo/MessageQueue;->i:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 247
    iget v2, p0, Lo/MessageQueue;->j:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 249
    iget-object v2, p0, Lo/MessageQueue;->f:Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 251
    iget-object v2, p0, Lo/MessageQueue;->h:Lo/PooledStringWriter$Activity;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 253
    iget v2, p0, Lo/MessageQueue;->k:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 255
    iget-boolean v2, p0, Lo/MessageQueue;->m:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    if-eqz v2, :cond_2

    const/16 v2, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v2, 0x4d5

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 257
    iget-boolean v2, p0, Lo/MessageQueue;->o:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v2, 0x4d5

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 259
    iget-boolean v2, p0, Lo/MessageQueue;->l:Z

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    const/16 v3, 0x4d5

    :goto_4
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 261
    iget v2, p0, Lo/MessageQueue;->n:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 263
    iget v2, p0, Lo/MessageQueue;->r:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 265
    iget v1, p0, Lo/MessageQueue;->q:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()I
    .locals 1

    .line 115
    iget v0, p0, Lo/MessageQueue;->g:I

    return v0
.end method

.method public j()Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;
    .locals 1

    .line 133
    iget-object v0, p0, Lo/MessageQueue;->f:Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lo/MessageQueue;->l:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lo/MessageQueue;->m:Z

    return v0
.end method

.method public m()I
    .locals 1

    .line 164
    iget v0, p0, Lo/MessageQueue;->n:I

    return v0
.end method

.method public n()I
    .locals 1

    .line 144
    iget v0, p0, Lo/MessageQueue;->k:I

    return v0
.end method

.method public o()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lo/MessageQueue;->o:Z

    return v0
.end method

.method public p()I
    .locals 1

    .line 169
    iget v0, p0, Lo/MessageQueue;->r:I

    return v0
.end method

.method public q()I
    .locals 1

    .line 175
    iget v0, p0, Lo/MessageQueue;->q:I

    return v0
.end method

.method protected s()Lo/PooledStringWriter$TaskDescription;
    .locals 2

    .line 271
    new-instance v0, Lo/MessageQueue$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/MessageQueue$ActionBar;-><init>(Lo/PooledStringWriter;Lo/MessageQueue$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RowConfig{numberOfItemsPerPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/MessageQueue;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", aspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/MessageQueue;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", numberOfPagesToScrollOnFling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/MessageQueue;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", millisecondsPerInch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/MessageQueue;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", itemPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/MessageQueue;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", listPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/MessageQueue;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", peekRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/MessageQueue;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/MessageQueue;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recycledViewPool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MessageQueue;->f:Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemDecorationFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MessageQueue;->h:Lo/PooledStringWriter$Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/MessageQueue;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", freeScroll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/MessageQueue;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lightTheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/MessageQueue;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasCirclePlaceholder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/MessageQueue;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rowCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/MessageQueue;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rowOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/MessageQueue;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adjustStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/MessageQueue;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
