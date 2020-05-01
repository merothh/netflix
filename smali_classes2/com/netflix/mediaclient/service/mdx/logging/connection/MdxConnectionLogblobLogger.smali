.class public Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;
    }
.end annotation


# static fields
.field private static a:Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;

.field private static b:Ljava/lang/String;

.field private static d:J

.field private static e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;


# instance fields
.field private final c:Lo/zS;

.field private final i:Lo/cz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->d:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;->b:Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->a:Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;

    return-void
.end method

.method public constructor <init>(Lo/zS;Lo/cz;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c:Lo/zS;

    .line 65
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->i:Lo/cz;

    return-void
.end method

.method private a(JLcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob;
    .locals 14

    .line 335
    new-instance v13, Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->a:Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;

    move-object v0, v13

    move-wide v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob;-><init>(Ljava/lang/String;JLcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v13
.end method

.method private b(JLcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/kW;
    .locals 12

    .line 341
    new-instance v11, Lo/kW;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->f()Ljava/lang/String;

    move-result-object v1

    move-object v0, v11

    move-wide v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lo/kW;-><init>(Ljava/lang/String;JLcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 82
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    sput-object p0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b:Ljava/lang/String;

    .line 85
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 86
    sget-object p0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->j:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-static {p0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;)V

    :cond_1
    return-void
.end method

.method public static b()Z
    .locals 2

    .line 98
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->j:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c()J
    .locals 4

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->d:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static c(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;)V
    .locals 4

    .line 102
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->c(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 103
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string v1, "MdxConnectionLogblobLogger"

    const-string v2, "setState - state changed from %s to %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 104
    sput-object p0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->d:J

    .line 107
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->c:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    if-ne p0, v0, :cond_0

    const-string p0, "setState - clearing current target"

    .line 108
    invoke-static {v1, p0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 109
    sput-object p0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 91
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 92
    sget-object p0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->i:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-static {p0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;)V

    :cond_0
    return-void
.end method

.method private d(J)Lo/kT;
    .locals 2

    .line 328
    new-instance v0, Lo/kT;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lo/kT;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method private d()V
    .locals 1

    .line 324
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;->b:Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->a:Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    .line 74
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->b:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "MdxConnectionLogblobLogger"

    const-string v2, "connectionStarted - current target location set to %s"

    .line 76
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 77
    sput-object p0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b:Ljava/lang/String;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->d:J

    return-void
.end method

.method private d(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 307
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->c(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 311
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b:Ljava/lang/String;

    const-string v1, "MdxConnectionLogblobLogger"

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 312
    sget-object p3, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b:Ljava/lang/String;

    aput-object p3, p1, v0

    aput-object p2, p1, v2

    const-string p2, "isStateValid - invalid target location, ignoring - current location: %s, new ID: %s"

    invoke-static {v1, p2, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0

    .line 316
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c:Lo/zS;

    if-nez p1, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p3, p1, v0

    const-string p2, "MdxConnectionLogblobLogger can\'t log %s, since internal logger is null"

    .line 317
    invoke-static {v1, p2, p1}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v0

    :cond_2
    return v2
.end method

.method private e(JLcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/kX;
    .locals 11

    .line 346
    new-instance v10, Lo/kX;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->f()Ljava/lang/String;

    move-result-object v1

    move-object v0, v10

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lo/kX;-><init>(Ljava/lang/String;JLcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method public static e()V
    .locals 1

    .line 69
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;)V

    return-void
.end method

.method public static e(Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;)V
    .locals 0

    .line 115
    sput-object p0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->a:Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->i:Lo/cz;

    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0}, Lo/cz;->af()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    move-result-object v0

    invoke-static {v0}, Lo/kP;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 119
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->c:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    const/4 v1, 0x0

    const-string v2, "MDX Init"

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->d(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 121
    invoke-static {}, Lo/dQ;->i()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c()J

    move-result-wide v0

    .line 127
    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c:Lo/zS;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->d(J)Lo/kT;

    move-result-object v5

    invoke-interface {v4, v5}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 128
    sget-object v4, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->c:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;)V

    new-array v3, v3, [Ljava/lang/Object;

    .line 129
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "MdxConnectionLogblobLogger"

    const-string v1, "onMdxInit - delay: %s"

    invoke-static {v0, v1, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/ku;Ljava/lang/String;ZZZ)V
    .locals 17

    move-object/from16 v11, p0

    move-object/from16 v12, p10

    .line 183
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->c:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    const-string v1, "Connect Error"

    move-object/from16 v2, p2

    invoke-direct {v11, v0, v2, v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->d(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 185
    invoke-static {}, Lo/dQ;->i()Z

    move-result v1

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->b:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 190
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c()J

    move-result-wide v15

    move-object/from16 v0, p0

    move-wide v1, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p11

    .line 191
    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->a(JLcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob;

    move-result-object v0

    move/from16 v1, p12

    .line 192
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob;->a(Z)Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob;

    move-result-object v0

    move/from16 v2, p13

    .line 193
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob;->b(Z)Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob;

    move-result-object v0

    .line 195
    new-instance v3, Lo/kQ;

    move-object/from16 v4, p9

    invoke-direct {v3, v4, v12}, Lo/kQ;-><init>(Lo/ku;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob;->d(Lo/kQ;)V

    .line 197
    iget-object v3, v11, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c:Lo/zS;

    invoke-interface {v3, v0}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 198
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->c:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;)V

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Object;

    .line 202
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v14

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->a:Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v13

    const/4 v3, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    const/4 v3, 0x3

    aput-object p3, v0, v3

    const/4 v3, 0x4

    aput-object p4, v0, v3

    const/4 v3, 0x5

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v3

    const/4 v3, 0x6

    aput-object p6, v0, v3

    const/4 v3, 0x7

    aput-object p7, v0, v3

    const/16 v3, 0x8

    aput-object p8, v0, v3

    const/16 v3, 0x9

    .line 203
    invoke-virtual/range {p9 .. p9}, Lo/ku;->d()Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    move-result-object v5

    aput-object v5, v0, v3

    const/16 v3, 0xa

    invoke-virtual/range {p9 .. p9}, Lo/ku;->a()Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    move-result-object v5

    aput-object v5, v0, v3

    const/16 v3, 0xb

    invoke-virtual/range {p9 .. p9}, Lo/ku;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    const/16 v3, 0xc

    .line 204
    invoke-virtual/range {p9 .. p9}, Lo/ku;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xd

    aput-object v12, v0, v3

    const/16 v3, 0xe

    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xf

    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x10

    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "MdxConnectionLogblobLogger"

    const-string v2, "onConnectError - delay: %s, origin: %s, targetType: %s, deviceId: %s, deviceName: %s, userMismatch: %b, manufacturer: %s, modelName: %s, modelNumber: %s, code: %s, subCode: %s, extCode: %s, details: %s, timeout: %s isRemoteLoginEnabled: %b supportsWol: %b wasWakeupAttempted: %b"

    .line 199
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->d()V

    :cond_2
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 16

    move-object/from16 v11, p0

    .line 156
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->a:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    const-string v1, "Connect"

    move-object/from16 v2, p2

    invoke-direct {v11, v0, v2, v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->d(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 158
    invoke-static {}, Lo/dQ;->i()Z

    move-result v1

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->b:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c()J

    move-result-wide v14

    move-object/from16 v0, p0

    move-wide v1, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 164
    invoke-direct/range {v0 .. v10}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->a(JLcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob;

    move-result-object v0

    move/from16 v1, p10

    .line 165
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob;->a(Z)Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob;

    move-result-object v0

    move/from16 v2, p11

    .line 166
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob;->b(Z)Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob;

    move-result-object v0

    .line 168
    iget-object v3, v11, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c:Lo/zS;

    invoke-interface {v3, v0}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 169
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->a:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;)V

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 172
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v13

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->a:Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/logging/connection/ConnectLogblob$LaunchOrigin;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v12

    const/4 v3, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    aput-object p3, v0, v3

    const/4 v3, 0x4

    aput-object p4, v0, v3

    const/4 v3, 0x5

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x6

    aput-object p6, v0, v3

    const/4 v3, 0x7

    aput-object p7, v0, v3

    const/16 v3, 0x8

    aput-object p8, v0, v3

    const/16 v3, 0x9

    .line 173
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xa

    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0xb

    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "MdxConnectionLogblobLogger"

    const-string v2, "onConnect - delay: %s, origin: %s, targetType: %s, deviceId: %s, deviceName: %s, userMismatch: %b, manufacturer: %s, modelName: %s, modelNumber: %s isRemoteLoginEnabled: %b supportsWol: %b wasWakeupAttempted: %b"

    .line 170
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->d()V

    :cond_2
    return-void
.end method

.method public b(Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v9, p0

    .line 258
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->c:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    const-string v1, "Disconnect"

    move-object/from16 v2, p2

    invoke-direct {p0, v0, v2, v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->d(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 260
    invoke-static {}, Lo/dQ;->i()Z

    move-result v1

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->i:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 265
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c()J

    move-result-wide v12

    move-object v0, p0

    move-wide v1, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 266
    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e(JLcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/kX;

    move-result-object v0

    .line 268
    iget-object v1, v9, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c:Lo/zS;

    invoke-interface {v1, v0}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 269
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->c:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;)V

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 272
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const-string v1, "MdxConnectionLogblobLogger"

    const-string v2, "onDisconnect - delay: %s, targetType: %s, deviceId: %s, deviceName: %s, manufacturer: $s, modelName: $s, modelNumber: $s"

    .line 270
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    return-void
.end method

.method public b(Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/ku;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p10

    .line 236
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->c:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    const-string v1, "Reconnect Error"

    move-object/from16 v2, p2

    invoke-direct {v10, v0, v2, v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->d(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 238
    invoke-static {}, Lo/dQ;->i()Z

    move-result v1

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->j:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 243
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c()J

    move-result-wide v14

    move-object/from16 v0, p0

    move-wide v1, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 244
    invoke-direct/range {v0 .. v9}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b(JLcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/kW;

    move-result-object v0

    .line 245
    new-instance v1, Lo/kQ;

    move-object/from16 v2, p9

    invoke-direct {v1, v2, v11}, Lo/kQ;-><init>(Lo/ku;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/kW;->d(Lo/kQ;)V

    .line 247
    iget-object v1, v10, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c:Lo/zS;

    invoke-interface {v1, v0}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 248
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->c:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;)V

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    .line 251
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v13

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    .line 252
    invoke-virtual/range {p9 .. p9}, Lo/ku;->d()Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x9

    invoke-virtual/range {p9 .. p9}, Lo/ku;->a()Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xa

    invoke-virtual/range {p9 .. p9}, Lo/ku;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xb

    invoke-virtual/range {p9 .. p9}, Lo/ku;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v11, v0, v1

    const-string v1, "MdxConnectionLogblobLogger"

    const-string v2, "onReconnectError - delay: %s, targetType: %s, deviceId: %s, deviceName: %s, userMismatch: %b, manufacturer: $s, modelName: $s, modelNumber: $s, code: %s, subCode: %s, extCode: %s, details: %s, timeout: %s"

    .line 249
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    return-void
.end method

.method public c(Lo/ku;Ljava/lang/String;)V
    .locals 6

    .line 134
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->d:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    const/4 v1, 0x0

    const-string v2, "MDX Init Error"

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->d(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 136
    invoke-static {}, Lo/dQ;->i()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 141
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c()J

    move-result-wide v0

    .line 142
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->d(J)Lo/kT;

    move-result-object v4

    .line 143
    new-instance v5, Lo/kQ;

    invoke-direct {v5, p1, p2}, Lo/kQ;-><init>(Lo/ku;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lo/kT;->d(Lo/kQ;)V

    .line 145
    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c:Lo/zS;

    invoke-interface {v5, v4}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 146
    sget-object v4, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->d:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-static {v4}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;)V

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    .line 148
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {p1}, Lo/ku;->d()Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v0, 0x2

    invoke-virtual {p1}, Lo/ku;->a()Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, Lo/ku;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    invoke-virtual {p1}, Lo/ku;->b()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    const/4 p1, 0x5

    aput-object p2, v4, p1

    const-string p1, "MdxConnectionLogblobLogger"

    const-string p2, "onMdxInitError - delay %s, code: %s, subCode: %s, extCode: %s, details: %s, timeout: %s"

    .line 147
    invoke-static {p1, p2, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    return-void
.end method

.method public e(Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v10, p0

    .line 214
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->a:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    const-string v1, "Reconnect"

    move-object/from16 v2, p2

    invoke-direct {p0, v0, v2, v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->d(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 216
    invoke-static {}, Lo/dQ;->i()Z

    move-result v1

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->j:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->e:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c()J

    move-result-wide v13

    move-object v0, p0

    move-wide v1, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 222
    invoke-direct/range {v0 .. v9}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->b(JLcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/kW;

    move-result-object v0

    .line 224
    iget-object v1, v10, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c:Lo/zS;

    invoke-interface {v1, v0}, Lo/zS;->e(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 225
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;->a:Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c(Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger$ConnectionState;)V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 228
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const-string v1, "MdxConnectionLogblobLogger"

    const-string v2, "onReconnect - delay: %s, targetType: %s, deviceId: %s, deviceName: %s, userMismatch: %bmanufacturer: $s, modelName: $s, modelNumber: $s"

    .line 226
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    return-void
.end method
