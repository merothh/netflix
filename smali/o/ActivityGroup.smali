.class public Lo/ActivityGroup;
.super Lo/XmlRes;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private a:J

.field private b:Z

.field private c:F

.field private d:F

.field protected e:Z

.field private f:F

.field private g:Lo/DESedeKeySpec;

.field private h:F

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Lo/XmlRes;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lo/ActivityGroup;->c:F

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lo/ActivityGroup;->b:Z

    const-wide/16 v1, 0x0

    .line 21
    iput-wide v1, p0, Lo/ActivityGroup;->a:J

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lo/ActivityGroup;->d:F

    .line 23
    iput v0, p0, Lo/ActivityGroup;->i:I

    const/high16 v1, -0x31000000

    .line 24
    iput v1, p0, Lo/ActivityGroup;->f:F

    const/high16 v1, 0x4f000000

    .line 25
    iput v1, p0, Lo/ActivityGroup;->h:F

    .line 27
    iput-boolean v0, p0, Lo/ActivityGroup;->e:Z

    return-void
.end method

.method private q()V
    .locals 4

    .line 278
    iget-object v0, p0, Lo/ActivityGroup;->g:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget v0, p0, Lo/ActivityGroup;->d:F

    iget v1, p0, Lo/ActivityGroup;->f:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lo/ActivityGroup;->h:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    .line 282
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lo/ActivityGroup;->f:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lo/ActivityGroup;->h:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lo/ActivityGroup;->d:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Frame must be [%f,%f]. It is %f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private s()F
    .locals 2

    .line 119
    iget-object v0, p0, Lo/ActivityGroup;->g:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    :cond_0
    const v1, 0x4e6e6b28    # 1.0E9f

    .line 122
    invoke-virtual {v0}, Lo/DESedeKeySpec;->h()F

    move-result v0

    div-float/2addr v1, v0

    iget v0, p0, Lo/ActivityGroup;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v1, v0

    return v1
.end method

.method private t()Z
    .locals 2

    .line 240
    invoke-virtual {p0}, Lo/ActivityGroup;->h()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 163
    iget v0, p0, Lo/ActivityGroup;->f:F

    invoke-virtual {p0, v0, p1}, Lo/ActivityGroup;->c(FF)V

    return-void
.end method

