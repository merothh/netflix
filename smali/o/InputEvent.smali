.class public Lo/InputEvent;
.super Lo/Gravity;
.source ""


# instance fields
.field a:Lo/InputEvent;

.field b:F

.field c:F

.field d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field e:Lo/InputEvent;

.field f:F

.field private h:Lo/InputEvent;

.field i:I

.field private k:I

.field private l:I

.field private m:Lo/KeyEvent;

.field private n:Lo/KeyEvent;

.field private o:F


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Lo/Gravity;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lo/InputEvent;->i:I

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lo/InputEvent;->n:Lo/KeyEvent;

    const/4 v1, 0x1

    .line 47
    iput v1, p0, Lo/InputEvent;->k:I

    .line 48
    iput-object v0, p0, Lo/InputEvent;->m:Lo/KeyEvent;

    .line 49
    iput v1, p0, Lo/InputEvent;->l:I

    .line 52
    iput-object p1, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 229
    invoke-super {p0}, Lo/Gravity;->a()V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lo/InputEvent;->a:Lo/InputEvent;

    const/4 v1, 0x0

    .line 231
    iput v1, p0, Lo/InputEvent;->b:F

    .line 232
    iput-object v0, p0, Lo/InputEvent;->n:Lo/KeyEvent;

    const/4 v2, 0x1

    .line 233
    iput v2, p0, Lo/InputEvent;->k:I

    .line 234
    iput-object v0, p0, Lo/InputEvent;->m:Lo/KeyEvent;

    .line 235
    iput v2, p0, Lo/InputEvent;->l:I

    .line 236
    iput-object v0, p0, Lo/InputEvent;->e:Lo/InputEvent;

    .line 237
    iput v1, p0, Lo/InputEvent;->f:F

    .line 238
    iput v1, p0, Lo/InputEvent;->c:F

    .line 239
    iput-object v0, p0, Lo/InputEvent;->h:Lo/InputEvent;

    .line 240
    iput v1, p0, Lo/InputEvent;->o:F

    const/4 v0, 0x0

    .line 241
    iput v0, p0, Lo/InputEvent;->i:I

    return-void
.end method

.method public a(Lo/InputEvent;F)V
    .locals 1

    .line 79
    iget v0, p0, Lo/InputEvent;->g:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/InputEvent;->e:Lo/InputEvent;

    if-eq v0, p1, :cond_2

    iget v0, p0, Lo/InputEvent;->f:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    .line 80
    :cond_0
    iput-object p1, p0, Lo/InputEvent;->e:Lo/InputEvent;

    .line 81
    iput p2, p0, Lo/InputEvent;->f:F

    .line 82
    iget p1, p0, Lo/InputEvent;->g:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 83
    invoke-virtual {p0}, Lo/InputEvent;->b()V

    .line 85
    :cond_1
    invoke-virtual {p0}, Lo/InputEvent;->g()V

    :cond_2
    return-void
.end method

.method public a(Lo/InputEvent;I)V
    .locals 0

    .line 272
    iput-object p1, p0, Lo/InputEvent;->a:Lo/InputEvent;

    int-to-float p1, p2

    .line 273
    iput p1, p0, Lo/InputEvent;->b:F

    .line 274
    iget-object p1, p0, Lo/InputEvent;->a:Lo/InputEvent;

    invoke-virtual {p1, p0}, Lo/InputEvent;->b(Lo/Gravity;)V

    return-void
.end method

.method b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "DIRECT"

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "CENTER"

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "MATCH"

    return-object p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-string p1, "CHAIN"

    return-object p1

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const-string p1, "BARRIER"

    return-object p1

    :cond_4
    const-string p1, "UNCONNECTED"

    return-object p1
.end method

.method public c()F
    .locals 1

    .line 315
    iget v0, p0, Lo/InputEvent;->f:F

    return v0
.end method

.method public c(Lo/InputEvent;F)V
    .locals 0

    .line 293
    iput-object p1, p0, Lo/InputEvent;->h:Lo/InputEvent;

    .line 294
    iput p2, p0, Lo/InputEvent;->o:F

    return-void
.end method

.method public d()V
    .locals 4

    .line 245
    iget-object v0, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    iget-object v2, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x4

    .line 250
    iput v1, p0, Lo/InputEvent;->i:I

    .line 251
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v2

    iput v1, v2, Lo/InputEvent;->i:I

    .line 253
    :cond_1
    iget-object v1, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v1

    .line 254
    iget-object v2, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->c:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v3, :cond_3

    :cond_2
    neg-int v1, v1

    .line 258
    :cond_3
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lo/InputEvent;->a(Lo/InputEvent;I)V

    return-void
