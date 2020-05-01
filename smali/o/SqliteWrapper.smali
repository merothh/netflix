.class public Lo/SqliteWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DdmHandleNativeHeap;


# instance fields
.field private final a:Lo/SQLiteException;

.field private b:Lcom/facebook/drawee/generic/RoundingParams;

.field private final c:Landroid/content/res/Resources;

.field private final d:Lo/SQLiteTransactionListener;

.field private final e:Landroid/graphics/drawable/Drawable;

.field private final j:Lo/SQLiteDirectCursorDriver;


# direct methods
.method constructor <init>(Lo/SQLiteStatementInfo;)V
    .locals 10

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lo/SqliteWrapper;->e:Landroid/graphics/drawable/Drawable;

    .line 103
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GenericDraweeHierarchy()"

    .line 104
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->a()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lo/SqliteWrapper;->c:Landroid/content/res/Resources;

    .line 107
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->s()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    iput-object v0, p0, Lo/SqliteWrapper;->b:Lcom/facebook/drawee/generic/RoundingParams;

    .line 109
    new-instance v0, Lo/SQLiteDirectCursorDriver;

    iget-object v2, p0, Lo/SqliteWrapper;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v2}, Lo/SQLiteDirectCursorDriver;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lo/SqliteWrapper;->j:Lo/SQLiteDirectCursorDriver;

    .line 111
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->p()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 112
    :goto_0
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->t()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x6

    .line 118
    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    .line 119
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lo/SqliteWrapper;->a(Landroid/graphics/drawable/Drawable;Lo/SQLiteReadOnlyDatabaseException$Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v1

    .line 121
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->e()Lo/SQLiteReadOnlyDatabaseException$Activity;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lo/SqliteWrapper;->a(Landroid/graphics/drawable/Drawable;Lo/SQLiteReadOnlyDatabaseException$Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x2

    .line 122
    iget-object v6, p0, Lo/SqliteWrapper;->j:Lo/SQLiteDirectCursorDriver;

    .line 125
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->k()Lo/SQLiteReadOnlyDatabaseException$Activity;

    move-result-object v7

    .line 126
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->l()Landroid/graphics/PointF;

    move-result-object v8

    .line 127
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->m()Landroid/graphics/ColorFilter;

    move-result-object v9

    .line 123
    invoke-direct {p0, v6, v7, v8, v9}, Lo/SqliteWrapper;->c(Landroid/graphics/drawable/Drawable;Lo/SQLiteReadOnlyDatabaseException$Activity;Landroid/graphics/PointF;Landroid/graphics/ColorFilter;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    .line 129
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->o()Lo/SQLiteReadOnlyDatabaseException$Activity;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lo/SqliteWrapper;->a(Landroid/graphics/drawable/Drawable;Lo/SQLiteReadOnlyDatabaseException$Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x4

    .line 131
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->h()Lo/SQLiteReadOnlyDatabaseException$Activity;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lo/SqliteWrapper;->a(Landroid/graphics/drawable/Drawable;Lo/SQLiteReadOnlyDatabaseException$Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x5

    .line 133
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->f()Lo/SQLiteReadOnlyDatabaseException$Activity;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lo/SqliteWrapper;->a(Landroid/graphics/drawable/Drawable;Lo/SQLiteReadOnlyDatabaseException$Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v4

    if-lez v0, :cond_4

    .line 136
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->p()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 137
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v2, v2, 0x6

    .line 138
    invoke-direct {p0, v1, v5}, Lo/SqliteWrapper;->a(Landroid/graphics/drawable/Drawable;Lo/SQLiteReadOnlyDatabaseException$Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v3, v2

    move v2, v4

    goto :goto_2

    .line 143
    :cond_3
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->t()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    add-int/lit8 v2, v2, 0x6

    .line 144
    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->t()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lo/SqliteWrapper;->a(Landroid/graphics/drawable/Drawable;Lo/SQLiteReadOnlyDatabaseException$Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v3, v2

    .line 149
    :cond_4
    new-instance v0, Lo/SQLiteException;

    invoke-direct {v0, v3}, Lo/SQLiteException;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    .line 150
    iget-object v0, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {p1}, Lo/SQLiteStatementInfo;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/SQLiteException;->e(I)V

    .line 153
    iget-object p1, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    iget-object v0, p0, Lo/SqliteWrapper;->b:Lcom/facebook/drawee/generic/RoundingParams;

    .line 154
    invoke-static {p1, v0}, Lo/DdmHandleAppName;->c(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 157
    new-instance v0, Lo/SQLiteTransactionListener;

    invoke-direct {v0, p1}, Lo/SQLiteTransactionListener;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lo/SqliteWrapper;->d:Lo/SQLiteTransactionListener;

    .line 158
    iget-object p1, p0, Lo/SqliteWrapper;->d:Lo/SQLiteTransactionListener;

    invoke-virtual {p1}, Lo/SQLiteTransactionListener;->mutate()Landroid/graphics/drawable/Drawable;

    .line 160
    invoke-direct {p0}, Lo/SqliteWrapper;->a()V

    .line 161
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 162
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_5
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Lo/SQLiteReadOnlyDatabaseException$Activity;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 181
    iget-object v0, p0, Lo/SqliteWrapper;->b:Lcom/facebook/drawee/generic/RoundingParams;

    iget-object v1, p0, Lo/SqliteWrapper;->c:Landroid/content/res/Resources;

    invoke-static {p1, v0, v1}, Lo/DdmHandleAppName;->c(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 182
    invoke-static {p1, p2}, Lo/DdmHandleAppName;->b(Landroid/graphics/drawable/Drawable;Lo/SQLiteReadOnlyDatabaseException$Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 1

    .line 191
    iget-object v0, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lo/SQLiteException;->e()V

    .line 194
    iget-object v0, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {v0}, Lo/SQLiteException;->d()V

    .line 196
    invoke-direct {p0}, Lo/SqliteWrapper;->b()V

    const/4 v0, 0x1

    .line 198
    invoke-direct {p0, v0}, Lo/SqliteWrapper;->e(I)V

    .line 199
    iget-object v0, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {v0}, Lo/SQLiteException;->c()V

    .line 200
    iget-object v0, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {v0}, Lo/SQLiteException;->b()V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 220
    iget-object v0, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {v0, p1}, Lo/SQLiteException;->c(I)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    .line 205
    invoke-direct {p0, v0}, Lo/SqliteWrapper;->a(I)V

    const/4 v0, 0x2

    .line 206
    invoke-direct {p0, v0}, Lo/SqliteWrapper;->a(I)V

    const/4 v0, 0x3

    .line 207
    invoke-direct {p0, v0}, Lo/SqliteWrapper;->a(I)V

    const/4 v0, 0x4

    .line 208
    invoke-direct {p0, v0}, Lo/SqliteWrapper;->a(I)V

    const/4 v0, 0x5

    .line 209
    invoke-direct {p0, v0}, Lo/SqliteWrapper;->a(I)V

    return-void
.end method

.method private b(F)V
    .locals 3

    .line 225
    iget-object v0, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lo/SQLiteException;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v2, 0x3f7fbe77    # 0.999f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    .line 232
    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_1

    .line 233
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 235
    :cond_1
    invoke-direct {p0, v1}, Lo/SqliteWrapper;->a(I)V

    goto :goto_0

    .line 237
    :cond_2
    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_3

    .line 238
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    .line 240
    :cond_3
    invoke-direct {p0, v1}, Lo/SqliteWrapper;->e(I)V

    :goto_0
    const v1, 0x461c4000    # 10000.0f

    mul-float p1, p1, v1

    .line 243
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method

.method private c(Landroid/graphics/drawable/Drawable;Lo/SQLiteReadOnlyDatabaseException$Activity;Landroid/graphics/PointF;Landroid/graphics/ColorFilter;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 172
    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 173
    invoke-static {p1, p2, p3}, Lo/DdmHandleAppName;->c(Landroid/graphics/drawable/Drawable;Lo/SQLiteReadOnlyDatabaseException$Activity;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private d(ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p2, :cond_0

    .line 343
    iget-object p2, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lo/SQLiteException;->b(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lo/SqliteWrapper;->b:Lcom/facebook/drawee/generic/RoundingParams;

    iget-object v1, p0, Lo/SqliteWrapper;->c:Landroid/content/res/Resources;

    invoke-static {p2, v0, v1}, Lo/DdmHandleAppName;->c(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 347
    invoke-direct {p0, p1}, Lo/SqliteWrapper;->f(I)Lo/SQLiteDebug;

    move-result-object p1

    invoke-interface {p1, p2}, Lo/SQLiteDebug;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private e()V
    .locals 2

    .line 187
    iget-object v0, p0, Lo/SqliteWrapper;->j:Lo/SQLiteDirectCursorDriver;

    iget-object v1, p0, Lo/SqliteWrapper;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lo/SQLiteDirectCursorDriver;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private e(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 214
    iget-object v0, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {v0, p1}, Lo/SQLiteException;->b(I)V

    :cond_0
    return-void
.end method

.method private f(I)Lo/SQLiteDebug;
    .locals 1

    .line 327
    iget-object v0, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {v0, p1}, Lo/SQLiteException;->d(I)Lo/SQLiteDebug;

    move-result-object p1

    .line 328
    invoke-interface {p1}, Lo/SQLiteDebug;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lo/SQLiteFullException;

    if-eqz v0, :cond_0

    .line 329
    invoke-interface {p1}, Lo/SQLiteDebug;->e()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lo/SQLiteFullException;

    .line 331
    :cond_0
    invoke-interface {p1}, Lo/SQLiteDebug;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lo/SQLiteProgram;

    if-eqz v0, :cond_1

    .line 332
    invoke-interface {p1}, Lo/SQLiteDebug;->e()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lo/SQLiteProgram;

    :cond_1
    return-object p1
.end method

.method private i(I)Lo/SQLiteProgram;
    .locals 1

    .line 357
    invoke-direct {p0, p1}, Lo/SqliteWrapper;->f(I)Lo/SQLiteDebug;

    move-result-object p1

    .line 358
    instance-of v0, p1, Lo/SQLiteProgram;

    if-eqz v0, :cond_0

    .line 359
    check-cast p1, Lo/SQLiteProgram;

    return-object p1

    .line 361
    :cond_0
    sget-object v0, Lo/SQLiteReadOnlyDatabaseException$Activity;->c:Lo/SQLiteReadOnlyDatabaseException$Activity;

    invoke-static {p1, v0}, Lo/DdmHandleAppName;->a(Lo/SQLiteDebug;Lo/SQLiteReadOnlyDatabaseException$Activity;)Lo/SQLiteProgram;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 301
    iget-object p1, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {p1}, Lo/SQLiteException;->e()V

    .line 302
    invoke-direct {p0}, Lo/SqliteWrapper;->b()V

    .line 303
    iget-object p1, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lo/SQLiteException;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 304
    invoke-direct {p0, v0}, Lo/SqliteWrapper;->e(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 306
    invoke-direct {p0, p1}, Lo/SqliteWrapper;->e(I)V

    .line 308
    :goto_0
    iget-object p1, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {p1}, Lo/SQLiteException;->b()V

    return-void
.end method

.method public a(Lo/SQLiteReadOnlyDatabaseException$Activity;)V
    .locals 1

    .line 393
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 394
    invoke-direct {p0, v0}, Lo/SqliteWrapper;->i(I)Lo/SQLiteProgram;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/SQLiteProgram;->b(Lo/SQLiteReadOnlyDatabaseException$Activity;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 444
    iget-object v0, p0, Lo/SqliteWrapper;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/SqliteWrapper;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    .line 416
    invoke-direct {p0, v0, p1}, Lo/SqliteWrapper;->d(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 255
    invoke-direct {p0}, Lo/SqliteWrapper;->e()V

    .line 256
    invoke-direct {p0}, Lo/SqliteWrapper;->a()V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 377
    iget-object v0, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {v0, p1}, Lo/SQLiteException;->e(I)V

    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lo/SqliteWrapper;->d:Lo/SQLiteTransactionListener;

    invoke-virtual {v0, p1}, Lo/SQLiteTransactionListener;->e(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 250
    iget-object v0, p0, Lo/SqliteWrapper;->d:Lo/SQLiteTransactionListener;

    return-object v0
.end method

.method public d(I)V
    .locals 1

    .line 474
    iget-object v0, p0, Lo/SqliteWrapper;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/SqliteWrapper;->e(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 1

    .line 289
    iget-object p1, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {p1}, Lo/SQLiteException;->e()V

    .line 290
    invoke-direct {p0}, Lo/SqliteWrapper;->b()V

    .line 291
    iget-object p1, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lo/SQLiteException;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 292
    invoke-direct {p0, v0}, Lo/SqliteWrapper;->e(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 294
    invoke-direct {p0, p1}, Lo/SqliteWrapper;->e(I)V

    .line 296
    :goto_0
    iget-object p1, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {p1}, Lo/SQLiteException;->b()V

    return-void
.end method

.method public e(FZ)V
    .locals 2

    .line 276
    iget-object v0, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lo/SQLiteException;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {v0}, Lo/SQLiteException;->e()V

    .line 280
    invoke-direct {p0, p1}, Lo/SqliteWrapper;->b(F)V

    if-eqz p2, :cond_1

    .line 282
    iget-object p1, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {p1}, Lo/SQLiteException;->c()V

    .line 284
    :cond_1
    iget-object p1, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {p1}, Lo/SQLiteException;->b()V

    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x5

    .line 459
    invoke-direct {p0, v0, p1}, Lo/SqliteWrapper;->d(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;FZ)V
    .locals 2

    .line 261
    iget-object v0, p0, Lo/SqliteWrapper;->b:Lcom/facebook/drawee/generic/RoundingParams;

    iget-object v1, p0, Lo/SqliteWrapper;->c:Landroid/content/res/Resources;

    invoke-static {p1, v0, v1}, Lo/DdmHandleAppName;->c(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 262
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 263
    iget-object v0, p0, Lo/SqliteWrapper;->j:Lo/SQLiteDirectCursorDriver;

    invoke-virtual {v0, p1}, Lo/SQLiteDirectCursorDriver;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 264
    iget-object p1, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {p1}, Lo/SQLiteException;->e()V

    .line 265
    invoke-direct {p0}, Lo/SqliteWrapper;->b()V

    const/4 p1, 0x2

    .line 266
    invoke-direct {p0, p1}, Lo/SqliteWrapper;->e(I)V

    .line 267
    invoke-direct {p0, p2}, Lo/SqliteWrapper;->b(F)V

    if-eqz p3, :cond_0

    .line 269
    iget-object p1, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {p1}, Lo/SQLiteException;->c()V

    .line 271
    :cond_0
    iget-object p1, p0, Lo/SqliteWrapper;->a:Lo/SQLiteException;

    invoke-virtual {p1}, Lo/SQLiteException;->b()V

    return-void
.end method
