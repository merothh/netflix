.class public Lo/ActionMode;
.super Ljava/lang/Object;
.source ""


# static fields
.field static a:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 44
    sput-object v0, Lo/ActionMode;->a:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lo/ContextMenu;Lo/Scene;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 5

    .line 57
    iget-object v0, p0, Lo/ContextMenu;->B:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_0

    .line 60
    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:I

    .line 61
    invoke-virtual {p0}, Lo/ContextMenu;->t()I

    move-result v1

    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:I

    sub-int/2addr v1, v2

    .line 68
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Lo/Scene;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    .line 69
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Lo/Scene;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    .line 70
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Lo/Scene;->c(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 71
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Lo/Scene;->c(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 72
    iput v3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->b:I

    .line 74
    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c(II)V

    .line 76
    :cond_0
    iget-object v0, p0, Lo/ContextMenu;->B:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_3

    .line 79
    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:I

    .line 80
    invoke-virtual {p0}, Lo/ContextMenu;->s()I

    move-result p0

    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c:I

    sub-int/2addr p0, v1

    .line 87
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Lo/Scene;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    .line 88
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Lo/Scene;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    .line 89
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v1, v0}, Lo/Scene;->c(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 90
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v1, p0}, Lo/Scene;->c(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 91
    iget v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 92
    :cond_1
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Lo/Scene;->a(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    .line 93
    iget-object v1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->h:Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lo/Scene;->c(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 95
    :cond_2
    iput v3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->c:I

    .line 97
    invoke-virtual {p2, v0, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->a(II)V

    :cond_3
    return-void
.end method

.method public static c(ILandroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 16

    move-object/from16 v0, p1

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h()V

    .line 154
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v1

    .line 155
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v2

    .line 156
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v3

    .line 157
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v4

    const/16 v5, 0x8

    and-int/lit8 v6, p0, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v5, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 163
    :goto_0
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v7

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_1

    .line 164
    invoke-static {v0, v7}, Lo/ActionMode;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 166
    :goto_1
    iget v10, v1, Lo/InputEvent;->i:I

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x2

    if-eq v10, v12, :cond_13

    iget v10, v3, Lo/InputEvent;->i:I

    if-eq v10, v12, :cond_13

    .line 168
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v7

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v7, :cond_b

    if-eqz v9, :cond_2

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()I

    move-result v7

    if-ne v7, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz v9, :cond_13

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v7

    .line 215
    invoke-virtual {v1, v8}, Lo/InputEvent;->e(I)V

    .line 216
    invoke-virtual {v3, v8}, Lo/InputEvent;->e(I)V

    .line 217
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_4

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_4

    if-eqz v6, :cond_3

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()Lo/KeyEvent;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Lo/InputEvent;->e(Lo/InputEvent;ILo/KeyEvent;)V

    goto/16 :goto_3

    .line 221
    :cond_3
    invoke-virtual {v3, v1, v7}, Lo/InputEvent;->a(Lo/InputEvent;I)V

    goto/16 :goto_3

    .line 223
    :cond_4
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_6

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_6

    if-eqz v6, :cond_5

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()Lo/KeyEvent;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Lo/InputEvent;->e(Lo/InputEvent;ILo/KeyEvent;)V

    goto/16 :goto_3

    .line 227
    :cond_5
    invoke-virtual {v3, v1, v7}, Lo/InputEvent;->a(Lo/InputEvent;I)V

    goto/16 :goto_3

    .line 229
    :cond_6
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_8

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_8

    if-eqz v6, :cond_7

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()Lo/KeyEvent;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Lo/InputEvent;->e(Lo/InputEvent;ILo/KeyEvent;)V

    goto/16 :goto_3

    :cond_7
    neg-int v7, v7

    .line 233
    invoke-virtual {v1, v3, v7}, Lo/InputEvent;->a(Lo/InputEvent;I)V

    goto/16 :goto_3

    .line 235
    :cond_8
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_13

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_13

    if-eqz v6, :cond_9

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()Lo/KeyEvent;

    move-result-object v9

    invoke-virtual {v9, v1}, Lo/KeyEvent;->b(Lo/Gravity;)V

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()Lo/KeyEvent;

    move-result-object v9

    invoke-virtual {v9, v3}, Lo/KeyEvent;->b(Lo/Gravity;)V

    .line 240
    :cond_9
    iget v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:F

    cmpl-float v9, v9, v13

    if-nez v9, :cond_a

    .line 241
    invoke-virtual {v1, v11}, Lo/InputEvent;->e(I)V

    .line 242
    invoke-virtual {v3, v11}, Lo/InputEvent;->e(I)V

    .line 243
    invoke-virtual {v1, v3, v13}, Lo/InputEvent;->c(Lo/InputEvent;F)V

    .line 244
    invoke-virtual {v3, v1, v13}, Lo/InputEvent;->c(Lo/InputEvent;F)V

    goto/16 :goto_3

    .line 247
    :cond_a
    invoke-virtual {v1, v15}, Lo/InputEvent;->e(I)V

    .line 248
    invoke-virtual {v3, v15}, Lo/InputEvent;->e(I)V

    neg-int v9, v7

    int-to-float v9, v9

    .line 249
    invoke-virtual {v1, v3, v9}, Lo/InputEvent;->c(Lo/InputEvent;F)V

    int-to-float v9, v7

    .line 250
    invoke-virtual {v3, v1, v9}, Lo/InputEvent;->c(Lo/InputEvent;F)V

    .line 251
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h(I)V

    goto/16 :goto_3

    .line 170
    :cond_b
    :goto_2
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_d

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_d

    .line 171
    invoke-virtual {v1, v8}, Lo/InputEvent;->e(I)V

    .line 172
    invoke-virtual {v3, v8}, Lo/InputEvent;->e(I)V

    if-eqz v6, :cond_c

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()Lo/KeyEvent;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Lo/InputEvent;->e(Lo/InputEvent;ILo/KeyEvent;)V

    goto/16 :goto_3

    .line 176
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Lo/InputEvent;->a(Lo/InputEvent;I)V

    goto/16 :goto_3

    .line 178
    :cond_d
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_f

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_f

    .line 179
    invoke-virtual {v1, v8}, Lo/InputEvent;->e(I)V

    .line 180
    invoke-virtual {v3, v8}, Lo/InputEvent;->e(I)V

    if-eqz v6, :cond_e

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()Lo/KeyEvent;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Lo/InputEvent;->e(Lo/InputEvent;ILo/KeyEvent;)V

    goto/16 :goto_3

    .line 184
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Lo/InputEvent;->a(Lo/InputEvent;I)V

    goto :goto_3

    .line 186
    :cond_f
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_11

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_11

    .line 187
    invoke-virtual {v1, v8}, Lo/InputEvent;->e(I)V

    .line 188
    invoke-virtual {v3, v8}, Lo/InputEvent;->e(I)V

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Lo/InputEvent;->a(Lo/InputEvent;I)V

    if-eqz v6, :cond_10

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()Lo/KeyEvent;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Lo/InputEvent;->e(Lo/InputEvent;ILo/KeyEvent;)V

    goto :goto_3

    .line 193
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Lo/InputEvent;->a(Lo/InputEvent;I)V

    goto :goto_3

    .line 195
    :cond_11
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_13

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->u:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_13

    .line 196
    invoke-virtual {v1, v15}, Lo/InputEvent;->e(I)V

    .line 197
    invoke-virtual {v3, v15}, Lo/InputEvent;->e(I)V

    if-eqz v6, :cond_12

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()Lo/KeyEvent;

    move-result-object v7

    invoke-virtual {v7, v1}, Lo/KeyEvent;->b(Lo/Gravity;)V

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()Lo/KeyEvent;

    move-result-object v7

    invoke-virtual {v7, v3}, Lo/KeyEvent;->b(Lo/Gravity;)V

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()Lo/KeyEvent;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Lo/InputEvent;->d(Lo/InputEvent;ILo/KeyEvent;)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()Lo/KeyEvent;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Lo/InputEvent;->d(Lo/InputEvent;ILo/KeyEvent;)V

    goto :goto_3

    .line 204
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v1, v3, v7}, Lo/InputEvent;->c(Lo/InputEvent;F)V

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v1, v7}, Lo/InputEvent;->c(Lo/InputEvent;F)V

    .line 259
    :cond_13
    :goto_3
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v8

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_14

    .line 260
    invoke-static {v0, v8}, Lo/ActionMode;->d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_4

    :cond_14
    const/4 v1, 0x0

    .line 262
    :goto_4
    iget v3, v2, Lo/InputEvent;->i:I

    if-eq v3, v12, :cond_26

    iget v3, v4, Lo/InputEvent;->i:I

    if-eq v3, v12, :cond_26

    .line 265
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v8

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v7, :cond_1e

    if-eqz v1, :cond_15

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()I

    move-result v3

    if-ne v3, v5, :cond_15

    goto/16 :goto_5

    :cond_15
    if-eqz v1, :cond_26

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s()I

    move-result v1

    .line 324
    invoke-virtual {v2, v8}, Lo/InputEvent;->e(I)V

    .line 325
    invoke-virtual {v4, v8}, Lo/InputEvent;->e(I)V

    .line 326
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_17

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_17

    if-eqz v6, :cond_16

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Lo/KeyEvent;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Lo/InputEvent;->e(Lo/InputEvent;ILo/KeyEvent;)V

    goto/16 :goto_a

    .line 330
    :cond_16
    invoke-virtual {v4, v2, v1}, Lo/InputEvent;->a(Lo/InputEvent;I)V

    goto/16 :goto_a

    .line 332
    :cond_17
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_19

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_19

    if-eqz v6, :cond_18

    .line 334
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Lo/KeyEvent;

    move-result-object v0

    invoke-virtual {v4, v2, v8, v0}, Lo/InputEvent;->e(Lo/InputEvent;ILo/KeyEvent;)V

    goto/16 :goto_a

    .line 336
    :cond_18
    invoke-virtual {v4, v2, v1}, Lo/InputEvent;->a(Lo/InputEvent;I)V

    goto/16 :goto_a

    .line 338
    :cond_19
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1b

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1b

    if-eqz v6, :cond_1a

    .line 340
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Lo/KeyEvent;

    move-result-object v0

    invoke-virtual {v2, v4, v14, v0}, Lo/InputEvent;->e(Lo/InputEvent;ILo/KeyEvent;)V

    goto/16 :goto_a

    :cond_1a
    neg-int v0, v1

    .line 342
    invoke-virtual {v2, v4, v0}, Lo/InputEvent;->a(Lo/InputEvent;I)V

    goto/16 :goto_a

    .line 344
    :cond_1b
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_26

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_26

    if-eqz v6, :cond_1c

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Lo/KeyEvent;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/KeyEvent;->b(Lo/Gravity;)V

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()Lo/KeyEvent;

    move-result-object v3

    invoke-virtual {v3, v4}, Lo/KeyEvent;->b(Lo/Gravity;)V

    .line 349
    :cond_1c
    iget v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_1d

    .line 350
    invoke-virtual {v2, v11}, Lo/InputEvent;->e(I)V

    .line 351
    invoke-virtual {v4, v11}, Lo/InputEvent;->e(I)V

    .line 352
    invoke-virtual {v2, v4, v13}, Lo/InputEvent;->c(Lo/InputEvent;F)V

    .line 353
    invoke-virtual {v4, v2, v13}, Lo/InputEvent;->c(Lo/InputEvent;F)V

    goto/16 :goto_a

    .line 355
    :cond_1d
    invoke-virtual {v2, v15}, Lo/InputEvent;->e(I)V

    .line 356
    invoke-virtual {v4, v15}, Lo/InputEvent;->e(I)V

    neg-int v3, v1

    int-to-float v3, v3

    .line 357
    invoke-virtual {v2, v4, v3}, Lo/InputEvent;->c(Lo/InputEvent;F)V

    int-to-float v3, v1

    .line 358
    invoke-virtual {v4, v2, v3}, Lo/InputEvent;->c(Lo/InputEvent;F)V

    .line 359
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k(I)V

    .line 360
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    if-lez v1, :cond_26

    .line 361
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v1

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    invoke-virtual {v1, v8, v2, v0}, Lo/InputEvent;->e(ILo/InputEvent;I)V

    goto/16 :goto_a

    .line 267
    :cond_1e
    :goto_5
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_20

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_20

    .line 268
    invoke-virtual {v2, v8}, Lo/InputEvent;->e(I)V

    .line 269
    invoke-virtual {v4, v8}, Lo/InputEvent;->e(I)V

    if-eqz v6, :cond_1f

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Lo/KeyEvent;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Lo/InputEvent;->e(Lo/InputEvent;ILo/KeyEvent;)V

    goto :goto_6

    .line 273
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Lo/InputEvent;->a(Lo/InputEvent;I)V

    .line 275
    :goto_6
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_26

    .line 276
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v1

    invoke-virtual {v1, v8}, Lo/InputEvent;->e(I)V

    .line 277
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 278
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v1

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    neg-int v0, v0

    .line 277
    invoke-virtual {v2, v8, v1, v0}, Lo/InputEvent;->e(ILo/InputEvent;I)V

    goto/16 :goto_a

    .line 280
    :cond_20
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_22

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_22

    .line 281
    invoke-virtual {v2, v8}, Lo/InputEvent;->e(I)V

    .line 282
    invoke-virtual {v4, v8}, Lo/InputEvent;->e(I)V

    if-eqz v6, :cond_21

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Lo/KeyEvent;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Lo/InputEvent;->e(Lo/InputEvent;ILo/KeyEvent;)V

    goto :goto_7

    .line 286
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Lo/InputEvent;->a(Lo/InputEvent;I)V

    .line 288
    :goto_7
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    if-lez v1, :cond_26

    .line 289
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v1

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    invoke-virtual {v1, v8, v2, v0}, Lo/InputEvent;->e(ILo/InputEvent;I)V

    goto/16 :goto_a

    .line 291
    :cond_22
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v1, :cond_24

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_24

    .line 292
    invoke-virtual {v2, v8}, Lo/InputEvent;->e(I)V

    .line 293
    invoke-virtual {v4, v8}, Lo/InputEvent;->e(I)V

    if-eqz v6, :cond_23

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Lo/KeyEvent;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Lo/InputEvent;->e(Lo/InputEvent;ILo/KeyEvent;)V

    goto :goto_8

    .line 297
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v2, v4, v1}, Lo/InputEvent;->a(Lo/InputEvent;I)V

    .line 299
    :goto_8
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    if-lez v1, :cond_26

    .line 300
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v1

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    invoke-virtual {v1, v8, v2, v0}, Lo/InputEvent;->e(ILo/InputEvent;I)V

    goto :goto_a

    .line 302
    :cond_24
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_26

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->w:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_26

    .line 303
    invoke-virtual {v2, v15}, Lo/InputEvent;->e(I)V

    .line 304
    invoke-virtual {v4, v15}, Lo/InputEvent;->e(I)V

    if-eqz v6, :cond_25

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Lo/KeyEvent;

    move-result-object v1

    invoke-virtual {v2, v4, v14, v1}, Lo/InputEvent;->d(Lo/InputEvent;ILo/KeyEvent;)V

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Lo/KeyEvent;

    move-result-object v1

    invoke-virtual {v4, v2, v8, v1}, Lo/InputEvent;->d(Lo/InputEvent;ILo/KeyEvent;)V

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->l()Lo/KeyEvent;

    move-result-object v1

    invoke-virtual {v1, v2}, Lo/KeyEvent;->b(Lo/Gravity;)V

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i()Lo/KeyEvent;

    move-result-object v1

    invoke-virtual {v1, v4}, Lo/KeyEvent;->b(Lo/Gravity;)V

    goto :goto_9

    .line 311
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v4, v1}, Lo/InputEvent;->c(Lo/InputEvent;F)V

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v2, v1}, Lo/InputEvent;->c(Lo/InputEvent;F)V

    .line 314
    :goto_9
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    if-lez v1, :cond_26

    .line 315
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v1

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Q:I

    invoke-virtual {v1, v8, v2, v0}, Lo/InputEvent;->e(ILo/InputEvent;I)V

    :cond_26
    :goto_a
    return-void
.end method

.method static d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;II)V
    .locals 4

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, v0, 0x1

    .line 674
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v2

    .line 675
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v3

    iput-object v3, v2, Lo/InputEvent;->e:Lo/InputEvent;

    .line 676
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v2

    int-to-float p2, p2

    iput p2, v2, Lo/InputEvent;->f:F

    .line 678
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object p2

    const/4 v2, 0x1

    iput v2, p2, Lo/InputEvent;->g:I

    .line 680
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object p2

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v3, v0

    .line 681
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v0

    iput-object v0, p2, Lo/InputEvent;->e:Lo/InputEvent;

    .line 682
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object p2

    .line 683
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->j(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p2, Lo/InputEvent;->f:F

    .line 684
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object p0

    iput v2, p0, Lo/InputEvent;->g:I

    return-void
.end method

.method private static d(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z
    .locals 4

    .line 111
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 114
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:F

    const/4 v1, 0x0

    const/4 v3, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 115
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    aget-object p0, p0, v3

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p0, p1, :cond_2

    :cond_2
    return v2

    :cond_3
    if-nez p1, :cond_6

    .line 123
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:I

    if-eqz p1, :cond_4

    return v2

    .line 126
    :cond_4
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:I

    if-nez p1, :cond_5

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:I

    if-eqz p0, :cond_8

    :cond_5
    return v2

    .line 130
    :cond_6
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i:I

    if-eqz p1, :cond_7

    return v2

    .line 133
    :cond_7
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    if-nez p1, :cond_9

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    return v3

    :cond_9
    :goto_1
    return v2
.end method

.method static d(Lo/ContextMenu;Lo/Scene;IILo/AttributeSet;)Z
    .locals 23

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    .line 383
    iget-object v3, v2, Lo/AttributeSet;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 384
    iget-object v4, v2, Lo/AttributeSet;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 385
    iget-object v5, v2, Lo/AttributeSet;->e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 386
    iget-object v6, v2, Lo/AttributeSet;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 387
    iget-object v7, v2, Lo/AttributeSet;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 394
    iget v8, v2, Lo/AttributeSet;->k:F

    .line 395
    iget-object v9, v2, Lo/AttributeSet;->j:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 396
    iget-object v2, v2, Lo/AttributeSet;->g:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v9, p0

    .line 398
    iget-object v2, v9, Lo/ContextMenu;->B:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v1

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x2

    const/4 v10, 0x1

    if-nez v1, :cond_3

    .line 404
    iget v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    if-nez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 405
    :goto_0
    iget v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    if-ne v12, v10, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 406
    :goto_1
    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Z:I

    if-ne v7, v2, :cond_2

    :goto_2
    const/4 v2, 0x1

    goto :goto_5

    :cond_2
    const/4 v2, 0x0

    goto :goto_5

    .line 408
    :cond_3
    iget v11, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    if-nez v11, :cond_4

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    .line 409
    :goto_3
    iget v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    if-ne v12, v10, :cond_5

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    .line 410
    :goto_4
    iget v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y:I

    if-ne v7, v2, :cond_2

    goto :goto_2

    :goto_5
    move-object v14, v3

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_6
    const/16 v7, 0x8

    if-nez v13, :cond_14

    .line 423
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()I

    move-result v9

    if-eq v9, v7, :cond_9

    add-int/lit8 v15, v15, 0x1

    if-nez v1, :cond_6

    .line 426
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v9

    goto :goto_7

    .line 428
    :cond_6
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s()I

    move-result v9

    :goto_7
    int-to-float v9, v9

    add-float v16, v16, v9

    if-eq v14, v5, :cond_7

    .line 431
    iget-object v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v9

    int-to-float v9, v9

    add-float v16, v16, v9

    :cond_7
    if-eq v14, v6, :cond_8

    .line 434
    iget-object v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v19, p3, 0x1

    aget-object v9, v9, v19

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v9

    int-to-float v9, v9

    add-float v16, v16, v9

    .line 436
    :cond_8
    iget-object v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v9

    int-to-float v9, v9

    add-float v17, v17, v9

    .line 437
    iget-object v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v19, p3, 0x1

    aget-object v9, v9, v19

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v9

    int-to-float v9, v9

    add-float v17, v17, v9

    .line 440
    :cond_9
    iget-object v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    .line 442
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()I

    move-result v9

    if-eq v9, v7, :cond_10

    iget-object v7, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v7, v1

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v9, :cond_10

    add-int/lit8 v10, v10, 0x1

    if-nez v1, :cond_c

    .line 447
    iget v7, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->e:I

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    return v7

    :cond_a
    const/4 v7, 0x0

    .line 449
    iget v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->h:I

    if-nez v9, :cond_b

    iget v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->g:I

    if-eqz v9, :cond_e

    :cond_b
    return v7

    :cond_c
    const/4 v7, 0x0

    .line 453
    iget v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->i:I

    if-eqz v9, :cond_d

    return v7

    .line 455
    :cond_d
    iget v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->n:I

    if-nez v9, :cond_f

    iget v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o:I

    if-eqz v9, :cond_e

    goto :goto_8

    .line 459
    :cond_e
    iget v9, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->G:F

    const/16 v18, 0x0

    cmpl-float v9, v9, v18

    if-eqz v9, :cond_10

    :cond_f
    :goto_8
    return v7

    .line 465
    :cond_10
    iget-object v7, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v9, p3, 0x1

    aget-object v7, v7, v9

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_12

    .line 467
    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 468
    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_12

    iget-object v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v9, v14, :cond_11

    goto :goto_9

    :cond_11
    move-object/from16 v19, v7

    goto :goto_a

    :cond_12
    :goto_9
    const/16 v19, 0x0

    :goto_a
    if-eqz v19, :cond_13

    move-object/from16 v14, v19

    goto/16 :goto_6

    :cond_13
    const/4 v13, 0x1

    goto/16 :goto_6

    .line 481
    :cond_14
    iget-object v9, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v9

    .line 482
    iget-object v13, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v19, p3, 0x1

    aget-object v13, v13, v19

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v13

    .line 484
    iget-object v7, v9, Lo/InputEvent;->a:Lo/InputEvent;

    if-eqz v7, :cond_3c

    iget-object v7, v13, Lo/InputEvent;->a:Lo/InputEvent;

    if-nez v7, :cond_15

    goto/16 :goto_1e

    .line 490
    :cond_15
    iget-object v7, v9, Lo/InputEvent;->a:Lo/InputEvent;

    iget v7, v7, Lo/InputEvent;->g:I

    move-object/from16 v20, v3

    const/4 v3, 0x1

    if-ne v7, v3, :cond_3b

    iget-object v7, v13, Lo/InputEvent;->a:Lo/InputEvent;

    iget v7, v7, Lo/InputEvent;->g:I

    if-eq v7, v3, :cond_16

    goto/16 :goto_1d

    :cond_16
    if-lez v10, :cond_17

    if-eq v10, v15, :cond_17

    const/4 v3, 0x0

    return v3

    :cond_17
    if-nez v2, :cond_19

    if-nez v11, :cond_19

    if-eqz v12, :cond_18

    goto :goto_b

    :cond_18
    const/4 v7, 0x0

    goto :goto_d

    :cond_19
    :goto_b
    if-eqz v5, :cond_1a

    .line 504
    iget-object v3, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v3

    int-to-float v7, v3

    goto :goto_c

    :cond_1a
    const/4 v7, 0x0

    :goto_c
    if-eqz v6, :cond_1b

    .line 507
    iget-object v3, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v19

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v7, v3

    .line 511
    :cond_1b
    :goto_d
    iget-object v3, v9, Lo/InputEvent;->a:Lo/InputEvent;

    iget v3, v3, Lo/InputEvent;->f:F

    .line 512
    iget-object v6, v13, Lo/InputEvent;->a:Lo/InputEvent;

    iget v6, v6, Lo/InputEvent;->f:F

    cmpg-float v13, v3, v6

    if-gez v13, :cond_1c

    sub-float/2addr v6, v3

    goto :goto_e

    :cond_1c
    sub-float v6, v3, v6

    :goto_e
    sub-float v6, v6, v16

    const-wide/16 v21, 0x1

    if-lez v10, :cond_25

    if-ne v10, v15, :cond_25

    .line 521
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->k()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->B:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v1

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_1d

    const/4 v2, 0x0

    return v2

    :cond_1d
    add-float v6, v6, v16

    sub-float v6, v6, v17

    move-object/from16 v2, v20

    :goto_f
    if-eqz v2, :cond_24

    .line 529
    sget-object v5, Lo/Scene;->g:Lo/URLSpan;

    if-eqz v5, :cond_1e

    .line 530
    sget-object v5, Lo/Scene;->g:Lo/URLSpan;

    iget-wide v11, v5, Lo/URLSpan;->z:J

    sub-long v11, v11, v21

    iput-wide v11, v5, Lo/URLSpan;->z:J

    .line 531
    sget-object v5, Lo/Scene;->g:Lo/URLSpan;

    iget-wide v11, v5, Lo/URLSpan;->t:J

    add-long v11, v11, v21

    iput-wide v11, v5, Lo/URLSpan;->t:J

    .line 532
    sget-object v5, Lo/Scene;->g:Lo/URLSpan;

    iget-wide v11, v5, Lo/URLSpan;->u:J

    add-long v11, v11, v21

    iput-wide v11, v5, Lo/URLSpan;->u:J

    .line 534
    :cond_1e
    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->af:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v1

    if-nez v5, :cond_1f

    if-ne v2, v4, :cond_23

    :cond_1f
    int-to-float v7, v10

    div-float v7, v6, v7

    const/4 v11, 0x0

    cmpl-float v12, v8, v11

    if-lez v12, :cond_21

    .line 538
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ag:[F

    aget v7, v7, v1

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v7, v7, v11

    if-nez v7, :cond_20

    const/4 v7, 0x0

    goto :goto_10

    .line 541
    :cond_20
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->ag:[F

    aget v7, v7, v1

    mul-float v7, v7, v6

    div-float/2addr v7, v8

    .line 544
    :cond_21
    :goto_10
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_22

    const/4 v7, 0x0

    .line 547
    :cond_22
    iget-object v11, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v3, v11

    .line 548
    iget-object v11, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, p3

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v11

    iget-object v12, v9, Lo/InputEvent;->e:Lo/InputEvent;

    invoke-virtual {v11, v12, v3}, Lo/InputEvent;->a(Lo/InputEvent;F)V

    .line 550
    iget-object v11, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v11, v11, v19

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v11

    iget-object v12, v9, Lo/InputEvent;->e:Lo/InputEvent;

    add-float/2addr v3, v7

    invoke-virtual {v11, v12, v3}, Lo/InputEvent;->a(Lo/InputEvent;F)V

    .line 552
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v7

    invoke-virtual {v7, v0}, Lo/InputEvent;->d(Lo/Scene;)V

    .line 553
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v19

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v7

    invoke-virtual {v7, v0}, Lo/InputEvent;->d(Lo/Scene;)V

    .line 555
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v19

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    :cond_23
    move-object v2, v5

    goto/16 :goto_f

    :cond_24
    const/4 v2, 0x1

    return v2

    :cond_25
    const/4 v8, 0x0

    cmpg-float v8, v6, v8

    if-gez v8, :cond_26

    const/4 v2, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_26
    if-eqz v2, :cond_2b

    sub-float/2addr v6, v7

    move-object/from16 v2, v20

    .line 573
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->f(I)F

    move-result v5

    mul-float v6, v6, v5

    add-float/2addr v3, v6

    :goto_11
    if-eqz v2, :cond_2c

    .line 575
    sget-object v5, Lo/Scene;->g:Lo/URLSpan;

    if-eqz v5, :cond_27

    .line 576
    sget-object v5, Lo/Scene;->g:Lo/URLSpan;

    iget-wide v6, v5, Lo/URLSpan;->z:J

    sub-long v6, v6, v21

    iput-wide v6, v5, Lo/URLSpan;->z:J

    .line 577
    sget-object v5, Lo/Scene;->g:Lo/URLSpan;

    iget-wide v6, v5, Lo/URLSpan;->t:J

    add-long v6, v6, v21

    iput-wide v6, v5, Lo/URLSpan;->t:J

    .line 578
    sget-object v5, Lo/Scene;->g:Lo/URLSpan;

    iget-wide v6, v5, Lo/URLSpan;->u:J

    add-long v6, v6, v21

    iput-wide v6, v5, Lo/URLSpan;->u:J

    .line 580
    :cond_27
    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->af:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v1

    if-nez v5, :cond_28

    if-ne v2, v4, :cond_2a

    :cond_28
    if-nez v1, :cond_29

    .line 584
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v6

    goto :goto_12

    .line 586
    :cond_29
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s()I

    move-result v6

    :goto_12
    int-to-float v6, v6

    .line 588
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    .line 589
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v7

    iget-object v8, v9, Lo/InputEvent;->e:Lo/InputEvent;

    invoke-virtual {v7, v8, v3}, Lo/InputEvent;->a(Lo/InputEvent;F)V

    .line 591
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, v19

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v7

    iget-object v8, v9, Lo/InputEvent;->e:Lo/InputEvent;

    add-float/2addr v3, v6

    invoke-virtual {v7, v8, v3}, Lo/InputEvent;->a(Lo/InputEvent;F)V

    .line 593
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v6

    invoke-virtual {v6, v0}, Lo/InputEvent;->d(Lo/Scene;)V

    .line 594
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v19

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v6

    invoke-virtual {v6, v0}, Lo/InputEvent;->d(Lo/Scene;)V

    .line 596
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v19

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    :cond_2a
    move-object v2, v5

    goto :goto_11

    :cond_2b
    move-object/from16 v2, v20

    if-nez v11, :cond_2d

    if-eqz v12, :cond_2c

    goto :goto_13

    :cond_2c
    const/4 v0, 0x1

    goto/16 :goto_1c

    :cond_2d
    :goto_13
    if-eqz v11, :cond_2e

    :goto_14
    sub-float/2addr v6, v7

    goto :goto_15

    :cond_2e
    if-eqz v12, :cond_2f

    goto :goto_14

    :cond_2f
    :goto_15
    add-int/lit8 v7, v15, 0x1

    int-to-float v7, v7

    div-float v7, v6, v7

    if-eqz v12, :cond_31

    const/4 v8, 0x1

    if-le v15, v8, :cond_30

    add-int/lit8 v7, v15, -0x1

    int-to-float v7, v7

    goto :goto_16

    :cond_30
    const/high16 v7, 0x40000000    # 2.0f

    :goto_16
    div-float v7, v6, v7

    .line 616
    :cond_31
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()I

    move-result v6

    const/16 v8, 0x8

    if-eq v6, v8, :cond_32

    add-float v6, v3, v7

    goto :goto_17

    :cond_32
    move v6, v3

    :goto_17
    if-eqz v12, :cond_33

    const/4 v8, 0x1

    if-le v15, v8, :cond_33

    .line 620
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v3

    :cond_33
    if-eqz v11, :cond_34

    if-eqz v5, :cond_34

    .line 624
    iget-object v3, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v6, v3

    :cond_34
    :goto_18
    if-eqz v2, :cond_2c

    .line 628
    sget-object v3, Lo/Scene;->g:Lo/URLSpan;

    if-eqz v3, :cond_35

    .line 629
    sget-object v3, Lo/Scene;->g:Lo/URLSpan;

    iget-wide v10, v3, Lo/URLSpan;->z:J

    sub-long v10, v10, v21

    iput-wide v10, v3, Lo/URLSpan;->z:J

    .line 630
    sget-object v3, Lo/Scene;->g:Lo/URLSpan;

    iget-wide v10, v3, Lo/URLSpan;->t:J

    add-long v10, v10, v21

    iput-wide v10, v3, Lo/URLSpan;->t:J

    .line 631
    sget-object v3, Lo/Scene;->g:Lo/URLSpan;

    iget-wide v10, v3, Lo/URLSpan;->u:J

    add-long v10, v10, v21

    iput-wide v10, v3, Lo/URLSpan;->u:J

    .line 633
    :cond_35
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->af:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v3, v3, v1

    if-nez v3, :cond_37

    if-ne v2, v4, :cond_36

    goto :goto_19

    :cond_36
    const/16 v8, 0x8

    goto :goto_1b

    :cond_37
    :goto_19
    if-nez v1, :cond_38

    .line 637
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->t()I

    move-result v8

    goto :goto_1a

    .line 639
    :cond_38
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->s()I

    move-result v8

    :goto_1a
    int-to-float v8, v8

    if-eq v2, v5, :cond_39

    .line 642
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v6, v10

    .line 644
    :cond_39
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v10

    iget-object v11, v9, Lo/InputEvent;->e:Lo/InputEvent;

    invoke-virtual {v10, v11, v6}, Lo/InputEvent;->a(Lo/InputEvent;F)V

    .line 646
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v19

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v10

    iget-object v11, v9, Lo/InputEvent;->e:Lo/InputEvent;

    add-float v12, v6, v8

    invoke-virtual {v10, v11, v12}, Lo/InputEvent;->a(Lo/InputEvent;F)V

    .line 648
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v10

    invoke-virtual {v10, v0}, Lo/InputEvent;->d(Lo/Scene;)V

    .line 649
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, v19

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->c()Lo/InputEvent;

    move-result-object v10

    invoke-virtual {v10, v0}, Lo/InputEvent;->d(Lo/Scene;)V

    .line 650
    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v19

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->a()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v8, v2

    add-float/2addr v6, v8

    if-eqz v3, :cond_36

    .line 651
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->m()I

    move-result v2

    const/16 v8, 0x8

    if-eq v2, v8, :cond_3a

    add-float/2addr v6, v7

    :cond_3a
    :goto_1b
    move-object v2, v3

    goto/16 :goto_18

    :goto_1c
    return v0

    :cond_3b
    :goto_1d
    const/4 v0, 0x0

    return v0

    :cond_3c
    :goto_1e
    const/4 v0, 0x0

    return v0
.end method
