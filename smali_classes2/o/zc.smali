.class public abstract Lo/zc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/zc$Activity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lo/zc;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Lo/yS$Application;

    invoke-direct {v0, p0}, Lo/yS$Application;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method static y()Lo/zc$Activity;
    .locals 1

    .line 73
    new-instance v0, Lo/yT$ActionBar;

    invoke-direct {v0}, Lo/yT$ActionBar;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public b(FFJJJJJJFFFFF)Lo/zc;
    .locals 22

    move-wide/from16 v0, p3

    move-wide/from16 v2, p5

    move/from16 v4, p17

    move/from16 v5, p18

    move/from16 v6, p19

    .line 113
    invoke-virtual/range {p0 .. p0}, Lo/zc;->g()J

    move-result-wide v7

    .line 114
    invoke-virtual/range {p0 .. p0}, Lo/zc;->f()J

    move-result-wide v9

    .line 116
    invoke-static {}, Lo/zc;->y()Lo/zc$Activity;

    move-result-object v11

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    const-wide v16, 0x3f747ae147ae147bL    # 0.005

    const/high16 v18, 0x42c80000    # 100.0f

    cmp-long v19, v2, v12

    if-lez v19, :cond_0

    .line 119
    invoke-virtual/range {p0 .. p0}, Lo/zc;->c()F

    move-result v19

    long-to-float v12, v9

    mul-float v19, v19, v12

    sub-long v9, v2, v9

    long-to-float v9, v9

    mul-float v10, v9, p1

    add-float v19, v19, v10

    long-to-float v10, v2

    div-float v19, v19, v10

    .line 120
    invoke-virtual/range {p0 .. p0}, Lo/zc;->o()F

    move-result v13

    mul-float v13, v13, v12

    mul-float v20, v9, p16

    add-float v13, v13, v20

    div-float/2addr v13, v10

    .line 121
    invoke-virtual/range {p0 .. p0}, Lo/zc;->s()F

    move-result v20

    mul-float v20, v20, v12

    mul-float v21, v9, v4

    add-float v20, v20, v21

    div-float v20, v20, v10

    .line 122
    invoke-virtual/range {p0 .. p0}, Lo/zc;->r()F

    move-result v21

    mul-float v21, v21, v12

    mul-float v9, v9, v6

    add-float v21, v21, v9

    div-float v21, v21, v10

    mul-float v9, v19, v18

    float-to-double v9, v9

    add-double v9, v9, v16

    .line 124
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-double v9, v9

    div-double/2addr v9, v14

    double-to-float v9, v9

    invoke-virtual {v11, v9}, Lo/zc$Activity;->a(F)Lo/zc$Activity;

    move-result-object v9

    mul-float v13, v13, v18

    float-to-double v12, v13

    add-double v12, v12, v16

    .line 125
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    div-double/2addr v12, v14

    double-to-float v10, v12

    invoke-virtual {v9, v10}, Lo/zc$Activity;->e(F)Lo/zc$Activity;

    move-result-object v9

    mul-float v10, v20, v18

    float-to-double v12, v10

    add-double v12, v12, v16

    .line 126
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    div-double/2addr v12, v14

    double-to-float v10, v12

    invoke-virtual {v9, v10}, Lo/zc$Activity;->h(F)Lo/zc$Activity;

    move-result-object v9

    mul-float v10, v21, v18

    float-to-double v12, v10

    add-double v12, v12, v16

    .line 127
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    div-double/2addr v12, v14

    double-to-float v10, v12

    invoke-virtual {v9, v10}, Lo/zc$Activity;->k(F)Lo/zc$Activity;

    const-wide/16 v9, 0x0

    goto :goto_0

    :cond_0
    move-wide v9, v12

    :goto_0
    cmp-long v12, v0, v9

    if-lez v12, :cond_1

    .line 131
    invoke-virtual/range {p0 .. p0}, Lo/zc;->d()F

    move-result v9

    long-to-float v10, v7

    mul-float v9, v9, v10

    sub-long v7, v0, v7

    long-to-float v7, v7

    mul-float v8, v7, p2

    add-float/2addr v9, v8

    long-to-float v8, v0

    div-float/2addr v9, v8

    .line 132
    invoke-virtual/range {p0 .. p0}, Lo/zc;->j()F

    move-result v12

    mul-float v12, v12, v10

    mul-float v13, v7, p15

    add-float/2addr v12, v13

    div-float/2addr v12, v8

    .line 133
    invoke-virtual/range {p0 .. p0}, Lo/zc;->k()F

    move-result v13

    mul-float v13, v13, v10

    mul-float v7, v7, v5

    add-float/2addr v13, v7

    div-float/2addr v13, v8

    mul-float v9, v9, v18

    float-to-double v7, v9

    add-double v7, v7, v16

    .line 135
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v7, v14

    double-to-float v7, v7

    invoke-virtual {v11, v7}, Lo/zc$Activity;->c(F)Lo/zc$Activity;

    move-result-object v7

    mul-float v13, v13, v18

    float-to-double v8, v13

    add-double v8, v8, v16

    .line 136
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v8, v14

    double-to-float v8, v8

    invoke-virtual {v7, v8}, Lo/zc$Activity;->d(F)Lo/zc$Activity;

    move-result-object v7

    mul-float v12, v12, v18

    float-to-double v8, v12

    add-double v8, v8, v16

    .line 137
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v8, v14

    double-to-float v8, v8

    invoke-virtual {v7, v8}, Lo/zc$Activity;->b(F)Lo/zc$Activity;

    .line 140
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lo/zc;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Lo/zc$Activity;->b(Ljava/lang/String;)Lo/zc$Activity;

    move-result-object v7

    .line 141
    invoke-virtual/range {p0 .. p0}, Lo/zc;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lo/zc$Activity;->c(Ljava/lang/String;)Lo/zc$Activity;

    move-result-object v7

    .line 142
    invoke-virtual/range {p0 .. p0}, Lo/zc;->e()I

    move-result v8

    invoke-virtual {v7, v8}, Lo/zc$Activity;->e(I)Lo/zc$Activity;

    move-result-object v7

    .line 143
    invoke-virtual {v7, v0, v1}, Lo/zc$Activity;->d(J)Lo/zc$Activity;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v2, v3}, Lo/zc$Activity;->c(J)Lo/zc$Activity;

    move-result-object v0

    move-wide/from16 v1, p7

    .line 145
    invoke-virtual {v0, v1, v2}, Lo/zc$Activity;->a(J)Lo/zc$Activity;

    move-result-object v0

    move-wide/from16 v1, p9

    .line 146
    invoke-virtual {v0, v1, v2}, Lo/zc$Activity;->e(J)Lo/zc$Activity;

    move-result-object v0

    move-wide/from16 v1, p11

    .line 147
    invoke-virtual {v0, v1, v2}, Lo/zc$Activity;->b(J)Lo/zc$Activity;

    move-result-object v0

    move-wide/from16 v1, p13

    .line 148
    invoke-virtual {v0, v1, v2}, Lo/zc$Activity;->h(J)Lo/zc$Activity;

    move-result-object v0

    .line 149
    invoke-virtual/range {p0 .. p0}, Lo/zc;->t()F

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lo/zc$Activity;->j(F)Lo/zc$Activity;

    move-result-object v0

    .line 150
    invoke-virtual/range {p0 .. p0}, Lo/zc;->p()F

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lo/zc$Activity;->g(F)Lo/zc$Activity;

    move-result-object v0

    .line 151
    invoke-virtual/range {p0 .. p0}, Lo/zc;->n()F

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lo/zc$Activity;->i(F)Lo/zc$Activity;

    move-result-object v0

    .line 152
    invoke-virtual/range {p0 .. p0}, Lo/zc;->q()F

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lo/zc$Activity;->f(F)Lo/zc$Activity;

    move-result-object v0

    .line 153
    invoke-virtual/range {p0 .. p0}, Lo/zc;->u()F

    move-result v1

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lo/zc$Activity;->n(F)Lo/zc$Activity;

    move-result-object v0

    .line 154
    invoke-virtual/range {p0 .. p0}, Lo/zc;->v()F

    move-result v1

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lo/zc$Activity;->m(F)Lo/zc$Activity;

    .line 156
    invoke-virtual {v11}, Lo/zc$Activity;->b()Lo/zc;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()F
.end method

.method public abstract d()F
.end method

.method public abstract e()I
.end method

.method public abstract f()J
.end method

.method public abstract g()J
.end method

.method public abstract h()J
.end method

.method public abstract i()J
.end method

.method public abstract j()F
.end method

.method public abstract k()F
.end method

.method public abstract l()J
.end method

.method public abstract m()J
.end method

.method public abstract n()F
.end method

.method public abstract o()F
.end method

.method public abstract p()F
.end method

.method public abstract q()F
.end method

.method public abstract r()F
.end method

.method public abstract s()F
.end method

.method public abstract t()F
.end method

.method public abstract u()F
.end method

.method public abstract v()F
.end method

.method public x()Ljava/lang/String;
    .locals 2

    .line 81
    invoke-static {}, Lo/adI;->b()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lo/zc;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
