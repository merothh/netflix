.class public Lo/ss;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lo/sL;J)Lo/Bj;
    .locals 12

    .line 76
    invoke-virtual {p0}, Lo/sL;->h()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lo/ss;->b(Ljava/util/Map;)[Lo/Bo;

    move-result-object v7

    .line 77
    new-instance v0, Lo/Bj;

    invoke-virtual {p0}, Lo/sL;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lo/sL;->a()J

    move-result-wide v3

    invoke-virtual {p0}, Lo/sL;->a()J

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmp-long v1, v5, v8

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-long v5, v1

    add-long/2addr v3, v5

    .line 78
    invoke-virtual {p0}, Lo/sL;->b()J

    move-result-wide v5

    const-wide/16 v8, -0x1

    cmp-long v1, v5, v8

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lo/sL;->b()J

    move-result-wide p1

    :goto_1
    move-wide v5, p1

    .line 79
    invoke-virtual {p0}, Lo/sL;->d()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0}, Lo/sL;->f()J

    move-result-wide v9

    invoke-virtual {p0}, Lo/sL;->i()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    move-result-object v11

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lo/Bj;-><init>(Ljava/lang/String;JJ[Lo/Bo;Ljava/util/List;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;)V

    return-object v0
.end method

.method private static b(Ljava/util/Map;)[Lo/Bo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/sy;",
            ">;)[",
            "Lo/Bo;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 86
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/sy;

    .line 87
    invoke-virtual {v1}, Lo/sy;->a()I

    move-result v5

    .line 88
    invoke-virtual {v1}, Lo/sy;->b()J

    move-result-wide v6

    .line 89
    invoke-virtual {v1}, Lo/sy;->e()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    move-result-object v8

    .line 90
    new-instance v1, Lo/Bo;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lo/Bo;-><init>(Ljava/lang/String;IJLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lo/Bo;

    .line 92
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lo/Bo;

    return-object p0
.end method

.method private static c(Lo/sL;J)Lo/Bj;
    .locals 13

    .line 65
    invoke-virtual {p0}, Lo/sL;->h()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lo/ss;->b(Ljava/util/Map;)[Lo/Bo;

    move-result-object v7

    .line 66
    invoke-virtual {p0}, Lo/sL;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 67
    array-length v3, v7

    if-ne v3, v2, :cond_0

    .line 68
    aget-object v0, v7, v1

    iget-object v0, v0, Lo/Bo;->a:Ljava/lang/String;

    .line 70
    :cond_0
    new-instance v12, Lo/Bj;

    invoke-virtual {p0}, Lo/sL;->a()J

    move-result-wide v3

    invoke-virtual {p0}, Lo/sL;->a()J

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-lez v10, :cond_1

    const/4 v1, 0x1

    :cond_1
    int-to-long v1, v1

    add-long/2addr v3, v1

    .line 71
    invoke-virtual {p0}, Lo/sL;->b()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    cmp-long v8, v1, v5

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lo/sL;->b()J

    move-result-wide p1

    :goto_0
    move-wide v5, p1

    .line 72
    invoke-virtual {p0}, Lo/sL;->d()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0}, Lo/sL;->f()J

    move-result-wide v9

    invoke-virtual {p0}, Lo/sL;->i()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    move-result-object v11

    move-object v1, v12

    move-object v2, v0

    invoke-direct/range {v1 .. v11}, Lo/Bj;-><init>(Ljava/lang/String;JJ[Lo/Bo;Ljava/util/List;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;)V

    return-object v12
.end method

.method public static d(Lo/so;J)Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;
    .locals 8

    .line 37
    invoke-virtual {p0}, Lo/so;->c()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {p0}, Lo/so;->a()J

    move-result-wide v4

    .line 40
    invoke-virtual {p0}, Lo/so;->e()Ljava/util/Map;

    move-result-object p0

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 42
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-wide/32 v6, 0x4c6c5a1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/sL;

    invoke-static {v3, p1, p2}, Lo/ss;->c(Lo/sL;J)Lo/Bj;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-wide/32 v6, 0x4d7a4bb

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/sL;

    invoke-static {v3, p1, p2}, Lo/ss;->e(Lo/sL;J)Lo/Bj;

    move-result-object v3

    goto :goto_1

    .line 49
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/sL;

    invoke-static {v3, p1, p2}, Lo/ss;->b(Lo/sL;J)Lo/Bj;

    move-result-object v3

    .line 51
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    :cond_2
    new-instance p0, Lo/Bp;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lo/Bp;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V

    return-object p0
.end method

.method private static e(Lo/sL;J)Lo/Bj;
    .locals 12

    .line 57
    invoke-virtual {p0}, Lo/sL;->h()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lo/ss;->b(Ljava/util/Map;)[Lo/Bo;

    move-result-object v7

    .line 58
    new-instance v0, Lo/Bj;

    invoke-virtual {p0}, Lo/sL;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/sL;->e()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v2, v1

    .line 59
    invoke-virtual {p0}, Lo/sL;->a()J

    move-result-wide v3

    invoke-virtual {p0}, Lo/sL;->a()J

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmp-long v1, v5, v8

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    int-to-long v5, v1

    add-long/2addr v3, v5

    .line 60
    invoke-virtual {p0}, Lo/sL;->b()J

    move-result-wide v5

    const-wide/16 v8, -0x1

    cmp-long v1, v5, v8

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lo/sL;->b()J

    move-result-wide p1

    :goto_2
    move-wide v5, p1

    .line 61
    invoke-virtual {p0}, Lo/sL;->d()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0}, Lo/sL;->f()J

    move-result-wide v9

    invoke-virtual {p0}, Lo/sL;->i()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    move-result-object v11

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lo/Bj;-><init>(Ljava/lang/String;JJ[Lo/Bo;Ljava/util/List;JLcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;)V

    return-object v0
.end method
