.class public Lo/vK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:D

.field private b:D

.field private c$781c5a46:Ljava/lang/Object;

.field private final d:Lo/tK;

.field private final e:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/tK;Lo/vh;Ljava/lang/String;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ASE-PlaybackDurationHistory"

    .line 22
    iput-object v0, p0, Lo/vK;->e:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lo/vK;->d:Lo/tK;

    .line 32
    invoke-interface {p1}, Lo/tK;->d$3bf225fb()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/vK;->c$781c5a46:Ljava/lang/Object;

    .line 33
    invoke-virtual {p2}, Lo/vh;->aI()D

    move-result-wide v0

    iput-wide v0, p0, Lo/vK;->a:D

    .line 34
    invoke-virtual {p2}, Lo/vh;->aP()D

    move-result-wide v0

    iput-wide v0, p0, Lo/vK;->b:D

    .line 35
    iput-object p3, p0, Lo/vK;->j:Ljava/lang/String;

    .line 36
    invoke-virtual {p2}, Lo/vh;->aM()I

    move-result p1

    iput p1, p0, Lo/vK;->h:I

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lo/vK;->i:I

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .line 41
    iget-object v0, p0, Lo/vK;->d:Lo/tK;

    invoke-interface {v0}, Lo/tK;->a()Lo/tC;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {v0}, Lo/tC;->c()I

    move-result v1

    invoke-static {v1}, Lo/tC;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "mobile"

    return-object v0

    .line 45
    :cond_0
    invoke-virtual {v0}, Lo/tC;->c()I

    move-result v0

    invoke-static {v0}, Lo/tC;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "wifi"

    return-object v0

    :cond_1
    const-string v0, "unknown"

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 5

    const-string v0, "ASE-PlaybackDurationHistory"

    const/4 v1, -0x1

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lo/vK;->e()Lo/vL;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    .line 115
    :cond_0
    iget v3, v2, Lo/vL;->totalCount:I

    iget v4, p0, Lo/vK;->h:I

    if-ge v3, v4, :cond_1

    const-string v2, "too few data in playback duration history"

    .line 116
    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 119
    :cond_1
    invoke-virtual {v2}, Lo/vL;->d()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 121
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "%s error while getting pdAvg"

    invoke-static {v0, v2, v3}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1
.end method

.method public b()I
    .locals 1

    .line 56
    iget v0, p0, Lo/vK;->i:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 60
    iput p1, p0, Lo/vK;->i:I

    return-void
.end method

.method public d()D
    .locals 6

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-double v2, v0

    int-to-double v0, v1

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v4

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public d(J)I
    .locals 5

    const-string v0, "ASE-PlaybackDurationHistory"

    const/4 v1, -0x1

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lo/vK;->e()Lo/vL;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    .line 132
    :cond_0
    iget v3, v2, Lo/vL;->totalCount:I

    iget v4, p0, Lo/vK;->h:I

    if-ge v3, v4, :cond_1

    const-string p1, "too few data in playback duration history"

    .line 133
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 136
    :cond_1
    invoke-virtual {v2, p1, p2}, Lo/vL;->d(J)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 138
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "%s error while getting estRemainingPd"

    invoke-static {v0, p1, p2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1
.end method

.method public e()Lo/vL;
    .locals 12

    const-string v0, "pdh"

    const-string v1, "ASE-PlaybackDurationHistory"

    const/4 v2, 0x4

    const/16 v3, 0xa8

    const/16 v4, 0x5718

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 76
    :try_start_0
    invoke-direct {p0}, Lo/vK;->c()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 78
    iget-object v9, p0, Lo/vK;->j:Ljava/lang/String;

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    const-string v9, "looking for playback duration history for uiLabel %s, networkType %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 81
    iget-object v11, p0, Lo/vK;->j:Ljava/lang/String;

    aput-object v11, v10, v6

    aput-object v8, v10, v7

    invoke-static {v1, v9, v10}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 82
    iget-object v9, p0, Lo/vK;->c$781c5a46:Ljava/lang/Object;

    invoke-static {v4, v3, v2}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-eqz v9, :cond_3

    .line 83
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 84
    iget-object v10, p0, Lo/vK;->j:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "no history matching with %s"

    if-eqz v9, :cond_2

    .line 86
    :try_start_1
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/vL;

    if-nez v9, :cond_1

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v8, v11, v6

    .line 89
    invoke-static {v1, v10, v11}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    move-object v5, v9

    goto :goto_1

    :cond_2
    new-array v8, v7, [Ljava/lang/Object;

    .line 93
    iget-object v9, p0, Lo/vK;->j:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-static {v1, v10, v8}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_3
    const-string v8, "cant find playback duration history"

    .line 97
    invoke-static {v1, v8}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :goto_0
    const-string v8, "unknown network type or uilabel, cant find history for playback duration"

    .line 79
    invoke-static {v1, v8}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v5

    :catch_0
    move-exception v8

    new-array v7, v7, [Ljava/lang/Object;

    .line 102
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v6, "%s error while looking for best matching history, delete entire playback duration history"

    invoke-static {v1, v6, v7}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 104
    iget-object v1, p0, Lo/vK;->c$781c5a46:Ljava/lang/Object;

    invoke-static {v4, v3, v2}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method public e(J)V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "pdh"

    const-string v3, "ASE-PlaybackDurationHistory"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/16 v7, 0xa8

    const/16 v8, 0x5718

    .line 145
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lo/vK;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unknown network type, discard saving history"

    .line 147
    invoke-static {v3, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_0
    iget-object v9, v1, Lo/vK;->c$781c5a46:Ljava/lang/Object;

    invoke-static {v8, v7, v6}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-nez v9, :cond_1

    .line 155
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 156
    iget-object v10, v1, Lo/vK;->c$781c5a46:Ljava/lang/Object;

    invoke-static {v8, v7, v6}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    invoke-virtual {v11, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    invoke-virtual {v11, v10, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    :cond_1
    iget-object v10, v1, Lo/vK;->j:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    if-nez v10, :cond_2

    .line 160
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 161
    iget-object v11, v1, Lo/vK;->j:Ljava/lang/String;

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_2
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/vL;

    if-nez v9, :cond_3

    .line 165
    new-instance v9, Lo/vL;

    invoke-direct {v9}, Lo/vL;-><init>()V

    .line 166
    invoke-interface {v10, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_3
    iget-wide v14, v1, Lo/vK;->a:D

    iget-wide v12, v1, Lo/vK;->b:D

    move-object v11, v9

    move-wide/from16 v16, v12

    move-wide/from16 v12, p1

    invoke-virtual/range {v11 .. v17}, Lo/vL;->d(JDD)V

    const-string v0, "add %d sec to playback duration history, new historical avg:%d sec"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-wide/16 v11, 0x3e8

    .line 170
    div-long v13, p1, v11

    long-to-int v14, v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v4

    iget-wide v13, v9, Lo/vL;->ewmavPlaybackDuration:J

    div-long/2addr v13, v11

    long-to-int v9, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v5

    invoke-static {v3, v0, v10}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-array v5, v5, [Ljava/lang/Object;

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    const-string v0, "%s error while adding and saving history, delete entire playback duration history"

    invoke-static {v3, v0, v5}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 174
    iget-object v0, v1, Lo/vK;->c$781c5a46:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8, v7, v6}, Lo/uT;->e(CII)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
