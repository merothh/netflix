.class public Lo/SQLiteStatementInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lo/SQLiteReadOnlyDatabaseException$Activity;

.field public static final d:Lo/SQLiteReadOnlyDatabaseException$Activity;


# instance fields
.field private b:Landroid/content/res/Resources;

.field private c:I

.field private e:F

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Lo/SQLiteReadOnlyDatabaseException$Activity;

.field private j:Lo/SQLiteReadOnlyDatabaseException$Activity;

.field private k:Lo/SQLiteReadOnlyDatabaseException$Activity;

.field private l:Lo/SQLiteReadOnlyDatabaseException$Activity;

.field private m:Lo/SQLiteReadOnlyDatabaseException$Activity;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/Matrix;

.field private p:Landroid/graphics/ColorFilter;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/graphics/PointF;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/facebook/drawee/generic/RoundingParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-object v0, Lo/SQLiteReadOnlyDatabaseException$Activity;->f:Lo/SQLiteReadOnlyDatabaseException$Activity;

    sput-object v0, Lo/SQLiteStatementInfo;->a:Lo/SQLiteReadOnlyDatabaseException$Activity;

    .line 36
    sget-object v0, Lo/SQLiteReadOnlyDatabaseException$Activity;->i:Lo/SQLiteReadOnlyDatabaseException$Activity;

    sput-object v0, Lo/SQLiteStatementInfo;->d:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lo/SQLiteStatementInfo;->b:Landroid/content/res/Resources;

    .line 70
    invoke-direct {p0}, Lo/SQLiteStatementInfo;->r()V

    return-void
.end method

.method private r()V
    .locals 2

    const/16 v0, 0x12c

    .line 81
    iput v0, p0, Lo/SQLiteStatementInfo;->c:I

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lo/SQLiteStatementInfo;->e:F

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lo/SQLiteStatementInfo;->f:Landroid/graphics/drawable/Drawable;

    .line 86
    sget-object v1, Lo/SQLiteStatementInfo;->a:Lo/SQLiteReadOnlyDatabaseException$Activity;

    iput-object v1, p0, Lo/SQLiteStatementInfo;->j:Lo/SQLiteReadOnlyDatabaseException$Activity;

    .line 88
    iput-object v0, p0, Lo/SQLiteStatementInfo;->g:Landroid/graphics/drawable/Drawable;

    .line 89
    iput-object v1, p0, Lo/SQLiteStatementInfo;->i:Lo/SQLiteReadOnlyDatabaseException$Activity;

    .line 91
    iput-object v0, p0, Lo/SQLiteStatementInfo;->h:Landroid/graphics/drawable/Drawable;

    .line 92
    iput-object v1, p0, Lo/SQLiteStatementInfo;->k:Lo/SQLiteReadOnlyDatabaseException$Activity;

    .line 94
    iput-object v0, p0, Lo/SQLiteStatementInfo;->n:Landroid/graphics/drawable/Drawable;

    .line 95
    iput-object v1, p0, Lo/SQLiteStatementInfo;->l:Lo/SQLiteReadOnlyDatabaseException$Activity;

    .line 97
    sget-object v1, Lo/SQLiteStatementInfo;->d:Lo/SQLiteReadOnlyDatabaseException$Activity;

    iput-object v1, p0, Lo/SQLiteStatementInfo;->m:Lo/SQLiteReadOnlyDatabaseException$Activity;

    .line 98
    iput-object v0, p0, Lo/SQLiteStatementInfo;->o:Landroid/graphics/Matrix;

    .line 99
    iput-object v0, p0, Lo/SQLiteStatementInfo;->s:Landroid/graphics/PointF;

    .line 100
    iput-object v0, p0, Lo/SQLiteStatementInfo;->p:Landroid/graphics/ColorFilter;

    .line 102
    iput-object v0, p0, Lo/SQLiteStatementInfo;->r:Landroid/graphics/drawable/Drawable;

    .line 103
    iput-object v0, p0, Lo/SQLiteStatementInfo;->t:Ljava/util/List;

    .line 104
    iput-object v0, p0, Lo/SQLiteStatementInfo;->q:Landroid/graphics/drawable/Drawable;

    .line 106
    iput-object v0, p0, Lo/SQLiteStatementInfo;->x:Lcom/facebook/drawee/generic/RoundingParams;

    return-void
.end method

