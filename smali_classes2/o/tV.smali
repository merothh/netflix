.class public Lo/tV;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;JI)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/tF;",
            ">;JI)I"
        }
    .end annotation

    if-gez p3, :cond_0

    const/4 p3, 0x0

    .line 121
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 123
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/tF;

    invoke-virtual {v1}, Lo/tF;->f()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    return v0

    .line 126
    :cond_1
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/tF;

    invoke-virtual {v1}, Lo/tF;->c()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_2

    return p3

    :cond_2
    :goto_0
    if-gt p3, v0, :cond_5

    add-int v1, p3, v0

    ushr-int/lit8 v1, v1, 0x1

    .line 131
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/tF;

    .line 132
    invoke-virtual {v2}, Lo/tF;->c()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-lez v5, :cond_3

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    goto :goto_0

    .line 134
    :cond_3
    invoke-virtual {v2}, Lo/tF;->f()J

    move-result-wide v2

    cmp-long p3, v2, p1

    if-gez p3, :cond_4

    add-int/lit8 v1, v1, 0x1

    move p3, v1

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    add-int/lit8 p3, p3, 0x1

    neg-int p0, p3

    return p0
.end method

.method public static c(Ljava/util/List;JJ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/tF;",
            ">;JJ)",
            "Ljava/util/List<",
            "Lo/tF;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    cmp-long v3, p3, v0

    if-nez v3, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    move-wide p1, v3

    :cond_1
    cmp-long v2, p3, v0

    if-eqz v2, :cond_3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p3, v0

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    add-long v0, p1, p3

    goto :goto_1

    :cond_3
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_1
    const/4 v2, -0x1

    .line 26
    invoke-static {p0, p1, p2, v2}, Lo/tV;->d(Ljava/util/List;JI)I

    move-result v2

    cmp-long v5, p3, v3

    if-nez v5, :cond_4

    move p3, v2

    goto :goto_2

    .line 33
    :cond_4
    invoke-static {p0, v0, v1, v2}, Lo/tV;->d(Ljava/util/List;JI)I

    move-result p3

    :goto_2
    const/4 p4, 0x1

    if-ltz v2, :cond_6

    if-gez p3, :cond_5

    goto :goto_3

    :cond_5
    add-int/2addr p3, p4

    .line 39
    invoke-interface {p0, v2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_3
    new-array p0, p4, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 36
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, p3

    const-string p1, "nf_cache"

    const-string p2, "unable to find chunk for startPtsUs = %s"

    invoke-static {p1, p2, p0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/util/List;JI)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/tF;",
            ">;JI)I"
        }
    .end annotation

    if-gez p3, :cond_0

    const/4 p3, 0x0

    .line 85
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 87
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/tF;

    invoke-virtual {v1}, Lo/tF;->h()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    return v0

    .line 90
    :cond_1
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/tF;

    invoke-virtual {v1}, Lo/tF;->h()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_2

    return p3

    :cond_2
    :goto_0
    if-gt p3, v0, :cond_5

    add-int v1, p3, v0

    ushr-int/lit8 v1, v1, 0x1

    .line 95
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/tF;

    .line 96
    invoke-virtual {v2}, Lo/tF;->e()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-lez v5, :cond_3

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v2}, Lo/tF;->h()J

    move-result-wide v2

    cmp-long p3, v2, p1

    if-gez p3, :cond_4

    add-int/lit8 v1, v1, 0x1

    move p3, v1

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    add-int/lit8 p3, p3, 0x1

    neg-int p0, p3

    return p0
.end method

.method public static e(Ljava/util/List;JJ)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/tF;",
            ">;JJ)",
            "Ljava/util/List<",
            "Lo/tF;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    cmp-long v4, p3, v1

    if-nez v4, :cond_0

    return-object v0

    :cond_0
    if-nez v3, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    move-wide/from16 v1, p1

    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p3, v3

    if-nez v5, :cond_2

    const-wide v3, 0x7fffffffffffffffL

    goto :goto_1

    :cond_2
    move-wide/from16 v3, p3

    :goto_1
    const/4 v5, -0x1

    .line 50
    invoke-static {v0, v1, v2, v5}, Lo/tV;->a(Ljava/util/List;JI)I

    move-result v5

    .line 51
    invoke-static {v0, v3, v4, v5}, Lo/tV;->a(Ljava/util/List;JI)I

    move-result v6

    const/4 v7, 0x0

    const-string v8, "nf_cache"

    const/4 v9, 0x1

    if-ltz v5, :cond_8

    if-gez v6, :cond_3

    goto/16 :goto_3

    .line 56
    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/tF;

    invoke-virtual {v10}, Lo/tF;->c()J

    move-result-wide v10

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x4

    const-string v15, "incomplete chunk -- chunk=[%s, %s] , cached=[%s,%s]"

    cmp-long v16, v10, v1

    if-lez v16, :cond_4

    new-array v10, v14, [Ljava/lang/Object;

    .line 57
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/tF;

    invoke-virtual {v11}, Lo/tF;->c()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/tF;

    invoke-virtual {v11}, Lo/tF;->f()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v8, v15, v10}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    add-int/lit8 v5, v5, 0x1

    .line 60
    :cond_4
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/tF;

    invoke-virtual {v10}, Lo/tF;->f()J

    move-result-wide v10

    cmp-long v16, v10, v3

    if-lez v16, :cond_5

    new-array v10, v14, [Ljava/lang/Object;

    .line 61
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/tF;

    invoke-virtual {v11}, Lo/tF;->c()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/tF;

    invoke-virtual {v11}, Lo/tF;->f()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v10, v12

    invoke-static {v8, v15, v10}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    add-int/lit8 v6, v6, -0x1

    .line 64
    :cond_5
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_7

    if-gt v5, v6, :cond_7

    if-gez v6, :cond_6

    goto :goto_2

    :cond_6
    add-int/2addr v6, v9

    .line 68
    invoke-interface {v0, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_2
    new-array v0, v9, [Ljava/lang/Object;

    .line 65
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "incomplete chunk -- empty list"

    invoke-static {v8, v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_8
    :goto_3
    new-array v0, v9, [Ljava/lang/Object;

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "unable to find chunk for startByte = %s"

    invoke-static {v8, v1, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
