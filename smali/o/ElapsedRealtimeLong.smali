.class public Lo/ElapsedRealtimeLong;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

.field private static e:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "a"

    const-string v1, "p"

    const-string v2, "s"

    const-string v3, "rz"

    const-string v4, "r"

    const-string v5, "o"

    const-string v6, "so"

    const-string v7, "eo"

    const-string v8, "sk"

    const-string v9, "sa"

    .line 24
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;->c([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    move-result-object v0

    sput-object v0, Lo/ElapsedRealtimeLong;->e:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    const-string v0, "k"

    .line 36
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;->c([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    move-result-object v0

    sput-object v0, Lo/ElapsedRealtimeLong;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    return-void
.end method

.method private static a(Lo/AnimRes;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AnimRes<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 147
    instance-of v1, p0, Lo/TimeInterpolator;

    if-nez v1, :cond_1

    .line 149
    invoke-interface {p0}, Lo/AnimRes;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lo/AnimRes;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/ActivityView;

    iget-object p0, p0, Lo/ActivityView;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/graphics/PointF;->equals(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/TypeConverter;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->i()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->c:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/4 v9, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_1

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->c()V

    :cond_1
    const/4 v1, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 54
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 55
    sget-object v2, Lo/ElapsedRealtimeLong;->e:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->f()V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    :goto_2
    const/4 v9, 0x0

    goto :goto_1

    .line 110
    :pswitch_0
    invoke-static {v0, v8, v9}, Lo/DurationMillisLong;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;Z)Lo/LayoutTransition;

    move-result-object v16

    goto :goto_1

    .line 107
    :pswitch_1
    invoke-static {v0, v8, v9}, Lo/DurationMillisLong;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;Z)Lo/LayoutTransition;

    move-result-object v15

    goto :goto_1

    .line 104
    :pswitch_2
    invoke-static {v0, v8, v9}, Lo/DurationMillisLong;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;Z)Lo/LayoutTransition;

    move-result-object v24

    goto :goto_1

    .line 101
    :pswitch_3
    invoke-static {v0, v8, v9}, Lo/DurationMillisLong;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;Z)Lo/LayoutTransition;

    move-result-object v23

    goto :goto_1

    .line 98
    :pswitch_4
    invoke-static/range {p0 .. p1}, Lo/DurationMillisLong;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/PathKeyframes;

    move-result-object v22

    goto :goto_1

    :pswitch_5
    const-string v1, "Lottie doesn\'t support 3D layers."

    .line 78
    invoke-virtual {v8, v1}, Lo/DESedeKeySpec;->a(Ljava/lang/String;)V

    .line 90
    :pswitch_6
    invoke-static {v0, v8, v9}, Lo/DurationMillisLong;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;Z)Lo/LayoutTransition;

    move-result-object v17

    .line 91
    invoke-virtual/range {v17 .. v17}, Lo/LayoutTransition;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 92
    invoke-virtual/range {v17 .. v17}, Lo/LayoutTransition;->e()Ljava/util/List;

    move-result-object v7

    new-instance v6, Lo/ActivityView;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Lo/DESedeKeySpec;->g()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v11, v6

    move/from16 v6, v18

    move-object v9, v7

    move-object/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lo/ActivityView;-><init>(Lo/DESedeKeySpec;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 93
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lo/LayoutTransition;->e()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ActivityView;

    iget-object v1, v1, Lo/ActivityView;->d:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 94
    invoke-virtual/range {v17 .. v17}, Lo/LayoutTransition;->e()Ljava/util/List;

    move-result-object v9

    new-instance v11, Lo/ActivityView;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lo/DESedeKeySpec;->g()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v1, v11

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lo/ActivityView;-><init>(Lo/DESedeKeySpec;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    const/4 v2, 0x0

    invoke-interface {v9, v2, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v1, v17

    goto/16 :goto_2

    :pswitch_7
    const/4 v2, 0x0

    .line 75
    invoke-static/range {p0 .. p1}, Lo/DurationMillisLong;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/PropertyValuesHolder;

    move-result-object v14

    goto/16 :goto_2

    :pswitch_8
    const/4 v2, 0x0

    .line 72
    invoke-static/range {p0 .. p1}, Lo/Condemned;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/AnimRes;

    move-result-object v13

    goto/16 :goto_2

    :pswitch_9
    const/4 v2, 0x0

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->c()V

    .line 58
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 59
    sget-object v3, Lo/ElapsedRealtimeLong;->d:Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader$Application;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->f()V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    goto :goto_5

    .line 61
    :cond_4
    invoke-static/range {p0 .. p1}, Lo/Condemned;->d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lo/DESedeKeySpec;)Lo/ObjectAnimator;

    move-result-object v12

    goto :goto_5

    .line 68
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b()V

    goto/16 :goto_2

    :cond_6
    if-eqz v10, :cond_7

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b()V

    .line 121
    :cond_7
    invoke-static {v12}, Lo/ElapsedRealtimeLong;->d(Lo/ObjectAnimator;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v18, 0x0

    goto :goto_6

    :cond_8
    move-object/from16 v18, v12

    .line 124
    :goto_6
    invoke-static {v13}, Lo/ElapsedRealtimeLong;->a(Lo/AnimRes;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v19, 0x0

    goto :goto_7

    :cond_9
    move-object/from16 v19, v13

    .line 127
    :goto_7
    invoke-static {v1}, Lo/ElapsedRealtimeLong;->d(Lo/LayoutTransition;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v21, 0x0

    goto :goto_8

    :cond_a
    move-object/from16 v21, v1

    .line 130
    :goto_8
    invoke-static {v14}, Lo/ElapsedRealtimeLong;->b(Lo/PropertyValuesHolder;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v14, 0x0

    .line 133
    :cond_b
    invoke-static {v15}, Lo/ElapsedRealtimeLong;->c(Lo/LayoutTransition;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v25, 0x0

    goto :goto_9

    :cond_c
    move-object/from16 v25, v15

    .line 136
    :goto_9
    invoke-static/range {v16 .. v16}, Lo/ElapsedRealtimeLong;->e(Lo/LayoutTransition;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v26, 0x0

    goto :goto_a

    :cond_d
    move-object/from16 v26, v16

    .line 139
    :goto_a
    new-instance v0, Lo/TypeConverter;

    move-object/from16 v17, v0

    move-object/from16 v20, v14

    invoke-direct/range {v17 .. v26}, Lo/TypeConverter;-><init>(Lo/ObjectAnimator;Lo/AnimRes;Lo/PropertyValuesHolder;Lo/LayoutTransition;Lo/PathKeyframes;Lo/LayoutTransition;Lo/LayoutTransition;Lo/LayoutTransition;Lo/LayoutTransition;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lo/PropertyValuesHolder;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 157
    invoke-virtual {p0}, Lo/PropertyValuesHolder;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lo/PropertyValuesHolder;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/ActivityView;

    iget-object p0, p0, Lo/ActivityView;->d:Ljava/lang/Object;

    check-cast p0, Lo/ActivityTransitionCoordinator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v1}, Lo/ActivityTransitionCoordinator;->c(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static c(Lo/LayoutTransition;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0}, Lo/LayoutTransition;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lo/LayoutTransition;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/ActivityView;

    iget-object p0, p0, Lo/ActivityView;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static d(Lo/LayoutTransition;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 153
    invoke-virtual {p0}, Lo/LayoutTransition;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lo/LayoutTransition;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/ActivityView;

    iget-object p0, p0, Lo/ActivityView;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static d(Lo/ObjectAnimator;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Lo/ObjectAnimator;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lo/ObjectAnimator;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/ActivityView;

    iget-object p0, p0, Lo/ActivityView;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/graphics/PointF;->equals(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static e(Lo/LayoutTransition;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 165
    invoke-virtual {p0}, Lo/LayoutTransition;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lo/LayoutTransition;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/ActivityView;

    iget-object p0, p0, Lo/ActivityView;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
