.class Lo/PeriodicAdvertisingParameters;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PeriodicAdvertisingParameters$Activity;,
        Lo/PeriodicAdvertisingParameters$TaskDescription;,
        Lo/PeriodicAdvertisingParameters$StateListAnimator;,
        Lo/PeriodicAdvertisingParameters$ActionBar;
    }
.end annotation


# instance fields
.field private final a:Lo/RulesUpdaterContract;

.field private final b:Landroid/os/Handler;

.field private final c:Lo/BackupManager;

.field final d:Lo/BackupAgentHelper;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/PeriodicAdvertisingParameters$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/PeriodicAdvertisingParameters$TaskDescription;

.field private g:Lo/BackupAgent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BackupAgent<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lo/PeriodicAdvertisingParameters$TaskDescription;

.field private l:Lo/RestoreObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RestoreObserver<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/graphics/Bitmap;

.field private n:Lo/PeriodicAdvertisingParameters$TaskDescription;

.field private o:Z

.field private r:Lo/PeriodicAdvertisingParameters$Activity;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/Glide;Lo/BackupManager;IILo/RestoreObserver;Landroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lo/BackupManager;",
            "II",
            "Lo/RestoreObserver<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->b()Lo/RulesUpdaterContract;

    move-result-object v1

    .line 66
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lo/BackupAgentHelper;

    move-result-object v2

    .line 69
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lo/BackupAgentHelper;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lo/PeriodicAdvertisingParameters;->d(Lo/BackupAgentHelper;II)Lo/BackupAgent;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    .line 64
    invoke-direct/range {v0 .. v7}, Lo/PeriodicAdvertisingParameters;-><init>(Lo/RulesUpdaterContract;Lo/BackupAgentHelper;Lo/BackupManager;Landroid/os/Handler;Lo/BackupAgent;Lo/RestoreObserver;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method constructor <init>(Lo/RulesUpdaterContract;Lo/BackupAgentHelper;Lo/BackupManager;Landroid/os/Handler;Lo/BackupAgent;Lo/RestoreObserver;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RulesUpdaterContract;",
            "Lo/BackupAgentHelper;",
            "Lo/BackupManager;",
            "Landroid/os/Handler;",
            "Lo/BackupAgent<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lo/RestoreObserver<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/PeriodicAdvertisingParameters;->e:Ljava/util/List;

    .line 83
    iput-object p2, p0, Lo/PeriodicAdvertisingParameters;->d:Lo/BackupAgentHelper;

    if-nez p4, :cond_0

    .line 85
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lo/PeriodicAdvertisingParameters$StateListAnimator;

    invoke-direct {v0, p0}, Lo/PeriodicAdvertisingParameters$StateListAnimator;-><init>(Lo/PeriodicAdvertisingParameters;)V

    invoke-direct {p4, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 87
    :cond_0
    iput-object p1, p0, Lo/PeriodicAdvertisingParameters;->a:Lo/RulesUpdaterContract;

    .line 88
    iput-object p4, p0, Lo/PeriodicAdvertisingParameters;->b:Landroid/os/Handler;

    .line 89
    iput-object p5, p0, Lo/PeriodicAdvertisingParameters;->g:Lo/BackupAgent;

    .line 91
    iput-object p3, p0, Lo/PeriodicAdvertisingParameters;->c:Lo/BackupManager;

    .line 93
    invoke-virtual {p0, p6, p7}, Lo/PeriodicAdvertisingParameters;->e(Lo/RestoreObserver;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static d(Lo/BackupAgentHelper;II)Lo/BackupAgent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BackupAgentHelper;",
            "II)",
            "Lo/BackupAgent<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lo/BackupAgentHelper;->f()Lo/BackupAgent;

    move-result-object p0

    sget-object v0, Lo/PauseActivityItem;->c:Lo/PauseActivityItem;

    .line 339
    invoke-static {v0}, Lo/SearchRecentSuggestionsProvider;->e(Lo/PauseActivityItem;)Lo/SearchRecentSuggestionsProvider;

    move-result-object v0

    const/4 v1, 0x1

    .line 340
    invoke-virtual {v0, v1}, Lo/SearchRecentSuggestionsProvider;->a(Z)Lo/PeriodicSync;

    move-result-object v0

    check-cast v0, Lo/SearchRecentSuggestionsProvider;

    .line 341
    invoke-virtual {v0, v1}, Lo/SearchRecentSuggestionsProvider;->d(Z)Lo/PeriodicSync;

    move-result-object v0

    check-cast v0, Lo/SearchRecentSuggestionsProvider;

    .line 342
    invoke-virtual {v0, p1, p2}, Lo/SearchRecentSuggestionsProvider;->a(II)Lo/PeriodicSync;

    move-result-object p1

    .line 338
    invoke-virtual {p0, p1}, Lo/BackupAgent;->c(Lo/PeriodicSync;)Lo/BackupAgent;

    move-result-object p0

    return-object p0
.end method

.method private g()I
    .locals 3

    .line 148
    invoke-virtual {p0}, Lo/PeriodicAdvertisingParameters;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lo/PeriodicAdvertisingParameters;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 149
    invoke-virtual {p0}, Lo/PeriodicAdvertisingParameters;->f()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 148
    invoke-static {v0, v1, v2}, Lo/FallbackCategoryProvider;->c(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    return v0
.end method

.method private static k()Lo/FileBackupHelperBase;
    .locals 3

    .line 348
    new-instance v0, Lo/AuxiliaryResolveInfo;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/AuxiliaryResolveInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private l()V
    .locals 1

    .line 165
    iget-boolean v0, p0, Lo/PeriodicAdvertisingParameters;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lo/PeriodicAdvertisingParameters;->j:Z

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lo/PeriodicAdvertisingParameters;->o:Z

    .line 171
    invoke-direct {p0}, Lo/PeriodicAdvertisingParameters;->m()V

    return-void
.end method

.method private m()V
    .locals 5

    .line 203
    iget-boolean v0, p0, Lo/PeriodicAdvertisingParameters;->j:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lo/PeriodicAdvertisingParameters;->h:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    iget-boolean v0, p0, Lo/PeriodicAdvertisingParameters;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->k:Lo/PeriodicAdvertisingParameters$TaskDescription;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Pending target must be null when starting from the first frame"

    invoke-static {v0, v3}, Lo/FeatureInfo;->c(ZLjava/lang/String;)V

    .line 209
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->c:Lo/BackupManager;

    invoke-interface {v0}, Lo/BackupManager;->g()V

    .line 210
    iput-boolean v2, p0, Lo/PeriodicAdvertisingParameters;->i:Z

    .line 212
    :cond_2
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->k:Lo/PeriodicAdvertisingParameters$TaskDescription;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 214
    iput-object v1, p0, Lo/PeriodicAdvertisingParameters;->k:Lo/PeriodicAdvertisingParameters$TaskDescription;

    .line 215
    invoke-virtual {p0, v0}, Lo/PeriodicAdvertisingParameters;->b(Lo/PeriodicAdvertisingParameters$TaskDescription;)V

    return-void

    .line 218
    :cond_3
    iput-boolean v1, p0, Lo/PeriodicAdvertisingParameters;->h:Z

    .line 221
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->c:Lo/BackupManager;

    invoke-interface {v0}, Lo/BackupManager;->e()I

    move-result v0

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 224
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->c:Lo/BackupManager;

    invoke-interface {v0}, Lo/BackupManager;->a()V

    .line 225
    new-instance v0, Lo/PeriodicAdvertisingParameters$TaskDescription;

    iget-object v3, p0, Lo/PeriodicAdvertisingParameters;->b:Landroid/os/Handler;

    iget-object v4, p0, Lo/PeriodicAdvertisingParameters;->c:Lo/BackupManager;

    invoke-interface {v4}, Lo/BackupManager;->c()I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Lo/PeriodicAdvertisingParameters$TaskDescription;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lo/PeriodicAdvertisingParameters;->n:Lo/PeriodicAdvertisingParameters$TaskDescription;

    .line 226
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->g:Lo/BackupAgent;

    invoke-static {}, Lo/PeriodicAdvertisingParameters;->k()Lo/FileBackupHelperBase;

    move-result-object v1

    invoke-static {v1}, Lo/SearchRecentSuggestionsProvider;->d(Lo/FileBackupHelperBase;)Lo/SearchRecentSuggestionsProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/BackupAgent;->c(Lo/PeriodicSync;)Lo/BackupAgent;

    move-result-object v0

    iget-object v1, p0, Lo/PeriodicAdvertisingParameters;->c:Lo/BackupManager;

    invoke-virtual {v0, v1}, Lo/BackupAgent;->d(Ljava/lang/Object;)Lo/BackupAgent;

    move-result-object v0

    iget-object v1, p0, Lo/PeriodicAdvertisingParameters;->n:Lo/PeriodicAdvertisingParameters$TaskDescription;

    invoke-virtual {v0, v1}, Lo/BackupAgent;->d(Lo/UndoOwner;)Lo/UndoOwner;

    :cond_4
    :goto_1
    return-void
.end method

.method private n()V
    .locals 2

    .line 230
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 231
    iget-object v1, p0, Lo/PeriodicAdvertisingParameters;->a:Lo/RulesUpdaterContract;

    invoke-interface {v1, v0}, Lo/RulesUpdaterContract;->b(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lo/PeriodicAdvertisingParameters;->m:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lo/PeriodicAdvertisingParameters;->j:Z

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 136
    invoke-virtual {p0}, Lo/PeriodicAdvertisingParameters;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method b()I
    .locals 2

    .line 140
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->c:Lo/BackupManager;

    invoke-interface {v0}, Lo/BackupManager;->j()I

    move-result v0

    invoke-direct {p0}, Lo/PeriodicAdvertisingParameters;->g()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method b(Lo/PeriodicAdvertisingParameters$TaskDescription;)V
    .locals 3

    .line 252
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->r:Lo/PeriodicAdvertisingParameters$Activity;

    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v0}, Lo/PeriodicAdvertisingParameters$Activity;->e()V

    :cond_0
    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lo/PeriodicAdvertisingParameters;->h:Z

    .line 256
    iget-boolean v0, p0, Lo/PeriodicAdvertisingParameters;->o:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 264
    :cond_1
    iget-boolean v0, p0, Lo/PeriodicAdvertisingParameters;->j:Z

    if-nez v0, :cond_2

    .line 265
    iput-object p1, p0, Lo/PeriodicAdvertisingParameters;->k:Lo/PeriodicAdvertisingParameters$TaskDescription;

    return-void

    .line 269
    :cond_2
    invoke-virtual {p1}, Lo/PeriodicAdvertisingParameters$TaskDescription;->b_()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 270
    invoke-direct {p0}, Lo/PeriodicAdvertisingParameters;->n()V

    .line 271
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->f:Lo/PeriodicAdvertisingParameters$TaskDescription;

    .line 272
    iput-object p1, p0, Lo/PeriodicAdvertisingParameters;->f:Lo/PeriodicAdvertisingParameters$TaskDescription;

    .line 275
    iget-object p1, p0, Lo/PeriodicAdvertisingParameters;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 276
    iget-object v2, p0, Lo/PeriodicAdvertisingParameters;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/PeriodicAdvertisingParameters$ActionBar;

    .line 277
    invoke-interface {v2}, Lo/PeriodicAdvertisingParameters$ActionBar;->g()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 280
    iget-object p1, p0, Lo/PeriodicAdvertisingParameters;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 284
    :cond_4
    invoke-direct {p0}, Lo/PeriodicAdvertisingParameters;->m()V

    return-void
.end method

.method c()Landroid/graphics/Bitmap;
    .locals 1

    .line 107
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->m:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method d()I
    .locals 1

    .line 144
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->f:Lo/PeriodicAdvertisingParameters$TaskDescription;

    if-eqz v0, :cond_0

    iget v0, v0, Lo/PeriodicAdvertisingParameters$TaskDescription;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method d(Lo/PeriodicAdvertisingParameters$ActionBar;)V
    .locals 2

    .line 111
    iget-boolean v0, p0, Lo/PeriodicAdvertisingParameters;->o:Z

    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 118
    iget-object v1, p0, Lo/PeriodicAdvertisingParameters;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lo/PeriodicAdvertisingParameters;->l()V

    :cond_0
    return-void

    .line 115
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe twice in a row"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe to a cleared frame loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method e()I
    .locals 1

    .line 132
    invoke-virtual {p0}, Lo/PeriodicAdvertisingParameters;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method e(Lo/PeriodicAdvertisingParameters$ActionBar;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    iget-object p1, p0, Lo/PeriodicAdvertisingParameters;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    invoke-direct {p0}, Lo/PeriodicAdvertisingParameters;->o()V

    :cond_0
    return-void
.end method

.method e(Lo/RestoreObserver;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RestoreObserver<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 97
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RestoreObserver;

    iput-object v0, p0, Lo/PeriodicAdvertisingParameters;->l:Lo/RestoreObserver;

    .line 98
    invoke-static {p2}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iput-object p2, p0, Lo/PeriodicAdvertisingParameters;->m:Landroid/graphics/Bitmap;

    .line 99
    iget-object p2, p0, Lo/PeriodicAdvertisingParameters;->g:Lo/BackupAgent;

    new-instance v0, Lo/SearchRecentSuggestionsProvider;

    invoke-direct {v0}, Lo/SearchRecentSuggestionsProvider;-><init>()V

    invoke-virtual {v0, p1}, Lo/SearchRecentSuggestionsProvider;->a(Lo/RestoreObserver;)Lo/PeriodicSync;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/BackupAgent;->c(Lo/PeriodicSync;)Lo/BackupAgent;

    move-result-object p1

    iput-object p1, p0, Lo/PeriodicAdvertisingParameters;->g:Lo/BackupAgent;

    return-void
.end method

.method f()Landroid/graphics/Bitmap;
    .locals 1

    .line 199
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->f:Lo/PeriodicAdvertisingParameters$TaskDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/PeriodicAdvertisingParameters$TaskDescription;->b_()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->m:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0
.end method

.method h()Ljava/nio/ByteBuffer;
    .locals 1

    .line 153
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->c:Lo/BackupManager;

    invoke-interface {v0}, Lo/BackupManager;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method i()I
    .locals 1

    .line 157
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->c:Lo/BackupManager;

    invoke-interface {v0}, Lo/BackupManager;->b()I

    move-result v0

    return v0
.end method

.method j()V
    .locals 3

    .line 179
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    invoke-direct {p0}, Lo/PeriodicAdvertisingParameters;->n()V

    .line 181
    invoke-direct {p0}, Lo/PeriodicAdvertisingParameters;->o()V

    .line 182
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->f:Lo/PeriodicAdvertisingParameters$TaskDescription;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 183
    iget-object v2, p0, Lo/PeriodicAdvertisingParameters;->d:Lo/BackupAgentHelper;

    invoke-virtual {v2, v0}, Lo/BackupAgentHelper;->c(Lo/UndoOwner;)V

    .line 184
    iput-object v1, p0, Lo/PeriodicAdvertisingParameters;->f:Lo/PeriodicAdvertisingParameters$TaskDescription;

    .line 186
    :cond_0
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->n:Lo/PeriodicAdvertisingParameters$TaskDescription;

    if-eqz v0, :cond_1

    .line 187
    iget-object v2, p0, Lo/PeriodicAdvertisingParameters;->d:Lo/BackupAgentHelper;

    invoke-virtual {v2, v0}, Lo/BackupAgentHelper;->c(Lo/UndoOwner;)V

    .line 188
    iput-object v1, p0, Lo/PeriodicAdvertisingParameters;->n:Lo/PeriodicAdvertisingParameters$TaskDescription;

    .line 190
    :cond_1
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->k:Lo/PeriodicAdvertisingParameters$TaskDescription;

    if-eqz v0, :cond_2

    .line 191
    iget-object v2, p0, Lo/PeriodicAdvertisingParameters;->d:Lo/BackupAgentHelper;

    invoke-virtual {v2, v0}, Lo/BackupAgentHelper;->c(Lo/UndoOwner;)V

    .line 192
    iput-object v1, p0, Lo/PeriodicAdvertisingParameters;->k:Lo/PeriodicAdvertisingParameters$TaskDescription;

    .line 194
    :cond_2
    iget-object v0, p0, Lo/PeriodicAdvertisingParameters;->c:Lo/BackupManager;

    invoke-interface {v0}, Lo/BackupManager;->i()V

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lo/PeriodicAdvertisingParameters;->o:Z

    return-void
.end method
