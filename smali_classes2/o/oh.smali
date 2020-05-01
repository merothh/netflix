.class Lo/oh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/oh$StateListAnimator;
    }
.end annotation


# instance fields
.field private final a:Lo/zS;

.field private final b:J

.field private final c:Lo/oq;

.field private final d:J

.field private final e:Ljava/io/File;

.field private f:J

.field private h:Landroid/content/Context;

.field private i:J

.field private j:Lo/ok;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/oq;Lcom/netflix/mediaclient/servicemgr/IClientLogging;Ljava/io/File;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lo/oh;->h:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lo/oh;->c:Lo/oq;

    .line 51
    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object p1

    iput-object p1, p0, Lo/oh;->a:Lo/zS;

    .line 52
    iput-object p4, p0, Lo/oh;->e:Ljava/io/File;

    .line 53
    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lo/oh;->b:J

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo/oh;->d:J

    return-void
.end method

.method static synthetic a(Lo/oh;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lo/oh;->b:J

    return-wide v0
.end method

.method static synthetic b(Lo/oh;)Lo/zS;
    .locals 0

    .line 33
    iget-object p0, p0, Lo/oh;->a:Lo/zS;

    return-object p0
.end method

.method static synthetic c(Lo/oh;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lo/oh;->d:J

    return-wide v0
.end method

.method static synthetic d(Lo/oh;)Ljava/io/File;
    .locals 0

    .line 33
    iget-object p0, p0, Lo/oh;->e:Ljava/io/File;

    return-object p0
.end method

.method private e(JZ)V
    .locals 18

    move-object/from16 v1, p0

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lo/oh;->i:J

    sub-long v13, v2, v4

    .line 110
    iget-wide v2, v1, Lo/oh;->f:J

    sub-long v15, p1, v2

    const-wide/16 v2, 0x0

    const-string v4, "nf_cdnUrlDownloadEvent"

    cmp-long v0, v13, v2

    if-lez v0, :cond_0

    cmp-long v0, v15, v2

    if-ltz v0, :cond_0

    .line 113
    new-instance v0, Lo/oh$StateListAnimator;

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lo/oh$StateListAnimator;-><init>(Lo/oh;Z)V

    const/4 v2, 0x0

    .line 115
    :try_start_0
    iget-object v7, v1, Lo/oh;->c:Lo/oq;

    iget-object v8, v1, Lo/oh;->j:Lo/ok;

    iget-wide v9, v1, Lo/oh;->i:J

    iget-wide v11, v1, Lo/oh;->f:J

    iget-object v3, v1, Lo/oh;->h:Landroid/content/Context;

    .line 121
    invoke-static {v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->n(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v17

    move-object v6, v0

    .line 115
    invoke-virtual/range {v6 .. v17}, Lo/oh$StateListAnimator;->b(Lo/oq;Lo/ok;JJJJLcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V

    .line 122
    new-instance v3, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v3}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v5, Lo/oh$4;

    invoke-direct {v5, v1, v0}, Lo/oh$4;-><init>(Lo/oh;Lo/oh$StateListAnimator;)V

    invoke-virtual {v3, v5}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "onDownloadComplete exception"

    .line 131
    invoke-static {v4, v0, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_1
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "onDownloadComplete jsonException"

    .line 129
    invoke-static {v4, v0, v3, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    const-string v0, "onDownloadComplete not sending dl report."

    .line 134
    invoke-static {v4, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method a(Lo/ok;J)V
    .locals 2

    .line 59
    iput-object p1, p0, Lo/oh;->j:Lo/ok;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/oh;->i:J

    .line 69
    iput-wide p2, p0, Lo/oh;->f:J

    return-void
.end method

.method b(J)V
    .locals 1

    .line 93
    iget-object v0, p0, Lo/oh;->j:Lo/ok;

    if-nez v0, :cond_0

    const-string p1, "nf_cdnUrlDownloadEvent"

    const-string p2, "onDownloadComplete  didn\'t receive onDownloadStart. Not an error, ignoring"

    .line 94
    invoke-static {p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 104
    invoke-direct {p0, p1, p2, v0}, Lo/oh;->e(JZ)V

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lo/oh;->j:Lo/ok;

    return-void
.end method

.method c(J)V
    .locals 1

    .line 75
    iget-object v0, p0, Lo/oh;->j:Lo/ok;

    if-nez v0, :cond_0

    const-string p1, "nf_cdnUrlDownloadEvent"

    const-string p2, "onDownloadStop  didn\'t receive onDownloadStart. Not an error, ignoring"

    .line 76
    invoke-static {p1, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lo/oh;->e(JZ)V

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lo/oh;->j:Lo/ok;

    return-void
.end method