.method public a(Lo/DESedeKeySpec;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lo/ActivityGroup;->g:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 134
    :goto_0
    iput-object p1, p0, Lo/ActivityGroup;->g:Lo/DESedeKeySpec;

    if-eqz v0, :cond_1

    .line 137
    iget v0, p0, Lo/ActivityGroup;->f:F

    .line 138
    invoke-virtual {p1}, Lo/DESedeKeySpec;->f()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lo/ActivityGroup;->h:F

    .line 139
    invoke-virtual {p1}, Lo/DESedeKeySpec;->g()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 137
    invoke-virtual {p0, v0, p1}, Lo/ActivityGroup;->c(FF)V

    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual {p1}, Lo/DESedeKeySpec;->f()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lo/DESedeKeySpec;->g()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lo/ActivityGroup;->c(FF)V

    .line 144
    :goto_1
    iget p1, p0, Lo/ActivityGroup;->d:F

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lo/ActivityGroup;->d:F

    float-to-int p1, p1

    int-to-float p1, p1

    .line 146
    invoke-virtual {p0, p1}, Lo/ActivityGroup;->c(F)V

    return-void
.end method

.method public b(F)V
    .locals 0

    .line 182
    iput p1, p0, Lo/ActivityGroup;->c:F

    return-void
.end method

.method public c()F
    .locals 3

    .line 45
    iget-object v0, p0, Lo/ActivityGroup;->g:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 48
    :cond_0
    iget v1, p0, Lo/ActivityGroup;->d:F

    invoke-virtual {v0}, Lo/DESedeKeySpec;->f()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lo/ActivityGroup;->g:Lo/DESedeKeySpec;

    invoke-virtual {v0}, Lo/DESedeKeySpec;->g()F

    move-result v0

    iget-object v2, p0, Lo/ActivityGroup;->g:Lo/DESedeKeySpec;

    invoke-virtual {v2}, Lo/DESedeKeySpec;->f()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v1, v0

    return v1
.end method

.method public c(F)V
    .locals 2

    .line 150
    iget v0, p0, Lo/ActivityGroup;->d:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lo/ActivityGroup;->k()F

    move-result v0

    invoke-virtual {p0}, Lo/ActivityGroup;->l()F

    move-result v1

    invoke-static {p1, v0, v1}, Lo/ActivityManagerInternal;->c(FFF)F

    move-result p1

    iput p1, p0, Lo/ActivityGroup;->d:F

    const-wide/16 v0, 0x0

    .line 154
    iput-wide v0, p0, Lo/ActivityGroup;->a:J

    .line 155
    invoke-virtual {p0}, Lo/ActivityGroup;->d()V

    return-void
.end method

.method public c(FF)V
    .locals 3

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    .line 170
    iget-object v0, p0, Lo/ActivityGroup;->g:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    const v0, -0x800001

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/DESedeKeySpec;->f()F

    move-result v0

    .line 171
    :goto_0
    iget-object v1, p0, Lo/ActivityGroup;->g:Lo/DESedeKeySpec;

    if-nez v1, :cond_1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lo/DESedeKeySpec;->g()F

    move-result v1

    .line 172
    :goto_1
    invoke-static {p1, v0, v1}, Lo/ActivityManagerInternal;->c(FFF)F

    move-result v2

    iput v2, p0, Lo/ActivityGroup;->f:F

    .line 173
    invoke-static {p2, v0, v1}, Lo/ActivityManagerInternal;->c(FFF)F

    move-result v0

    iput v0, p0, Lo/ActivityGroup;->h:F

    .line 174
    iget v0, p0, Lo/ActivityGroup;->d:F

    invoke-static {v0, p1, p2}, Lo/ActivityManagerInternal;->c(FFF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lo/ActivityGroup;->c(F)V

    return-void

    .line 168
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel()V
    .locals 0

    .line 235
    invoke-virtual {p0}, Lo/ActivityGroup;->b()V

    .line 236
    invoke-virtual {p0}, Lo/ActivityGroup;->p()V

    return-void
.end method

.method public d(I)V
    .locals 1

    int-to-float p1, p1

    .line 159
    iget v0, p0, Lo/ActivityGroup;->h:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lo/ActivityGroup;->c(FF)V

    return-void
.end method

.method public doFrame(J)V
    .locals 5

    .line 80
    invoke-virtual {p0}, Lo/ActivityGroup;->m()V

    .line 81
    iget-object v0, p0, Lo/ActivityGroup;->g:Lo/DESedeKeySpec;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lo/ActivityGroup;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 86
    :cond_0
    iget-wide v0, p0, Lo/ActivityGroup;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    sub-long v2, p1, v0

    .line 87
    :goto_0
    invoke-direct {p0}, Lo/ActivityGroup;->s()F

    move-result v0

    long-to-float v1, v2

    div-float/2addr v1, v0

    .line 90
    iget v0, p0, Lo/ActivityGroup;->d:F

    invoke-direct {p0}, Lo/ActivityGroup;->t()Z

    move-result v2

    if-eqz v2, :cond_2

    neg-float v1, v1

    :cond_2
    add-float/2addr v0, v1

    iput v0, p0, Lo/ActivityGroup;->d:F

    .line 91
    iget v0, p0, Lo/ActivityGroup;->d:F

    invoke-virtual {p0}, Lo/ActivityGroup;->k()F

    move-result v1

    invoke-virtual {p0}, Lo/ActivityGroup;->l()F

    move-result v2

    invoke-static {v0, v1, v2}, Lo/ActivityManagerInternal;->e(FFF)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 92
    iget v1, p0, Lo/ActivityGroup;->d:F

    invoke-virtual {p0}, Lo/ActivityGroup;->k()F

    move-result v2

    invoke-virtual {p0}, Lo/ActivityGroup;->l()F

    move-result v3

    invoke-static {v1, v2, v3}, Lo/ActivityManagerInternal;->c(FFF)F

    move-result v1

    iput v1, p0, Lo/ActivityGroup;->d:F

    .line 94
    iput-wide p1, p0, Lo/ActivityGroup;->a:J

    .line 96
    invoke-virtual {p0}, Lo/ActivityGroup;->d()V

    if-eqz v0, :cond_7

    .line 98
    invoke-virtual {p0}, Lo/ActivityGroup;->getRepeatCount()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lo/ActivityGroup;->i:I

    invoke-virtual {p0}, Lo/ActivityGroup;->getRepeatCount()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 99
    iget p1, p0, Lo/ActivityGroup;->c:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    invoke-virtual {p0}, Lo/ActivityGroup;->k()F

    move-result p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lo/ActivityGroup;->l()F

    move-result p1

    :goto_1
    iput p1, p0, Lo/ActivityGroup;->d:F

    .line 100
    invoke-virtual {p0}, Lo/ActivityGroup;->p()V

    .line 101
    invoke-direct {p0}, Lo/ActivityGroup;->t()Z

    move-result p1

    invoke-virtual {p0, p1}, Lo/ActivityGroup;->a(Z)V

    goto :goto_4

    .line 103
    :cond_4
    invoke-virtual {p0}, Lo/ActivityGroup;->a()V

    .line 104
    iget v0, p0, Lo/ActivityGroup;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ActivityGroup;->i:I

    .line 105
    invoke-virtual {p0}, Lo/ActivityGroup;->getRepeatMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 106
    iget-boolean v0, p0, Lo/ActivityGroup;->b:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lo/ActivityGroup;->b:Z

    .line 107
    invoke-virtual {p0}, Lo/ActivityGroup;->g()V

    goto :goto_3

    .line 109
    :cond_5
    invoke-direct {p0}, Lo/ActivityGroup;->t()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lo/ActivityGroup;->l()F

    move-result v0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lo/ActivityGroup;->k()F

    move-result v0

    :goto_2
    iput v0, p0, Lo/ActivityGroup;->d:F

    .line 111
    :goto_3
    iput-wide p1, p0, Lo/ActivityGroup;->a:J

    .line 115
    :cond_7
    :goto_4
    invoke-direct {p0}, Lo/ActivityGroup;->q()V

    :cond_8
    :goto_5
    return-void
.end method

.method public e()F
    .locals 1

    .line 72
    iget v0, p0, Lo/ActivityGroup;->d:F

    return v0
.end method

.method protected e(Z)V
    .locals 1

    .line 271
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 273
    iput-boolean p1, p0, Lo/ActivityGroup;->e:Z

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 212
    invoke-virtual {p0}, Lo/ActivityGroup;->p()V

    .line 213
    invoke-direct {p0}, Lo/ActivityGroup;->t()Z

    move-result v0

    invoke-virtual {p0, v0}, Lo/ActivityGroup;->a(Z)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 178
    invoke-virtual {p0}, Lo/ActivityGroup;->h()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lo/ActivityGroup;->b(F)V

    return-void
.end method

.method public getAnimatedFraction()F
    .locals 3

    .line 57
    iget-object v0, p0, Lo/ActivityGroup;->g:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    invoke-direct {p0}, Lo/ActivityGroup;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lo/ActivityGroup;->l()F

    move-result v0

    iget v1, p0, Lo/ActivityGroup;->d:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lo/ActivityGroup;->l()F

    move-result v1

    invoke-virtual {p0}, Lo/ActivityGroup;->k()F

    move-result v2

    :goto_0
    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0

    .line 63
    :cond_1
    iget v0, p0, Lo/ActivityGroup;->d:F

    invoke-virtual {p0}, Lo/ActivityGroup;->k()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lo/ActivityGroup;->l()F

    move-result v1

    invoke-virtual {p0}, Lo/ActivityGroup;->k()F

    move-result v2

    goto :goto_0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lo/ActivityGroup;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 68
    iget-object v0, p0, Lo/ActivityGroup;->g:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/DESedeKeySpec;->a()F

    move-result v0

    float-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public h()F
    .locals 1

    .line 189
    iget v0, p0, Lo/ActivityGroup;->c:F

    return v0
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lo/ActivityGroup;->e:Z

    .line 203
    invoke-direct {p0}, Lo/ActivityGroup;->t()Z

    move-result v0

    invoke-virtual {p0, v0}, Lo/ActivityGroup;->b(Z)V

    .line 204
    invoke-direct {p0}, Lo/ActivityGroup;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/ActivityGroup;->l()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/ActivityGroup;->k()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lo/ActivityGroup;->c(F)V

    const-wide/16 v0, 0x0

    .line 205
    iput-wide v0, p0, Lo/ActivityGroup;->a:J

    const/4 v0, 0x0

    .line 206
    iput v0, p0, Lo/ActivityGroup;->i:I

    .line 207
    invoke-virtual {p0}, Lo/ActivityGroup;->m()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lo/ActivityGroup;->e:Z

    return v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lo/ActivityGroup;->g:Lo/DESedeKeySpec;

    const/high16 v0, -0x31000000

    .line 127
    iput v0, p0, Lo/ActivityGroup;->f:F

    const/high16 v0, 0x4f000000

    .line 128
    iput v0, p0, Lo/ActivityGroup;->h:F

    return-void
.end method

.method public k()F
    .locals 3

    .line 244
    iget-object v0, p0, Lo/ActivityGroup;->g:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 247
    :cond_0
    iget v1, p0, Lo/ActivityGroup;->f:F

    const/high16 v2, -0x31000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lo/DESedeKeySpec;->f()F

    move-result v1

    :cond_1
    return v1
.end method

.method public l()F
    .locals 3

    .line 251
    iget-object v0, p0, Lo/ActivityGroup;->g:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 254
    :cond_0
    iget v1, p0, Lo/ActivityGroup;->h:F

    const/high16 v2, 0x4f000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lo/DESedeKeySpec;->g()F

    move-result v1

    :cond_1
    return v1
.end method

.method protected m()V
    .locals 1

    .line 258
    invoke-virtual {p0}, Lo/ActivityGroup;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, v0}, Lo/ActivityGroup;->e(Z)V

    .line 260
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lo/ActivityGroup;->e:Z

    .line 224
    invoke-virtual {p0}, Lo/ActivityGroup;->m()V

    const-wide/16 v0, 0x0

    .line 225
    iput-wide v0, p0, Lo/ActivityGroup;->a:J

    .line 226
    invoke-direct {p0}, Lo/ActivityGroup;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/ActivityGroup;->e()F

    move-result v0

    invoke-virtual {p0}, Lo/ActivityGroup;->k()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lo/ActivityGroup;->l()F

    move-result v0

    iput v0, p0, Lo/ActivityGroup;->d:F

    goto :goto_0

    .line 228
    :cond_0
    invoke-direct {p0}, Lo/ActivityGroup;->t()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/ActivityGroup;->e()F

    move-result v0

    invoke-virtual {p0}, Lo/ActivityGroup;->l()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lo/ActivityGroup;->k()F

    move-result v0

    iput v0, p0, Lo/ActivityGroup;->d:F

    :cond_1
    :goto_0
    return-void
.end method

.method public o()V
    .locals 0

    .line 218
    invoke-virtual {p0}, Lo/ActivityGroup;->p()V

    return-void
.end method

.method protected p()V
    .locals 1

    const/4 v0, 0x1

    .line 266
    invoke-virtual {p0, v0}, Lo/ActivityGroup;->e(Z)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 193
    invoke-super {p0, p1}, Lo/XmlRes;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 194
    iget-boolean p1, p0, Lo/ActivityGroup;->b:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 195
    iput-boolean p1, p0, Lo/ActivityGroup;->b:Z

    .line 196
    invoke-virtual {p0}, Lo/ActivityGroup;->g()V

    :cond_0
    return-void
.end method
