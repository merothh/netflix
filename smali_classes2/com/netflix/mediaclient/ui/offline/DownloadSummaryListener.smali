.class public final enum Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/nV;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;",
        ">;",
        "Lo/nV;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;

.field private static final synthetic d:[Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;


# instance fields
.field private a:J

.field private b:Lo/nS;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c:Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;

    .line 24
    sget-object v2, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c:Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->d:[Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->e:Ljava/util/Set;

    return-void
.end method

.method private c()V
    .locals 22

    move-object/from16 v0, p0

    .line 116
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->b:Lo/nS;

    if-nez v1, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 126
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->e:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    .line 128
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v3

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->e()J

    move-result-wide v4

    .line 131
    invoke-interface {v3}, Lo/Rq;->a()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lo/Bi;

    .line 132
    sget-object v17, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener$2;->c:[I

    invoke-interface/range {v16 .. v16}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    goto :goto_2

    .line 156
    :pswitch_0
    invoke-interface/range {v16 .. v16}, Lo/Bi;->y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->d()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 157
    invoke-interface/range {v16 .. v16}, Lo/Bi;->C()J

    move-result-wide v17

    cmp-long v19, v17, v4

    if-lez v19, :cond_2

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 162
    :cond_1
    invoke-interface/range {v16 .. v16}, Lo/Bi;->x()J

    move-result-wide v17

    add-long v11, v11, v17

    .line 163
    invoke-interface/range {v16 .. v16}, Lo/Bi;->w()J

    move-result-wide v17

    add-long v9, v9, v17

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 150
    :pswitch_1
    invoke-interface/range {v16 .. v16}, Lo/Bi;->C()J

    move-result-wide v17

    cmp-long v19, v17, v4

    if-lez v19, :cond_2

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 141
    :pswitch_2
    invoke-interface/range {v16 .. v16}, Lo/Bi;->C()J

    move-result-wide v17

    cmp-long v19, v17, v4

    if-lez v19, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :pswitch_3
    add-int/lit8 v2, v2, 0x1

    :goto_1
    :pswitch_4
    add-int/lit8 v1, v1, 0x1

    .line 170
    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v8

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v8, v6, :cond_4

    .line 171
    invoke-interface/range {v16 .. v16}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v6

    sget-object v7, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v6, v7, :cond_3

    .line 172
    invoke-interface/range {v16 .. v16}, Lo/Bi;->C()J

    move-result-wide v6

    move v8, v1

    move/from16 v20, v2

    iget-wide v1, v0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->a:J

    cmp-long v21, v6, v1

    if-lez v21, :cond_5

    goto :goto_3

    :cond_3
    move v8, v1

    move/from16 v20, v2

    goto :goto_4

    :cond_4
    move v8, v1

    move/from16 v20, v2

    .line 173
    :goto_3
    invoke-interface/range {v16 .. v16}, Lo/Bi;->x()J

    move-result-wide v1

    add-long/2addr v11, v1

    .line 174
    invoke-interface/range {v16 .. v16}, Lo/Bi;->w()J

    move-result-wide v1

    add-long/2addr v9, v1

    :cond_5
    :goto_4
    move v1, v8

    move/from16 v2, v20

    goto/16 :goto_0

    :cond_6
    if-lez v1, :cond_9

    const-wide/16 v3, 0x0

    cmp-long v5, v9, v3

    if-lez v5, :cond_9

    cmp-long v3, v11, v9

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    if-lez v2, :cond_8

    int-to-long v3, v2

    mul-long v3, v3, v9

    sub-int v2, v1, v2

    int-to-long v5, v2

    .line 183
    div-long/2addr v3, v5

    add-long/2addr v9, v3

    :cond_8
    const-wide/16 v2, 0x64

    mul-long v11, v11, v2

    .line 185
    div-long/2addr v11, v9

    long-to-int v8, v11

    goto :goto_6

    :cond_9
    if-lez v2, :cond_a

    :goto_5
    const/4 v8, 0x0

    goto :goto_6

    :cond_a
    const/16 v8, 0x64

    .line 193
    :goto_6
    invoke-static {}, Lo/QL;->h()Lo/QL$Application;

    move-result-object v2

    .line 194
    invoke-virtual {v2, v14}, Lo/QL$Application;->e(I)Lo/QL$Application;

    move-result-object v2

    .line 195
    invoke-virtual {v2, v1}, Lo/QL$Application;->d(I)Lo/QL$Application;

    move-result-object v1

    .line 196
    invoke-virtual {v1, v15}, Lo/QL$Application;->c(I)Lo/QL$Application;

    move-result-object v1

    .line 197
    invoke-virtual {v1, v13}, Lo/QL$Application;->a(I)Lo/QL$Application;

    move-result-object v1

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->b:Lo/nS;

    .line 198
    invoke-interface {v2}, Lo/nS;->i()Z

    move-result v2

    invoke-virtual {v1, v2}, Lo/QL$Application;->a(Z)Lo/QL$Application;

    move-result-object v1

    .line 199
    invoke-virtual {v1, v8}, Lo/QL$Application;->b(I)Lo/QL$Application;

    move-result-object v1

    invoke-virtual {v1}, Lo/QL$Application;->b()Lo/QL;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lo/QL;->g()Z

    move-result v2

    if-nez v2, :cond_b

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->a:J

    .line 205
    :cond_b
    invoke-static {v1}, Lo/QL;->d(Lo/QL;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;
    .locals 1

    .line 24
    const-class v0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;
    .locals 1

    .line 24
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->d:[Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 50
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->e:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 51
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c()V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c()V

    return-void
.end method

.method public a(Lo/Bi;I)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c()V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c()V

    return-void
.end method

.method public c(Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c()V

    return-void
.end method

.method public d()V
    .locals 4

    .line 210
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "download_badge_clear_time"

    invoke-static {v0, v3, v1, v2}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V

    .line 211
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c()V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c()V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c()V

    return-void
.end method

.method public d(Lo/Bi;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c()V

    return-void
.end method

.method public d(Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c()V

    return-void
.end method

.method public d(Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c()V

    return-void
.end method

.method public e()J
    .locals 4

    .line 215
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    const-string v1, "download_badge_clear_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c()V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c()V

    return-void
.end method

.method public e(Lo/Bi;)V
    .locals 0

    .line 61
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    invoke-static {p1}, Lo/RL;->a(Landroid/content/Context;)V

    .line 62
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c()V

    return-void
.end method

.method public e(Lo/nS;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->b:Lo/nS;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p0}, Lo/nS;->d(Lo/nV;)V

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->b:Lo/nS;

    .line 37
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->b:Lo/nS;

    invoke-interface {p1, p0}, Lo/nS;->e(Lo/nV;)V

    .line 38
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadSummaryListener;->c()V

    :cond_1
    return-void
.end method