.end method

.method public d(Lo/InputEvent;ILo/KeyEvent;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lo/InputEvent;->h:Lo/InputEvent;

    .line 299
    iput-object p3, p0, Lo/InputEvent;->m:Lo/KeyEvent;

    .line 300
    iput p2, p0, Lo/InputEvent;->l:I

    return-void
.end method

.method public d(Lo/Scene;)V
    .locals 4

    .line 304
    iget-object v0, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lo/InputEvent;->e:Lo/InputEvent;

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v1, :cond_0

    .line 307
    iget v1, p0, Lo/InputEvent;->f:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lo/Scene;->c(Landroidx/constraintlayout/solver/SolverVariable;I)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object v1, v1, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Lo/Scene;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 310
    iget v3, p0, Lo/InputEvent;->f:F

    add-float/2addr v3, v2

    float-to-int v2, v3

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Lo/Scene;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lo/UpdateAppearance;

    :goto_0
    return-void
.end method

.method public e()V
    .locals 8

    .line 110
    iget v0, p0, Lo/InputEvent;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 113
    :cond_0
    iget v0, p0, Lo/InputEvent;->i:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lo/InputEvent;->n:Lo/KeyEvent;

    if-eqz v0, :cond_3

    .line 117
    iget v0, v0, Lo/KeyEvent;->g:I

    if-eq v0, v1, :cond_2

    return-void

    .line 120
    :cond_2
    iget v0, p0, Lo/InputEvent;->k:I

    int-to-float v0, v0

    iget-object v2, p0, Lo/InputEvent;->n:Lo/KeyEvent;

    iget v2, v2, Lo/KeyEvent;->d:F

    mul-float v0, v0, v2

    iput v0, p0, Lo/InputEvent;->b:F

    .line 122
    :cond_3
    iget-object v0, p0, Lo/InputEvent;->m:Lo/KeyEvent;

    if-eqz v0, :cond_5

    .line 123
    iget v0, v0, Lo/KeyEvent;->g:I

    if-eq v0, v1, :cond_4

    return-void

    .line 126
    :cond_4
    iget v0, p0, Lo/InputEvent;->l:I

    int-to-float v0, v0

    iget-object v2, p0, Lo/InputEvent;->m:Lo/KeyEvent;

    iget v2, v2, Lo/KeyEvent;->d:F

    mul-float v0, v0, v2

    iput v0, p0, Lo/InputEvent;->o:F

    .line 128
    :cond_5
    iget v0, p0, Lo/InputEvent;->i:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lo/InputEvent;->a:Lo/InputEvent;

    if-eqz v0, :cond_6

    iget v0, v0, Lo/InputEvent;->g:I

    if-ne v0, v1, :cond_8

    .line 133
    :cond_6
    iget-object v0, p0, Lo/InputEvent;->a:Lo/InputEvent;

    if-nez v0, :cond_7

    .line 134
    iput-object p0, p0, Lo/InputEvent;->e:Lo/InputEvent;

    .line 135
    iget v0, p0, Lo/InputEvent;->b:F

    iput v0, p0, Lo/InputEvent;->f:F

    goto :goto_0

    .line 137
    :cond_7
    iget-object v1, v0, Lo/InputEvent;->e:Lo/InputEvent;

    iput-object v1, p0, Lo/InputEvent;->e:Lo/InputEvent;

    .line 138
    iget v0, v0, Lo/InputEvent;->f:F

    iget v1, p0, Lo/InputEvent;->b:F

    add-float/2addr v0, v1

    iput v0, p0, Lo/InputEvent;->f:F

    .line 140
    :goto_0
    invoke-virtual {p0}, Lo/InputEvent;->g()V

    goto/16 :goto_7

    .line 141
    :cond_8
    iget v0, p0, Lo/InputEvent;->i:I

    const/4 v2, 0x2

    const-wide/16 v3, 0x1

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lo/InputEvent;->a:Lo/InputEvent;

    if-eqz v0, :cond_11

    iget v0, v0, Lo/InputEvent;->g:I

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lo/InputEvent;->h:Lo/InputEvent;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lo/InputEvent;->a:Lo/InputEvent;

    if-eqz v0, :cond_11

    iget v0, v0, Lo/InputEvent;->g:I

    if-ne v0, v1, :cond_11

    .line 149
    invoke-static {}, Lo/Scene;->c()Lo/URLSpan;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 150
    invoke-static {}, Lo/Scene;->c()Lo/URLSpan;

    move-result-object v0

    iget-wide v5, v0, Lo/URLSpan;->y:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Lo/URLSpan;->y:J

    .line 152
    :cond_9
    iget-object v0, p0, Lo/InputEvent;->a:Lo/InputEvent;

    iget-object v0, v0, Lo/InputEvent;->e:Lo/InputEvent;

    iput-object v0, p0, Lo/InputEvent;->e:Lo/InputEvent;

    .line 153
    iget-object v0, p0, Lo/InputEvent;->h:Lo/InputEvent;

    iget-object v2, v0, Lo/InputEvent;->a:Lo/InputEvent;

    iget-object v2, v2, Lo/InputEvent;->e:Lo/InputEvent;

    iput-object v2, v0, Lo/InputEvent;->e:Lo/InputEvent;

    .line 158
    iget-object v0, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b

    iget-object v0, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->c:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v0, v2, :cond_a

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_1
    if-eqz v1, :cond_c

    .line 162
    iget-object v0, p0, Lo/InputEvent;->a:Lo/InputEvent;

    iget v0, v0, Lo/InputEvent;->f:F

    iget-object v2, p0, Lo/InputEvent;->h:Lo/InputEvent;

    iget-object v2, v2, Lo/InputEvent;->a:Lo/InputEvent;

    iget v2, v2, Lo/InputEvent;->f:F

    goto :goto_2

    .line 164
    :cond_c
    iget-object v0, p0, Lo/InputEvent;->h:Lo/InputEvent;

    iget-object v0, v0, Lo/InputEvent;->a:Lo/InputEvent;

    iget v0, v0, Lo/InputEvent;->f:F

    iget-object v2, p0, Lo/InputEvent;->a:Lo/InputEvent;

    iget v2, v2, Lo/InputEvent;->f:F

    :goto_2
    sub-float/2addr v0, v2

    .line 167
    iget-object v2, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->b:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v2, v4, :cond_e

    iget-object v2, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v2, v4, :cond_d

    goto :goto_3

    .line 172
    :cond_d
    iget-object v2, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 173
    iget-object v2, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U:F

    goto :goto_4

    .line 169
    :cond_e
    :goto_3
    iget-object v2, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 170
    iget-object v2, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->O:F

    .line 175
    :goto_4
    iget-object v4, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v4

    .line 176
    iget-object v5, p0, Lo/InputEvent;->h:Lo/InputEvent;

    iget-object v5, v5, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v5

    .line 177
    iget-object v6, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    iget-object v7, p0, Lo/InputEvent;->h:Lo/InputEvent;

    iget-object v7, v7, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    if-ne v6, v7, :cond_f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    goto :goto_5

    :cond_f
    move v3, v4

    :goto_5
    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v4, v5

    sub-float/2addr v0, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_10

    .line 188
    iget-object v1, p0, Lo/InputEvent;->h:Lo/InputEvent;

    iget-object v6, v1, Lo/InputEvent;->a:Lo/InputEvent;

    iget v6, v6, Lo/InputEvent;->f:F

    add-float/2addr v6, v4

    mul-float v4, v0, v2

    add-float/2addr v6, v4

    iput v6, v1, Lo/InputEvent;->f:F

    .line 190
    iget-object v1, p0, Lo/InputEvent;->a:Lo/InputEvent;

    iget v1, v1, Lo/InputEvent;->f:F

    sub-float/2addr v1, v3

    sub-float/2addr v5, v2

    mul-float v0, v0, v5

    sub-float/2addr v1, v0

    iput v1, p0, Lo/InputEvent;->f:F

    goto :goto_6

    .line 192
    :cond_10
    iget-object v1, p0, Lo/InputEvent;->a:Lo/InputEvent;

    iget v1, v1, Lo/InputEvent;->f:F

    add-float/2addr v1, v3

    mul-float v3, v0, v2

    add-float/2addr v1, v3

    iput v1, p0, Lo/InputEvent;->f:F

    .line 193
    iget-object v1, p0, Lo/InputEvent;->h:Lo/InputEvent;

    iget-object v3, v1, Lo/InputEvent;->a:Lo/InputEvent;

    iget v3, v3, Lo/InputEvent;->f:F

    sub-float/2addr v3, v4

    sub-float/2addr v5, v2

    mul-float v0, v0, v5

    sub-float/2addr v3, v0

    iput v3, v1, Lo/InputEvent;->f:F

    .line 197
    :goto_6
    invoke-virtual {p0}, Lo/InputEvent;->g()V

    .line 198
    iget-object v0, p0, Lo/InputEvent;->h:Lo/InputEvent;

    invoke-virtual {v0}, Lo/InputEvent;->g()V

    goto :goto_7

    .line 199
    :cond_11
    iget v0, p0, Lo/InputEvent;->i:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lo/InputEvent;->a:Lo/InputEvent;

    if-eqz v0, :cond_13

    iget v0, v0, Lo/InputEvent;->g:I

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lo/InputEvent;->h:Lo/InputEvent;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lo/InputEvent;->a:Lo/InputEvent;

    if-eqz v0, :cond_13

    iget v0, v0, Lo/InputEvent;->g:I

    if-ne v0, v1, :cond_13

    .line 207
    invoke-static {}, Lo/Scene;->c()Lo/URLSpan;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 208
    invoke-static {}, Lo/Scene;->c()Lo/URLSpan;

    move-result-object v0

    iget-wide v1, v0, Lo/URLSpan;->v:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lo/URLSpan;->v:J

    .line 210
    :cond_12
    iget-object v0, p0, Lo/InputEvent;->a:Lo/InputEvent;

    iget-object v1, v0, Lo/InputEvent;->e:Lo/InputEvent;

    iput-object v1, p0, Lo/InputEvent;->e:Lo/InputEvent;

    .line 211
    iget-object v1, p0, Lo/InputEvent;->h:Lo/InputEvent;

    iget-object v2, v1, Lo/InputEvent;->a:Lo/InputEvent;

    iget-object v3, v2, Lo/InputEvent;->e:Lo/InputEvent;

    iput-object v3, v1, Lo/InputEvent;->e:Lo/InputEvent;

    .line 213
    iget v0, v0, Lo/InputEvent;->f:F

    iget v3, p0, Lo/InputEvent;->b:F

    add-float/2addr v0, v3

    iput v0, p0, Lo/InputEvent;->f:F

    .line 214
    iget v0, v2, Lo/InputEvent;->f:F

    iget v2, v1, Lo/InputEvent;->b:F

    add-float/2addr v0, v2

    iput v0, v1, Lo/InputEvent;->f:F

    .line 216
    invoke-virtual {p0}, Lo/InputEvent;->g()V

    .line 217
    iget-object v0, p0, Lo/InputEvent;->h:Lo/InputEvent;

    invoke-virtual {v0}, Lo/InputEvent;->g()V

    goto :goto_7

    .line 218
    :cond_13
    iget v0, p0, Lo/InputEvent;->i:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    .line 219
    iget-object v0, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e()V

    :cond_14
    :goto_7
    return-void
.end method

.method public e(I)V
    .locals 0

    .line 224
    iput p1, p0, Lo/InputEvent;->i:I

    return-void
.end method

.method public e(ILo/InputEvent;I)V
    .locals 0

    .line 262
    iput p1, p0, Lo/InputEvent;->i:I

    .line 263
    iput-object p2, p0, Lo/InputEvent;->a:Lo/InputEvent;

    int-to-float p1, p3

    .line 264
    iput p1, p0, Lo/InputEvent;->b:F

    .line 265
    iget-object p1, p0, Lo/InputEvent;->a:Lo/InputEvent;

    invoke-virtual {p1, p0}, Lo/InputEvent;->b(Lo/Gravity;)V

    return-void
.end method

.method public e(Lo/InputEvent;ILo/KeyEvent;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lo/InputEvent;->a:Lo/InputEvent;

    .line 282
    iget-object p1, p0, Lo/InputEvent;->a:Lo/InputEvent;

    invoke-virtual {p1, p0}, Lo/InputEvent;->b(Lo/Gravity;)V

    .line 283
    iput-object p3, p0, Lo/InputEvent;->n:Lo/KeyEvent;

    .line 284
    iput p2, p0, Lo/InputEvent;->k:I

    .line 285
    iget-object p1, p0, Lo/InputEvent;->n:Lo/KeyEvent;

    invoke-virtual {p1, p0}, Lo/KeyEvent;->b(Lo/Gravity;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    iget v0, p0, Lo/InputEvent;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 69
    iget-object v0, p0, Lo/InputEvent;->e:Lo/InputEvent;

    const-string v1, ", RESOLVED: "

    const-string v2, "["

    if-ne v0, p0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/InputEvent;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]  type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/InputEvent;->i:I

    invoke-virtual {p0, v1}, Lo/InputEvent;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/InputEvent;->e:Lo/InputEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/InputEvent;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/InputEvent;->i:I

    .line 73
    invoke-virtual {p0, v1}, Lo/InputEvent;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/InputEvent;->d:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " UNRESOLVED} type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/InputEvent;->i:I

    invoke-virtual {p0, v1}, Lo/InputEvent;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