.method private v()V
    .locals 2

    .line 632
    iget-object v0, p0, Lo/SQLiteStatementInfo;->t:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 633
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 634
    invoke-static {v1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/content/res/Resources;
    .locals 1

    .line 125
    iget-object v0, p0, Lo/SQLiteStatementInfo;->b:Landroid/content/res/Resources;

    return-object v0
.end method

.method public a(F)Lo/SQLiteStatementInfo;
    .locals 0

    .line 158
    iput p1, p0, Lo/SQLiteStatementInfo;->e:F

    return-object p0
.end method

.method public a(I)Lo/SQLiteStatementInfo;
    .locals 0

    .line 137
    iput p1, p0, Lo/SQLiteStatementInfo;->c:I

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lo/SQLiteStatementInfo;
    .locals 0

    .line 252
    iput-object p1, p0, Lo/SQLiteStatementInfo;->g:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public a(Lo/SQLiteReadOnlyDatabaseException$Activity;)Lo/SQLiteStatementInfo;
    .locals 0

    .line 360
    iput-object p1, p0, Lo/SQLiteStatementInfo;->k:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object p0
.end method

.method public b()I
    .locals 1

    .line 145
    iget v0, p0, Lo/SQLiteStatementInfo;->c:I

    return v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lo/SQLiteStatementInfo;
    .locals 0

    .line 404
    iput-object p1, p0, Lo/SQLiteStatementInfo;->n:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public b(Lo/SQLiteReadOnlyDatabaseException$Activity;)Lo/SQLiteStatementInfo;
    .locals 0

    .line 208
    iput-object p1, p0, Lo/SQLiteStatementInfo;->j:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object p0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 195
    iget-object v0, p0, Lo/SQLiteStatementInfo;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Lo/SQLiteStatementInfo;
    .locals 0

    .line 328
    iput-object p1, p0, Lo/SQLiteStatementInfo;->h:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public c(Lcom/facebook/drawee/generic/RoundingParams;)Lo/SQLiteStatementInfo;
    .locals 0

    .line 619
    iput-object p1, p0, Lo/SQLiteStatementInfo;->x:Lcom/facebook/drawee/generic/RoundingParams;

    return-object p0
.end method

.method public c(Lo/SQLiteReadOnlyDatabaseException$Activity;)Lo/SQLiteStatementInfo;
    .locals 0

    .line 436
    iput-object p1, p0, Lo/SQLiteStatementInfo;->l:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object p0
.end method

.method public d()F
    .locals 1

    .line 166
    iget v0, p0, Lo/SQLiteStatementInfo;->e:F

    return v0
.end method

.method public d(Landroid/graphics/drawable/Drawable;)Lo/SQLiteStatementInfo;
    .locals 0

    .line 176
    iput-object p1, p0, Lo/SQLiteStatementInfo;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public d(Lo/SQLiteReadOnlyDatabaseException$Activity;)Lo/SQLiteStatementInfo;
    .locals 0

    .line 483
    iput-object p1, p0, Lo/SQLiteStatementInfo;->m:Lo/SQLiteReadOnlyDatabaseException$Activity;

    const/4 p1, 0x0

    .line 484
    iput-object p1, p0, Lo/SQLiteStatementInfo;->o:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public e()Lo/SQLiteReadOnlyDatabaseException$Activity;
    .locals 1

    .line 214
    iget-object v0, p0, Lo/SQLiteStatementInfo;->j:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object v0
.end method

.method public e(Landroid/graphics/drawable/Drawable;)Lo/SQLiteStatementInfo;
    .locals 0

    .line 541
    iput-object p1, p0, Lo/SQLiteStatementInfo;->r:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public e(Lo/SQLiteReadOnlyDatabaseException$Activity;)Lo/SQLiteStatementInfo;
    .locals 0

    .line 284
    iput-object p1, p0, Lo/SQLiteStatementInfo;->i:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object p0
.end method

.method public f()Lo/SQLiteReadOnlyDatabaseException$Activity;
    .locals 1

    .line 366
    iget-object v0, p0, Lo/SQLiteStatementInfo;->k:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object v0
.end method

.method public f(Landroid/graphics/drawable/Drawable;)Lo/SQLiteStatementInfo;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 574
    iput-object p1, p0, Lo/SQLiteStatementInfo;->t:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 576
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/SQLiteStatementInfo;->t:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public g()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 347
    iget-object v0, p0, Lo/SQLiteStatementInfo;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public h()Lo/SQLiteReadOnlyDatabaseException$Activity;
    .locals 1

    .line 290
    iget-object v0, p0, Lo/SQLiteStatementInfo;->i:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object v0
.end method

.method public i()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 423
    iget-object v0, p0, Lo/SQLiteStatementInfo;->n:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public i(Landroid/graphics/drawable/Drawable;)Lo/SQLiteStatementInfo;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 596
    iput-object p1, p0, Lo/SQLiteStatementInfo;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 598
    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    .line 599
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 600
    iput-object v0, p0, Lo/SQLiteStatementInfo;->q:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p0
.end method

.method public j()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 271
    iget-object v0, p0, Lo/SQLiteStatementInfo;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public k()Lo/SQLiteReadOnlyDatabaseException$Activity;
    .locals 1

    .line 490
    iget-object v0, p0, Lo/SQLiteStatementInfo;->m:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object v0
.end method

.method public l()Landroid/graphics/PointF;
    .locals 1

    .line 513
    iget-object v0, p0, Lo/SQLiteStatementInfo;->s:Landroid/graphics/PointF;

    return-object v0
.end method

.method public m()Landroid/graphics/ColorFilter;
    .locals 1

    .line 531
    iget-object v0, p0, Lo/SQLiteStatementInfo;->p:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public n()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 549
    iget-object v0, p0, Lo/SQLiteStatementInfo;->r:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public o()Lo/SQLiteReadOnlyDatabaseException$Activity;
    .locals 1

    .line 442
    iget-object v0, p0, Lo/SQLiteStatementInfo;->l:Lo/SQLiteReadOnlyDatabaseException$Activity;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lo/SQLiteStatementInfo;->t:Ljava/util/List;

    return-object v0
.end method

.method public q()Lo/SqliteWrapper;
    .locals 1

    .line 643
    invoke-direct {p0}, Lo/SQLiteStatementInfo;->v()V

    .line 644
    new-instance v0, Lo/SqliteWrapper;

    invoke-direct {v0, p0}, Lo/SqliteWrapper;-><init>(Lo/SQLiteStatementInfo;)V

    return-object v0
.end method

.method public s()Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1

    .line 628
    iget-object v0, p0, Lo/SQLiteStatementInfo;->x:Lcom/facebook/drawee/generic/RoundingParams;

    return-object v0
.end method

.method public t()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 609
    iget-object v0, p0, Lo/SQLiteStatementInfo;->q:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
