.class Lo/sJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BT;


# instance fields
.field private final b:Lo/BT;


# direct methods
.method public constructor <init>(Lo/BT;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lo/sJ;->b:Lo/BT;

    return-void
.end method

.method private static a(Ljava/lang/String;)Lo/sB;
    .locals 2

    .line 65
    :try_start_0
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    const-class v1, Lo/sB;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/sB;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Lo/sB;)Ljava/lang/String;
    .locals 1

    .line 59
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Lo/BW;Lo/sB;J)V
    .locals 1

    .line 55
    new-instance v0, Lo/Ca;

    invoke-static {p2}, Lo/sJ;->d(Lo/sB;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p3, p4, p2}, Lo/Ca;-><init>(Lo/BW;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/sJ;->c(Lo/Ca;)V

    return-void
.end method

.method public c(J)I
    .locals 3

    .line 103
    :try_start_0
    iget-object v0, p0, Lo/sJ;->b:Lo/BT;

    invoke-interface {v0, p1, p2}, Lo/BT;->c(J)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    const-string v1, "PersistedManifestDaoWrapper"

    const-string v2, "unable to delete expired manifest DB"

    .line 105
    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return p2
.end method

.method public c(Lo/Ca;)V
    .locals 3

    .line 84
    :try_start_0
    iget-object v0, p0, Lo/sJ;->b:Lo/BT;

    invoke-interface {v0, p1}, Lo/BT;->c(Lo/Ca;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PersistedManifestDaoWrapper"

    const-string v2, "unable to insert manifest DB"

    .line 86
    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public d()I
    .locals 5

    .line 113
    :try_start_0
    iget-object v0, p0, Lo/sJ;->b:Lo/BT;

    invoke-interface {v0}, Lo/BT;->d()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PersistedManifestDaoWrapper"

    const-string v4, "unable to clear manifest DB"

    .line 115
    invoke-static {v3, v0, v4, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1
.end method

.method public d(JIIZZJLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lo/Ca;
    .locals 14

    move-object v1, p0

    .line 74
    :try_start_0
    iget-object v2, v1, Lo/sJ;->b:Lo/BT;

    move-wide v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-interface/range {v2 .. v13}, Lo/BT;->d(JIIZZJLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lo/Ca;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "PersistedManifestDaoWrapper"

    const-string v4, "unable to query manifest DB"

    .line 76
    invoke-static {v3, v0, v4, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Lo/BW;J)Lo/sB;
    .locals 12

    .line 35
    invoke-virtual {p1}, Lo/BW;->e()J

    move-result-wide v1

    invoke-virtual {p1}, Lo/BW;->d()I

    move-result v3

    invoke-virtual {p1}, Lo/BW;->a()I

    move-result v4

    invoke-virtual {p1}, Lo/BW;->b()Z

    move-result v5

    .line 36
    invoke-virtual {p1}, Lo/BW;->c()Z

    move-result v6

    invoke-virtual {p1}, Lo/BW;->i()Ljava/lang/String;

    move-result-object v9

    .line 37
    invoke-virtual {p1}, Lo/BW;->j()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lo/BW;->g()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object v0, p0

    move-wide v7, p2

    .line 35
    invoke-virtual/range {v0 .. v11}, Lo/sJ;->d(JIIZZJLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lo/Ca;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Lo/Ca;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/sJ;->a(Ljava/lang/String;)Lo/sB;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 41
    invoke-virtual {p1}, Lo/Ca;->c()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lo/sB;->e(J)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return-object p2
.end method

.method public e(J)I
    .locals 3

    .line 93
    :try_start_0
    iget-object v0, p0, Lo/sJ;->b:Lo/BT;

    invoke-interface {v0, p1, p2}, Lo/BT;->e(J)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    const-string v1, "PersistedManifestDaoWrapper"

    const-string v2, "unable to delete manifest DB"

    .line 95
    invoke-static {v1, p1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return p2
.end method
