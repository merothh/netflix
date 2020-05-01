.class Lo/Readable$Application;
.super Lo/Readable;
.source ""

# interfaces
.implements Lo/NumberFormatException$Activity;
.implements Lo/NumberFormatException$Dialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Readable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Readable$Application$TaskDescription;,
        Lo/Readable$Application$StateListAnimator;,
        Lo/Readable$Application$ActionBar;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:I

.field protected final b:Ljava/lang/Object;

.field protected final c:Ljava/lang/Object;

.field protected final d:Ljava/lang/Object;

.field protected final e:Ljava/lang/Object;

.field protected final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/Readable$Application$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field protected final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/Readable$Application$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Z

.field protected j:Z

.field private final k:Lo/Readable$Dialog;

.field private l:Lo/NumberFormatException$ActionBar;

.field private o:Lo/NumberFormatException$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.intent.category.LIVE_AUDIO"

    .line 223
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lo/Readable$Application;->f:Ljava/util/ArrayList;

    .line 226
    sget-object v1, Lo/Readable$Application;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.intent.category.LIVE_VIDEO"

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lo/Readable$Application;->n:Ljava/util/ArrayList;

    .line 235
    sget-object v1, Lo/Readable$Application;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/Readable$Dialog;)V
    .locals 1

    .line 263
    invoke-direct {p0, p1}, Lo/Readable;-><init>(Landroid/content/Context;)V

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/Readable$Application;->h:Ljava/util/ArrayList;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/Readable$Application;->g:Ljava/util/ArrayList;

    .line 264
    iput-object p2, p0, Lo/Readable$Application;->k:Lo/Readable$Dialog;

    .line 265
    invoke-static {p1}, Lo/NumberFormatException;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lo/Readable$Application;->c:Ljava/lang/Object;

    .line 266
    invoke-virtual {p0}, Lo/Readable$Application;->k()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lo/Readable$Application;->e:Ljava/lang/Object;

    .line 267
    invoke-virtual {p0}, Lo/Readable$Application;->l()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lo/Readable$Application;->d:Ljava/lang/Object;

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 270
    iget-object p2, p0, Lo/Readable$Application;->c:Ljava/lang/Object;

    sget v0, Lo/Iterable$TaskDescription;->a:I

    .line 271
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 270
    invoke-static {p2, p1, v0}, Lo/NumberFormatException;->e(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/Readable$Application;->b:Ljava/lang/Object;

    .line 273
    invoke-direct {p0}, Lo/Readable$Application;->o()V

    return-void
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 2

    .line 333
    invoke-virtual {p0, p1}, Lo/Readable$Application;->g(Ljava/lang/Object;)Lo/Readable$Application$StateListAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 334
    invoke-virtual {p0, p1}, Lo/Readable$Application;->h(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 335
    invoke-direct {p0, p1}, Lo/Readable$Application;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 336
    new-instance v1, Lo/Readable$Application$ActionBar;

    invoke-direct {v1, p1, v0}, Lo/Readable$Application$ActionBar;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0, v1}, Lo/Readable$Application;->e(Lo/Readable$Application$ActionBar;)V

    .line 338
    iget-object p1, p0, Lo/Readable$Application;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private j(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 348
    invoke-virtual {p0}, Lo/Readable$Application;->g()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p1, "DEFAULT_ROUTE"

    goto :goto_1

    .line 349
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v2, [Ljava/lang/Object;

    .line 350
    invoke-virtual {p0, p1}, Lo/Readable$Application;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "ROUTE_%08x"

    invoke-static {v0, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 351
    :goto_1
    invoke-virtual {p0, p1}, Lo/Readable$Application;->e(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    return-object p1

    :cond_2
    const/4 v0, 0x2

    const/4 v3, 0x2

    .line 355
    :goto_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%s_%d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 356
    invoke-virtual {p0, v4}, Lo/Readable$Application;->e(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private o()V
    .locals 3

    .line 322
    invoke-virtual {p0}, Lo/Readable$Application;->i()V

    .line 324
    iget-object v0, p0, Lo/Readable$Application;->c:Ljava/lang/Object;

    invoke-static {v0}, Lo/NumberFormatException;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 325
    invoke-direct {p0, v2}, Lo/Readable$Application;->a(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {p0}, Lo/Readable$Application;->j()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Lo/Object$LoaderManager;)I
    .locals 3

    .line 564
    iget-object v0, p0, Lo/Readable$Application;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 566
    iget-object v2, p0, Lo/Readable$Application;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Readable$Application$StateListAnimator;

    iget-object v2, v2, Lo/Readable$Application$StateListAnimator;->e:Lo/Object$LoaderManager;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 0

    .line 444
    invoke-virtual {p0, p1}, Lo/Readable$Application;->g(Ljava/lang/Object;)Lo/Readable$Application$StateListAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 446
    iget-object p1, p1, Lo/Readable$Application$StateListAnimator;->e:Lo/Object$LoaderManager;

    invoke-virtual {p1, p2}, Lo/Object$LoaderManager;->c(I)V

    :cond_0
    return-void
.end method

.method protected a(Lo/Readable$Application$ActionBar;Lo/NoSuchFieldException$Application;)V
    .locals 2

    .line 598
    iget-object v0, p1, Lo/Readable$Application$ActionBar;->a:Ljava/lang/Object;

    invoke-static {v0}, Lo/NumberFormatException$Application;->b(Ljava/lang/Object;)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 601
    sget-object v1, Lo/Readable$Application;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Lo/NoSuchFieldException$Application;->d(Ljava/util/Collection;)Lo/NoSuchFieldException$Application;

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 604
    sget-object v0, Lo/Readable$Application;->n:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lo/NoSuchFieldException$Application;->d(Ljava/util/Collection;)Lo/NoSuchFieldException$Application;

    .line 607
    :cond_1
    iget-object v0, p1, Lo/Readable$Application$ActionBar;->a:Ljava/lang/Object;

    .line 608
    invoke-static {v0}, Lo/NumberFormatException$Application;->c(Ljava/lang/Object;)I

    move-result v0

    .line 607
    invoke-virtual {p2, v0}, Lo/NoSuchFieldException$Application;->e(I)Lo/NoSuchFieldException$Application;

    .line 609
    iget-object v0, p1, Lo/Readable$Application$ActionBar;->a:Ljava/lang/Object;

    .line 610
    invoke-static {v0}, Lo/NumberFormatException$Application;->d(Ljava/lang/Object;)I

    move-result v0

    .line 609
    invoke-virtual {p2, v0}, Lo/NoSuchFieldException$Application;->c(I)Lo/NoSuchFieldException$Application;

    .line 611
    iget-object v0, p1, Lo/Readable$Application$ActionBar;->a:Ljava/lang/Object;

    .line 612
    invoke-static {v0}, Lo/NumberFormatException$Application;->e(Ljava/lang/Object;)I

    move-result v0

    .line 611
    invoke-virtual {p2, v0}, Lo/NoSuchFieldException$Application;->d(I)Lo/NoSuchFieldException$Application;

    .line 613
    iget-object v0, p1, Lo/Readable$Application$ActionBar;->a:Ljava/lang/Object;

    .line 614
    invoke-static {v0}, Lo/NumberFormatException$Application;->a(Ljava/lang/Object;)I

    move-result v0

    .line 613
    invoke-virtual {p2, v0}, Lo/NoSuchFieldException$Application;->b(I)Lo/NoSuchFieldException$Application;

    .line 615
    iget-object p1, p1, Lo/Readable$Application$ActionBar;->a:Ljava/lang/Object;

    .line 616
    invoke-static {p1}, Lo/NumberFormatException$Application;->h(Ljava/lang/Object;)I

    move-result p1

    .line 615
    invoke-virtual {p2, p1}, Lo/NoSuchFieldException$Application;->f(I)Lo/NoSuchFieldException$Application;

    return-void
.end method

.method public b(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 316
    invoke-direct {p0, p1}, Lo/Readable$Application;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p0}, Lo/Readable$Application;->j()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public b(Lo/Object$LoaderManager;)V
    .locals 1

    .line 500
    invoke-virtual {p1}, Lo/Object$LoaderManager;->t()Lo/NoSuchFieldError;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 501
    invoke-virtual {p0, p1}, Lo/Readable$Application;->a(Lo/Object$LoaderManager;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 503
    iget-object v0, p0, Lo/Readable$Application;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Readable$Application$StateListAnimator;

    .line 504
    invoke-virtual {p0, p1}, Lo/Readable$Application;->c(Lo/Readable$Application$StateListAnimator;)V

    :cond_0
    return-void
.end method

.method public c(ILjava/lang/Object;)V
    .locals 1

    .line 405
    iget-object p1, p0, Lo/Readable$Application;->c:Ljava/lang/Object;

    const v0, 0x800003

    invoke-static {p1, v0}, Lo/NumberFormatException;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    if-eq p2, p1, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-virtual {p0, p2}, Lo/Readable$Application;->g(Ljava/lang/Object;)Lo/Readable$Application$StateListAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 414
    iget-object p1, p1, Lo/Readable$Application$StateListAnimator;->e:Lo/Object$LoaderManager;

    invoke-virtual {p1}, Lo/Object$LoaderManager;->s()V

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {p0, p2}, Lo/Readable$Application;->h(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 420
    iget-object p2, p0, Lo/Readable$Application;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Readable$Application$ActionBar;

    .line 421
    iget-object p2, p0, Lo/Readable$Application;->k:Lo/Readable$Dialog;

    iget-object p1, p1, Lo/Readable$Application$ActionBar;->b:Ljava/lang/String;

    invoke-interface {p2, p1}, Lo/Readable$Dialog;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 3

    .line 387
    invoke-virtual {p0, p1}, Lo/Readable$Application;->g(Ljava/lang/Object;)Lo/Readable$Application$StateListAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p0, p1}, Lo/Readable$Application;->h(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 390
    iget-object v1, p0, Lo/Readable$Application;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Readable$Application$ActionBar;

    .line 391
    invoke-static {p1}, Lo/NumberFormatException$Application;->e(Ljava/lang/Object;)I

    move-result p1

    .line 392
    iget-object v1, v0, Lo/Readable$Application$ActionBar;->e:Lo/NoSuchFieldException;

    invoke-virtual {v1}, Lo/NoSuchFieldException;->q()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 393
    new-instance v1, Lo/NoSuchFieldException$Application;

    iget-object v2, v0, Lo/Readable$Application$ActionBar;->e:Lo/NoSuchFieldException;

    invoke-direct {v1, v2}, Lo/NoSuchFieldException$Application;-><init>(Lo/NoSuchFieldException;)V

    .line 395
    invoke-virtual {v1, p1}, Lo/NoSuchFieldException$Application;->d(I)Lo/NoSuchFieldException$Application;

    move-result-object p1

    .line 396
    invoke-virtual {p1}, Lo/NoSuchFieldException$Application;->a()Lo/NoSuchFieldException;

    move-result-object p1

    iput-object p1, v0, Lo/Readable$Application$ActionBar;->e:Lo/NoSuchFieldException;

    .line 397
    invoke-virtual {p0}, Lo/Readable$Application;->j()V

    :cond_0
    return-void
.end method

.method public c(Lo/NoSuchMethodException;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 291
    invoke-virtual {p1}, Lo/NoSuchMethodException;->a()Lo/OutOfMemoryError;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Lo/OutOfMemoryError;->b()Ljava/util/List;

    move-result-object v1

    .line 293
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 295
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "android.media.intent.category.LIVE_AUDIO"

    .line 296
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    or-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const-string v5, "android.media.intent.category.LIVE_VIDEO"

    .line 298
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    const/high16 v4, 0x800000

    or-int/2addr v3, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p1}, Lo/NoSuchMethodException;->c()Z

    move-result v0

    move p1, v0

    move v0, v3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 307
    :goto_2
    iget v1, p0, Lo/Readable$Application;->a:I

    if-ne v1, v0, :cond_4

    iget-boolean v1, p0, Lo/Readable$Application;->i:Z

    if-eq v1, p1, :cond_5

    .line 308
    :cond_4
    iput v0, p0, Lo/Readable$Application;->a:I

    .line 309
    iput-boolean p1, p0, Lo/Readable$Application;->i:Z

    .line 310
    invoke-direct {p0}, Lo/Readable$Application;->o()V

    :cond_5
    return-void
.end method

.method public c(Lo/Object$LoaderManager;)V
    .locals 2

    .line 487
    invoke-virtual {p1}, Lo/Object$LoaderManager;->t()Lo/NoSuchFieldError;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 488
    invoke-virtual {p0, p1}, Lo/Readable$Application;->a(Lo/Object$LoaderManager;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 490
    iget-object v0, p0, Lo/Readable$Application;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Readable$Application$StateListAnimator;

    .line 491
    iget-object v0, p1, Lo/Readable$Application$StateListAnimator;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/NumberFormatException$Application;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 492
    iget-object v0, p1, Lo/Readable$Application$StateListAnimator;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lo/NumberFormatException$Fragment;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 493
    iget-object v0, p0, Lo/Readable$Application;->c:Ljava/lang/Object;

    iget-object p1, p1, Lo/Readable$Application$StateListAnimator;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Lo/NumberFormatException;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected c(Lo/Readable$Application$StateListAnimator;)V
    .locals 2

    .line 620
    iget-object v0, p1, Lo/Readable$Application$StateListAnimator;->b:Ljava/lang/Object;

    iget-object v1, p1, Lo/Readable$Application$StateListAnimator;->e:Lo/Object$LoaderManager;

    .line 621
    invoke-virtual {v1}, Lo/Object$LoaderManager;->b()Ljava/lang/String;

    move-result-object v1

    .line 620
    invoke-static {v0, v1}, Lo/NumberFormatException$Fragment;->c(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 622
    iget-object v0, p1, Lo/Readable$Application$StateListAnimator;->b:Ljava/lang/Object;

    iget-object v1, p1, Lo/Readable$Application$StateListAnimator;->e:Lo/Object$LoaderManager;

    .line 623
    invoke-virtual {v1}, Lo/Object$LoaderManager;->f()I

    move-result v1

    .line 622
    invoke-static {v0, v1}, Lo/NumberFormatException$Fragment;->b(Ljava/lang/Object;I)V

    .line 624
    iget-object v0, p1, Lo/Readable$Application$StateListAnimator;->b:Ljava/lang/Object;

    iget-object v1, p1, Lo/Readable$Application$StateListAnimator;->e:Lo/Object$LoaderManager;

    .line 625
    invoke-virtual {v1}, Lo/Object$LoaderManager;->j()I

    move-result v1

    .line 624
    invoke-static {v0, v1}, Lo/NumberFormatException$Fragment;->e(Ljava/lang/Object;I)V

    .line 626
    iget-object v0, p1, Lo/Readable$Application$StateListAnimator;->b:Ljava/lang/Object;

    iget-object v1, p1, Lo/Readable$Application$StateListAnimator;->e:Lo/Object$LoaderManager;

    .line 627
    invoke-virtual {v1}, Lo/Object$LoaderManager;->m()I

    move-result v1

    .line 626
    invoke-static {v0, v1}, Lo/NumberFormatException$Fragment;->d(Ljava/lang/Object;I)V

    .line 628
    iget-object v0, p1, Lo/Readable$Application$StateListAnimator;->b:Ljava/lang/Object;

    iget-object v1, p1, Lo/Readable$Application$StateListAnimator;->e:Lo/Object$LoaderManager;

    .line 629
    invoke-virtual {v1}, Lo/Object$LoaderManager;->n()I

    move-result v1

    .line 628
    invoke-static {v0, v1}, Lo/NumberFormatException$Fragment;->c(Ljava/lang/Object;I)V

    .line 630
    iget-object v0, p1, Lo/Readable$Application$StateListAnimator;->b:Ljava/lang/Object;

    iget-object p1, p1, Lo/Readable$Application$StateListAnimator;->e:Lo/Object$LoaderManager;

    .line 631
    invoke-virtual {p1}, Lo/Object$LoaderManager;->o()I

    move-result p1

    .line 630
    invoke-static {v0, p1}, Lo/NumberFormatException$Fragment;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public d(Ljava/lang/String;)Lo/NoSuchFieldError$ActionBar;
    .locals 1

    .line 278
    invoke-virtual {p0, p1}, Lo/Readable$Application;->e(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 280
    iget-object v0, p0, Lo/Readable$Application;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Readable$Application$ActionBar;

    .line 281
    new-instance v0, Lo/Readable$Application$TaskDescription;

    iget-object p1, p1, Lo/Readable$Application$ActionBar;->a:Ljava/lang/Object;

    invoke-direct {v0, p1}, Lo/Readable$Application$TaskDescription;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    .line 364
    invoke-virtual {p0, p1}, Lo/Readable$Application;->g(Ljava/lang/Object;)Lo/Readable$Application$StateListAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 365
    invoke-virtual {p0, p1}, Lo/Readable$Application;->h(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 367
    iget-object v0, p0, Lo/Readable$Application;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 368
    invoke-virtual {p0}, Lo/Readable$Application;->j()V

    :cond_0
    return-void
.end method

.method public d(Lo/Object$LoaderManager;)V
    .locals 2

    .line 460
    invoke-virtual {p1}, Lo/Object$LoaderManager;->t()Lo/NoSuchFieldError;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 461
    iget-object v0, p0, Lo/Readable$Application;->c:Ljava/lang/Object;

    iget-object v1, p0, Lo/Readable$Application;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lo/NumberFormatException;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 463
    new-instance v1, Lo/Readable$Application$StateListAnimator;

    invoke-direct {v1, p1, v0}, Lo/Readable$Application$StateListAnimator;-><init>(Lo/Object$LoaderManager;Ljava/lang/Object;)V

    .line 464
    invoke-static {v0, v1}, Lo/NumberFormatException$Application;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 465
    iget-object p1, p0, Lo/Readable$Application;->d:Ljava/lang/Object;

    invoke-static {v0, p1}, Lo/NumberFormatException$Fragment;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 466
    invoke-virtual {p0, v1}, Lo/Readable$Application;->c(Lo/Readable$Application$StateListAnimator;)V

    .line 467
    iget-object p1, p0, Lo/Readable$Application;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object p1, p0, Lo/Readable$Application;->c:Ljava/lang/Object;

    invoke-static {p1, v0}, Lo/NumberFormatException;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Lo/Readable$Application;->c:Ljava/lang/Object;

    const v1, 0x800003

    invoke-static {v0, v1}, Lo/NumberFormatException;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 475
    invoke-virtual {p0, v0}, Lo/Readable$Application;->h(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 477
    iget-object v1, p0, Lo/Readable$Application;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Readable$Application$ActionBar;

    .line 478
    iget-object v0, v0, Lo/Readable$Application$ActionBar;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lo/Object$LoaderManager;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    invoke-virtual {p1}, Lo/Object$LoaderManager;->s()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected e(Ljava/lang/String;)I
    .locals 3

    .line 554
    iget-object v0, p0, Lo/Readable$Application;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 556
    iget-object v2, p0, Lo/Readable$Application;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Readable$Application$ActionBar;

    iget-object v2, v2, Lo/Readable$Application$ActionBar;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1

    .line 375
    invoke-virtual {p0, p1}, Lo/Readable$Application;->g(Ljava/lang/Object;)Lo/Readable$Application$StateListAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 376
    invoke-virtual {p0, p1}, Lo/Readable$Application;->h(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 378
    iget-object v0, p0, Lo/Readable$Application;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Readable$Application$ActionBar;

    .line 379
    invoke-virtual {p0, p1}, Lo/Readable$Application;->e(Lo/Readable$Application$ActionBar;)V

    .line 380
    invoke-virtual {p0}, Lo/Readable$Application;->j()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;I)V
    .locals 0

    .line 452
    invoke-virtual {p0, p1}, Lo/Readable$Application;->g(Ljava/lang/Object;)Lo/Readable$Application$StateListAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 454
    iget-object p1, p1, Lo/Readable$Application$StateListAnimator;->e:Lo/Object$LoaderManager;

    invoke-virtual {p1, p2}, Lo/Object$LoaderManager;->a(I)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public e(Lo/Object$LoaderManager;)V
    .locals 1

    .line 511
    invoke-virtual {p1}, Lo/Object$LoaderManager;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 517
    :cond_0
    invoke-virtual {p1}, Lo/Object$LoaderManager;->t()Lo/NoSuchFieldError;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 518
    invoke-virtual {p0, p1}, Lo/Readable$Application;->a(Lo/Object$LoaderManager;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 520
    iget-object v0, p0, Lo/Readable$Application;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Readable$Application$StateListAnimator;

    .line 521
    iget-object p1, p1, Lo/Readable$Application$StateListAnimator;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lo/Readable$Application;->f(Ljava/lang/Object;)V

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {p1}, Lo/Object$LoaderManager;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Readable$Application;->e(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 526
    iget-object v0, p0, Lo/Readable$Application;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Readable$Application$ActionBar;

    .line 527
    iget-object p1, p1, Lo/Readable$Application$ActionBar;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lo/Readable$Application;->f(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected e(Lo/Readable$Application$ActionBar;)V
    .locals 3

    .line 581
    new-instance v0, Lo/NoSuchFieldException$Application;

    iget-object v1, p1, Lo/Readable$Application$ActionBar;->b:Ljava/lang/String;

    iget-object v2, p1, Lo/Readable$Application$ActionBar;->a:Ljava/lang/Object;

    .line 582
    invoke-virtual {p0, v2}, Lo/Readable$Application;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/NoSuchFieldException$Application;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0, p1, v0}, Lo/Readable$Application;->a(Lo/Readable$Application$ActionBar;Lo/NoSuchFieldException$Application;)V

    .line 584
    invoke-virtual {v0}, Lo/NoSuchFieldException$Application;->a()Lo/NoSuchFieldException;

    move-result-object v0

    iput-object v0, p1, Lo/Readable$Application$ActionBar;->e:Lo/NoSuchFieldException;

    return-void
.end method

.method protected f(Ljava/lang/Object;)V
    .locals 3

    .line 655
    iget-object v0, p0, Lo/Readable$Application;->o:Lo/NumberFormatException$TaskDescription;

    if-nez v0, :cond_0

    .line 656
    new-instance v0, Lo/NumberFormatException$TaskDescription;

    invoke-direct {v0}, Lo/NumberFormatException$TaskDescription;-><init>()V

    iput-object v0, p0, Lo/Readable$Application;->o:Lo/NumberFormatException$TaskDescription;

    .line 658
    :cond_0
    iget-object v0, p0, Lo/Readable$Application;->o:Lo/NumberFormatException$TaskDescription;

    iget-object v1, p0, Lo/Readable$Application;->c:Ljava/lang/Object;

    const v2, 0x800003

    invoke-virtual {v0, v1, v2, p1}, Lo/NumberFormatException$TaskDescription;->e(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method protected g()Ljava/lang/Object;
    .locals 2

    .line 664
    iget-object v0, p0, Lo/Readable$Application;->l:Lo/NumberFormatException$ActionBar;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Lo/NumberFormatException$ActionBar;

    invoke-direct {v0}, Lo/NumberFormatException$ActionBar;-><init>()V

    iput-object v0, p0, Lo/Readable$Application;->l:Lo/NumberFormatException$ActionBar;

    .line 667
    :cond_0
    iget-object v0, p0, Lo/Readable$Application;->l:Lo/NumberFormatException$ActionBar;

    iget-object v1, p0, Lo/Readable$Application;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lo/NumberFormatException$ActionBar;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected g(Ljava/lang/Object;)Lo/Readable$Application$StateListAnimator;
    .locals 1

    .line 574
    invoke-static {p1}, Lo/NumberFormatException$Application;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 575
    instance-of v0, p1, Lo/Readable$Application$StateListAnimator;

    if-eqz v0, :cond_0

    check-cast p1, Lo/Readable$Application$StateListAnimator;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected h(Ljava/lang/Object;)I
    .locals 3

    .line 544
    iget-object v0, p0, Lo/Readable$Application;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 546
    iget-object v2, p0, Lo/Readable$Application;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Readable$Application$ActionBar;

    iget-object v2, v2, Lo/Readable$Application$ActionBar;->a:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected i(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 592
    invoke-virtual {p0}, Lo/Readable$Application;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lo/NumberFormatException$Application;->e(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 593
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method protected i()V
    .locals 3

    .line 635
    iget-boolean v0, p0, Lo/Readable$Application;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 636
    iput-boolean v0, p0, Lo/Readable$Application;->j:Z

    .line 637
    iget-object v0, p0, Lo/Readable$Application;->c:Ljava/lang/Object;

    iget-object v1, p0, Lo/Readable$Application;->e:Ljava/lang/Object;

    invoke-static {v0, v1}, Lo/NumberFormatException;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 640
    :cond_0
    iget v0, p0, Lo/Readable$Application;->a:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 641
    iput-boolean v1, p0, Lo/Readable$Application;->j:Z

    .line 642
    iget-object v1, p0, Lo/Readable$Application;->c:Ljava/lang/Object;

    iget-object v2, p0, Lo/Readable$Application;->e:Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lo/NumberFormatException;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected j()V
    .locals 4

    .line 533
    new-instance v0, Lo/NoClassDefFoundError$ActionBar;

    invoke-direct {v0}, Lo/NoClassDefFoundError$ActionBar;-><init>()V

    .line 535
    iget-object v1, p0, Lo/Readable$Application;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 537
    iget-object v3, p0, Lo/Readable$Application;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Readable$Application$ActionBar;

    iget-object v3, v3, Lo/Readable$Application$ActionBar;->e:Lo/NoSuchFieldException;

    invoke-virtual {v0, v3}, Lo/NoClassDefFoundError$ActionBar;->b(Lo/NoSuchFieldException;)Lo/NoClassDefFoundError$ActionBar;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    :cond_0
    invoke-virtual {v0}, Lo/NoClassDefFoundError$ActionBar;->b()Lo/NoClassDefFoundError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/Readable$Application;->a(Lo/NoClassDefFoundError;)V

    return-void
.end method

.method protected k()Ljava/lang/Object;
    .locals 1

    .line 647
    invoke-static {p0}, Lo/NumberFormatException;->e(Lo/NumberFormatException$Activity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected l()Ljava/lang/Object;
    .locals 1

    .line 651
    invoke-static {p0}, Lo/NumberFormatException;->c(Lo/NumberFormatException$Dialog;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
