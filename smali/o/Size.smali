.class public Lo/Size;
.super Lo/ContextThemeWrapper;
.source ""


# instance fields
.field private aj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private al:I

.field private am:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lo/ContextThemeWrapper;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lo/Size;->al:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/Size;->aj:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lo/Size;->am:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lo/Scene;)V
    .locals 10

    .line 209
    iget-object v0, p0, Lo/Size;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Lo/Size;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 210
    iget-object v0, p0, Lo/Size;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Lo/Size;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 211
    iget-object v0, p0, Lo/Size;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Lo/Size;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 212
    iget-object v0, p0, Lo/Size;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Lo/Size;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v0, 0x0

    .line 213
    :goto_0
    iget-object v1, p0, Lo/Size;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 214
    iget-object v1, p0, Lo/Size;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    iget-object v6, p0, Lo/Size;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Lo/Scene;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    iput-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    iget v0, p0, Lo/Size;->al:I

    if-ltz v0, :cond_11

    const/4 v1, 0x4

    if-ge v0, v1, :cond_11

    .line 217
    iget-object v0, p0, Lo/Size;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v1, p0, Lo/Size;->al:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    .line 224
    :goto_1
    iget v6, p0, Lo/Size;->ai:I

    if-ge v1, v6, :cond_6

    .line 225
    iget-object v6, p0, Lo/Size;->ak:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v6, v6, v1

    .line 226
    iget-boolean v7, p0, Lo/Size;->am:Z

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    .line 229
    :cond_1
    iget v7, p0, Lo/Size;->al:I

    if-eqz v7, :cond_2

    if-ne v7, v4, :cond_3

    .line 230
    :cond_2
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_3

    :goto_2
    const/4 v1, 0x1

    goto :goto_4

    .line 233
    :cond_3
    iget v7, p0, Lo/Size;->al:I

    if-eq v7, v3, :cond_4

    if-ne v7, v5, :cond_5

    .line 234
    :cond_4
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 239
    :goto_4
    iget v6, p0, Lo/Size;->al:I

    if-eqz v6, :cond_8

    if-ne v6, v4, :cond_7

    goto :goto_5

    .line 244
    :cond_7
    invoke-virtual {p0}, Lo/Size;->k()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_9

    goto :goto_6

    .line 240
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lo/Size;->k()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->F()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_9

    :goto_6
    const/4 v1, 0x0

    :cond_9
    const/4 v6, 0x0

    .line 248
    :goto_7
    iget v7, p0, Lo/Size;->ai:I

    if-ge v6, v7, :cond_d

    .line 249
    iget-object v7, p0, Lo/Size;->ak:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v6

    .line 250
    iget-boolean v8, p0, Lo/Size;->am:Z

    if-nez v8, :cond_a

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a()Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_9

    .line 253
    :cond_a
    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v9, p0, Lo/Size;->al:I

    aget-object v8, v8, v9

    invoke-virtual {p1, v8}, Lo/Scene;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    .line 254
    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v9, p0, Lo/Size;->al:I

    aget-object v7, v7, v9

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v9, :cond_c

    if-ne v9, v3, :cond_b

    goto :goto_8

    .line 258
    :cond_b
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v7, v8, v1}, Lo/Scene;->c(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Z)V

    goto :goto_9

    .line 256
    :cond_c
    :goto_8
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v7, v8, v1}, Lo/Scene;->e(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Z)V

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 262
    :cond_d
    iget v0, p0, Lo/Size;->al:I

    const/4 v6, 0x5

    const/4 v7, 0x6

    if-nez v0, :cond_e

    .line 263
    iget-object v0, p0, Lo/Size;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Lo/Size;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Lo/Scene;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lo/UpdateAppearance;

    if-nez v1, :cond_11

    .line 265
    iget-object v0, p0, Lo/Size;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, p0, Lo/Size;->C:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v0, v1, v2, v6}, Lo/Scene;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lo/UpdateAppearance;

    goto :goto_a

    :cond_e
    if-ne v0, v4, :cond_f

    .line 268
    iget-object v0, p0, Lo/Size;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Lo/Size;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Lo/Scene;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lo/UpdateAppearance;

    if-nez v1, :cond_11

    .line 270
    iget-object v0, p0, Lo/Size;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, p0, Lo/Size;->C:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v0, v1, v2, v6}, Lo/Scene;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lo/UpdateAppearance;

    goto :goto_a

    :cond_f
    if-ne v0, v3, :cond_10

    .line 273
    iget-object v0, p0, Lo/Size;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Lo/Size;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Lo/Scene;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lo/UpdateAppearance;

    if-nez v1, :cond_11

    .line 275
    iget-object v0, p0, Lo/Size;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, p0, Lo/Size;->C:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v0, v1, v2, v6}, Lo/Scene;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lo/UpdateAppearance;

    goto :goto_a

    :cond_10
    if-ne v0, v5, :cond_11

    .line 278
    iget-object v0, p0, Lo/Size;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Lo/Size;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v0, v3, v2, v7}, Lo/Scene;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lo/UpdateAppearance;

    if-nez v1, :cond_11

    .line 280
    iget-object v0, p0, Lo/Size;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, p0, Lo/Size;->C:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v0, v1, v2, v6}, Lo/Scene;->b(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Lo/UpdateAppearance;

    :cond_11
    :goto_a
    return-void
.end method

.method public c()V
    .locals 1

    .line 55
    invoke-super {p0}, Lo/ContextThemeWrapper;->c()V

    .line 56
    iget-object v0, p0, Lo/Size;->aj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 46
    iput p1, p0, Lo/Size;->al:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lo/Size;->am:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lo/Size;->am:Z

    return v0
.end method

.method public e()V
    .locals 11

    .line 134
    iget v0, p0, Lo/Size;->al:I

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lo/Size;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lo/Size;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v0

    goto :goto_1

    .line 140
    :cond_2
    iget-object v0, p0, Lo/Size;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 136
    :cond_3
    iget-object v0, p0, Lo/Size;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v0

    .line 153
    :goto_1
    iget-object v5, p0, Lo/Size;->aj:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_8

    .line 156
    iget-object v8, p0, Lo/Size;->aj:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/InputEvent;

    .line 157
    iget v9, v8, Lo/InputEvent;->g:I

    if-eq v9, v4, :cond_4

    return-void

    .line 160
    :cond_4
    iget v9, p0, Lo/Size;->al:I

    if-eqz v9, :cond_6

    if-ne v9, v3, :cond_5

    goto :goto_3

    .line 166
    :cond_5
    iget v9, v8, Lo/InputEvent;->f:F

    cmpl-float v9, v9, v1

    if-lez v9, :cond_7

    .line 167
    iget v1, v8, Lo/InputEvent;->f:F

    .line 168
    iget-object v6, v8, Lo/InputEvent;->e:Lo/InputEvent;

    goto :goto_4

    .line 161
    :cond_6
    :goto_3
    iget v9, v8, Lo/InputEvent;->f:F

    cmpg-float v9, v9, v1

    if-gez v9, :cond_7

    .line 162
    iget v1, v8, Lo/InputEvent;->f:F

    .line 163
    iget-object v6, v8, Lo/InputEvent;->e:Lo/InputEvent;

    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 173
    :cond_8
    invoke-static {}, Lo/Scene;->c()Lo/URLSpan;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 174
    invoke-static {}, Lo/Scene;->c()Lo/URLSpan;

    move-result-object v5

    iget-wide v7, v5, Lo/URLSpan;->A:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v5, Lo/URLSpan;->A:J

    .line 180
    :cond_9
    iput-object v6, v0, Lo/InputEvent;->e:Lo/InputEvent;

    .line 181
    iput v1, v0, Lo/InputEvent;->f:F

    .line 182
    invoke-virtual {v0}, Lo/InputEvent;->g()V

    .line 183
    iget v0, p0, Lo/Size;->al:I

    if-eqz v0, :cond_d

    if-eq v0, v4, :cond_c

    if-eq v0, v3, :cond_b

    if-eq v0, v2, :cond_a

    return-void

    .line 194
    :cond_a
    iget-object v0, p0, Lo/Size;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Lo/InputEvent;->a(Lo/InputEvent;F)V

    goto :goto_5

    .line 191
    :cond_b
    iget-object v0, p0, Lo/Size;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Lo/InputEvent;->a(Lo/InputEvent;F)V

    goto :goto_5

    .line 188
    :cond_c
    iget-object v0, p0, Lo/Size;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Lo/InputEvent;->a(Lo/InputEvent;F)V

    goto :goto_5

    .line 185
    :cond_d
    iget-object v0, p0, Lo/Size;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Lo/InputEvent;->a(Lo/InputEvent;F)V

    :goto_5
    return-void
.end method

.method public e(I)V
    .locals 7

    .line 65
    iget-object p1, p0, Lo/Size;->C:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez p1, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object p1, p0, Lo/Size;->C:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast p1, Lo/ContextMenu;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lo/ContextMenu;->w(I)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 73
    :cond_1
    iget p1, p0, Lo/Size;->al:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_2

    return-void

    .line 84
    :cond_2
    iget-object p1, p0, Lo/Size;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object p1

    goto :goto_0

    .line 81
    :cond_3
    iget-object p1, p0, Lo/Size;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object p1

    goto :goto_0

    .line 78
    :cond_4
    iget-object p1, p0, Lo/Size;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object p1

    goto :goto_0

    .line 75
    :cond_5
    iget-object p1, p0, Lo/Size;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object p1

    :goto_0
    const/4 v3, 0x5

    .line 89
    invoke-virtual {p1, v3}, Lo/InputEvent;->e(I)V

    .line 91
    iget v3, p0, Lo/Size;->al:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    if-ne v3, v2, :cond_6

    goto :goto_1

    .line 95
    :cond_6
    iget-object v3, p0, Lo/Size;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Lo/InputEvent;->a(Lo/InputEvent;F)V

    .line 96
    iget-object v3, p0, Lo/Size;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Lo/InputEvent;->a(Lo/InputEvent;F)V

    goto :goto_2

    .line 92
    :cond_7
    :goto_1
    iget-object v3, p0, Lo/Size;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Lo/InputEvent;->a(Lo/InputEvent;F)V

    .line 93
    iget-object v3, p0, Lo/Size;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Lo/InputEvent;->a(Lo/InputEvent;F)V

    .line 99
    :goto_2
    iget-object v3, p0, Lo/Size;->aj:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    .line 100
    :goto_3
    iget v4, p0, Lo/Size;->ai:I

    if-ge v3, v4, :cond_e

    .line 101
    iget-object v4, p0, Lo/Size;->ak:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v4, v4, v3

    .line 102
    iget-boolean v6, p0, Lo/Size;->am:Z

    if-nez v6, :cond_8

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a()Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_5

    .line 106
    :cond_8
    iget v6, p0, Lo/Size;->al:I

    if-eqz v6, :cond_c

    if-eq v6, v2, :cond_b

    if-eq v6, v0, :cond_a

    if-eq v6, v1, :cond_9

    move-object v4, v5

    goto :goto_4

    .line 117
    :cond_9
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v4

    goto :goto_4

    .line 114
    :cond_a
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v4

    goto :goto_4

    .line 111
    :cond_b
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v4

    goto :goto_4

    .line 108
    :cond_c
    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_d

    .line 121
    iget-object v6, p0, Lo/Size;->aj:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v4, p1}, Lo/InputEvent;->b(Lo/Gravity;)V

    :cond_d
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    return-void
.end method
