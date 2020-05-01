.class public final Lo/Vi;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Lo/Vi;

.field private static final d:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lo/Vi;

    invoke-direct {v0}, Lo/Vi;-><init>()V

    sput-object v0, Lo/Vi;->b:Lo/Vi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;Ljava/lang/String;FJLcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;)Landroid/view/animation/Animation;
    .locals 17

    move-object/from16 v0, p3

    const-string v1, "interactiveAnimation"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {v0, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->fromValue()Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p7, :cond_1

    invoke-virtual/range {p7 .. p7}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->toValue()Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 22
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->toValue()Ljava/lang/Float;

    move-result-object v4

    .line 23
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_f

    :sswitch_0
    const-string v5, "scale.x"

    .line 48
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_2

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    if-eqz v1, :cond_4

    if-eqz p7, :cond_3

    .line 51
    invoke-virtual/range {p7 .. p7}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->toValue()Ljava/lang/Float;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v3

    :goto_2
    invoke-static {v1, v5}, Lo/amh;->c(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v5

    xor-int/2addr v5, v7

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v0

    if-lez v5, :cond_5

    .line 52
    :cond_4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_5
    if-nez v4, :cond_6

    .line 55
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 57
    :cond_6
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    check-cast v0, Landroid/view/animation/Animation;

    goto/16 :goto_b

    :sswitch_1
    const-string v5, "position.y"

    .line 73
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_3

    :sswitch_2
    const-string v5, "position.x"

    .line 98
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_5

    :sswitch_3
    const-string v5, "scale"

    .line 33
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_8

    :sswitch_4
    const-string v5, "alpha"

    .line 24
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_7

    :sswitch_5
    const-string v5, "y"

    .line 73
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 74
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->delta()Ljava/lang/Float;

    move-result-object v0

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->fromOrigin()Z

    move-result v5

    if-nez v0, :cond_b

    if-eqz p1, :cond_a

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez v1, :cond_7

    int-to-float v1, v0

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_7
    if-nez v4, :cond_8

    int-to-float v4, v0

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 85
    :cond_8
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v1, v1, p4

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v4, v4, p4

    sub-float/2addr v4, v0

    invoke-direct {v5, v9, v9, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_4

    .line 78
    :cond_9
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object v5, v3

    goto :goto_4

    :cond_b
    if-eqz v5, :cond_c

    .line 92
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v0, v0, p4

    invoke-direct {v5, v9, v9, v9, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_4

    .line 94
    :cond_c
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v0, v0, p4

    invoke-direct {v5, v9, v9, v0, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 76
    :goto_4
    check-cast v5, Landroid/view/animation/Animation;

    move-object v0, v5

    goto/16 :goto_b

    :sswitch_6
    const-string v5, "x"

    .line 98
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 99
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->delta()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 101
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->fromOrigin()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 102
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {v1, v0, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_6

    .line 104
    :cond_d
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {v1, v9, v0, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_6

    :cond_e
    if-eqz p1, :cond_12

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_11

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v1, :cond_f

    int-to-float v1, v0

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_f
    if-nez v4, :cond_10

    int-to-float v4, v0

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 115
    :cond_10
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v1, v1, p4

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v4, v4, p4

    sub-float/2addr v4, v0

    invoke-direct {v5, v1, v4, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v1, v5

    goto :goto_6

    .line 108
    :cond_11
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object v1, v3

    .line 100
    :goto_6
    check-cast v1, Landroid/view/animation/Animation;

    move-object v0, v1

    goto/16 :goto_b

    :sswitch_7
    const-string v5, "opacity"

    .line 24
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :goto_7
    if-nez v1, :cond_14

    if-eqz p1, :cond_13

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v9

    :cond_13
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_14
    if-nez v4, :cond_15

    .line 29
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 31
    :cond_15
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    check-cast v0, Landroid/view/animation/Animation;

    goto/16 :goto_b

    :sswitch_8
    const-string v5, "transform.scale"

    .line 33
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :goto_8
    if-eqz p1, :cond_16

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    goto :goto_9

    :cond_16
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_9
    if-eqz v1, :cond_18

    if-eqz p7, :cond_17

    .line 35
    invoke-virtual/range {p7 .. p7}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->toValue()Ljava/lang/Float;

    move-result-object v5

    goto :goto_a

    :cond_17
    move-object v5, v3

    :goto_a
    invoke-static {v1, v5}, Lo/amh;->c(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v5

    xor-int/2addr v5, v7

    if-eqz v5, :cond_19

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v0

    if-lez v5, :cond_19

    .line 36
    :cond_18
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_19
    if-nez v4, :cond_1a

    .line 39
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 41
    :cond_1a
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 42
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    move-object v8, v0

    .line 41
    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    check-cast v0, Landroid/view/animation/Animation;

    goto :goto_b

    :sswitch_9
    const-string v5, "translation"

    .line 64
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    if-nez v1, :cond_1b

    .line 66
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_1b
    if-nez v4, :cond_1c

    .line 69
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 71
    :cond_1c
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float v5, v5, p4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float v6, v6, p4

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v1, v1, p4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v4, v4, p4

    invoke-direct {v0, v5, v6, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    check-cast v0, Landroid/view/animation/Animation;

    :goto_b
    if-eqz v0, :cond_20

    .line 126
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->ease()Lcom/netflix/model/leafs/originals/interactive/animations/Ease;

    move-result-object v1

    if-eqz v1, :cond_1d

    const-string v3, "it"

    .line 127
    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/animations/Ease;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 129
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->duration()J

    move-result-wide v3

    sget-boolean v1, Lo/Vi;->d:Z

    const-wide/16 v5, 0x5

    const-wide/16 v8, 0x1

    if-eqz v1, :cond_1e

    move-wide v10, v5

    goto :goto_c

    :cond_1e
    sub-long v10, v8, p5

    :goto_c
    mul-long v3, v3, v10

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;->delay()J

    move-result-wide v1

    sget-boolean v3, Lo/Vi;->d:Z

    if-eqz v3, :cond_1f

    goto :goto_d

    :cond_1f
    sub-long v5, v8, p5

    :goto_d
    mul-long v1, v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 131
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_e

    :cond_20
    move-object v0, v3

    :goto_e
    return-object v0

    .line 122
    :cond_21
    :goto_f
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "unable to define animation"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6db60d4f -> :sswitch_9
        -0x66dadfb8 -> :sswitch_8
        -0x4b8807f5 -> :sswitch_7
        0x78 -> :sswitch_6
        0x79 -> :sswitch_5
        0x589b15e -> :sswitch_4
        0x683094a -> :sswitch_3
        0x5250f8f3 -> :sswitch_2
        0x5250f8f4 -> :sswitch_1
        0x71e5e4d4 -> :sswitch_0
    .end sparse-switch
.end method
