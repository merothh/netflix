.class Lo/Configuration$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/CharSequence;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/CharSequence;

.field private G:Landroid/content/res/ColorStateList;

.field private I:Landroid/graphics/PorterDuff$Mode;

.field private a:I

.field b:Lo/DataInput;

.field private c:Landroid/view/Menu;

.field private d:I

.field final synthetic e:Lo/Configuration;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/CharSequence;

.field private n:Ljava/lang/CharSequence;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:C

.field private t:C

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Z

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/Configuration;Landroid/view/Menu;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lo/Configuration$Application;->e:Lo/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 336
    iput-object p1, p0, Lo/Configuration$Application;->G:Landroid/content/res/ColorStateList;

    .line 337
    iput-object p1, p0, Lo/Configuration$Application;->I:Landroid/graphics/PorterDuff$Mode;

    .line 349
    iput-object p2, p0, Lo/Configuration$Application;->c:Landroid/view/Menu;

    .line 351
    invoke-virtual {p0}, Lo/Configuration$Application;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 548
    :try_start_0
    iget-object v0, p0, Lo/Configuration$Application;->e:Lo/Configuration;

    iget-object v0, v0, Lo/Configuration;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 549
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    .line 550
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 551
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 553
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot instantiate class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SupportMenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Landroid/view/MenuItem;)V
    .locals 5

    .line 465
    iget-boolean v0, p0, Lo/Configuration$Application;->v:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lo/Configuration$Application;->u:Z

    .line 466
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lo/Configuration$Application;->x:Z

    .line 467
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lo/Configuration$Application;->r:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 468
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lo/Configuration$Application;->n:Ljava/lang/CharSequence;

    .line 469
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lo/Configuration$Application;->l:I

    .line 470
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 472
    iget v0, p0, Lo/Configuration$Application;->y:I

    if-ltz v0, :cond_1

    .line 473
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 476
    :cond_1
    iget-object v0, p0, Lo/Configuration$Application;->z:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 477
    iget-object v0, p0, Lo/Configuration$Application;->e:Lo/Configuration;

    iget-object v0, v0, Lo/Configuration;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 481
    new-instance v0, Lo/Configuration$TaskDescription;

    iget-object v1, p0, Lo/Configuration$Application;->e:Lo/Configuration;

    .line 482
    invoke-virtual {v1}, Lo/Configuration;->b()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lo/Configuration$Application;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lo/Configuration$TaskDescription;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 478
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 485
    :cond_3
    :goto_1
    instance-of v0, p1, Lo/Rect;

    if-eqz v0, :cond_4

    move-object v1, p1

    check-cast v1, Lo/Rect;

    .line 486
    :cond_4
    iget v1, p0, Lo/Configuration$Application;->r:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_6

    if-eqz v0, :cond_5

    .line 488
    move-object v0, p1

    check-cast v0, Lo/Rect;

    invoke-virtual {v0, v3}, Lo/Rect;->a(Z)V

    goto :goto_2

    .line 489
    :cond_5
    instance-of v0, p1, Lo/Point;

    if-eqz v0, :cond_6

    .line 490
    move-object v0, p1

    check-cast v0, Lo/Point;

    invoke-virtual {v0, v3}, Lo/Point;->a(Z)V

    .line 495
    :cond_6
    :goto_2
    iget-object v0, p0, Lo/Configuration$Application;->C:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 496
    sget-object v1, Lo/Configuration;->a:[Ljava/lang/Class;

    iget-object v2, p0, Lo/Configuration$Application;->e:Lo/Configuration;

    iget-object v2, v2, Lo/Configuration;->b:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lo/Configuration$Application;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 498
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v2, 0x1

    .line 501
    :cond_7
    iget v0, p0, Lo/Configuration$Application;->w:I

    if-lez v0, :cond_9

    if-nez v2, :cond_8

    .line 503
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_8
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 506
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_9
    :goto_3
    iget-object v0, p0, Lo/Configuration$Application;->b:Lo/DataInput;

    if-eqz v0, :cond_a

    .line 511
    invoke-static {p1, v0}, Lo/EOFException;->c(Landroid/view/MenuItem;Lo/DataInput;)Landroid/view/MenuItem;

    .line 514
    :cond_a
    iget-object v0, p0, Lo/Configuration$Application;->D:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lo/EOFException;->a(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 515
    iget-object v0, p0, Lo/Configuration$Application;->B:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lo/EOFException;->b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 516
    iget-char v0, p0, Lo/Configuration$Application;->s:C

    iget v1, p0, Lo/Configuration$Application;->p:I

    invoke-static {p1, v0, v1}, Lo/EOFException;->b(Landroid/view/MenuItem;CI)V

    .line 518
    iget-char v0, p0, Lo/Configuration$Application;->t:C

    iget v1, p0, Lo/Configuration$Application;->q:I

    invoke-static {p1, v0, v1}, Lo/EOFException;->c(Landroid/view/MenuItem;CI)V

    .line 520
    iget-object v0, p0, Lo/Configuration$Application;->I:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_b

    .line 521
    invoke-static {p1, v0}, Lo/EOFException;->a(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 523
    :cond_b
    iget-object v0, p0, Lo/Configuration$Application;->G:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    .line 524
    invoke-static {p1, v0}, Lo/EOFException;->c(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_c
    return-void
.end method

.method private e(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 460
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v0, 0x1

    .line 529
    iput-boolean v0, p0, Lo/Configuration$Application;->f:Z

    .line 530
    iget-object v0, p0, Lo/Configuration$Application;->c:Landroid/view/Menu;

    iget v1, p0, Lo/Configuration$Application;->d:I

    iget v2, p0, Lo/Configuration$Application;->k:I

    iget v3, p0, Lo/Configuration$Application;->o:I

    iget-object v4, p0, Lo/Configuration$Application;->m:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/Configuration$Application;->b(Landroid/view/MenuItem;)V

    return-void
.end method

.method public a(Landroid/util/AttributeSet;)V
    .locals 6

    .line 385
    iget-object v0, p0, Lo/Configuration$Application;->e:Lo/Configuration;

    iget-object v0, v0, Lo/Configuration;->d:Landroid/content/Context;

    sget-object v1, Lo/LoaderManager$Dialog;->bG:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 388
    sget v0, Lo/LoaderManager$Dialog;->bI:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/Configuration$Application;->k:I

    .line 389
    sget v0, Lo/LoaderManager$Dialog;->bL:I

    iget v2, p0, Lo/Configuration$Application;->a:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 390
    sget v2, Lo/LoaderManager$Dialog;->bO:I

    iget v3, p0, Lo/Configuration$Application;->h:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 391
    iput v0, p0, Lo/Configuration$Application;->o:I

    .line 393
    sget v0, Lo/LoaderManager$Dialog;->bM:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/Configuration$Application;->m:Ljava/lang/CharSequence;

    .line 394
    sget v0, Lo/LoaderManager$Dialog;->bN:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/Configuration$Application;->n:Ljava/lang/CharSequence;

    .line 395
    sget v0, Lo/LoaderManager$Dialog;->bF:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/Configuration$Application;->l:I

    .line 396
    sget v0, Lo/LoaderManager$Dialog;->bP:I

    .line 397
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/Configuration$Application;->e(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lo/Configuration$Application;->s:C

    .line 398
    sget v0, Lo/LoaderManager$Dialog;->bX:I

    const/16 v2, 0x1000

    .line 399
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lo/Configuration$Application;->p:I

    .line 400
    sget v0, Lo/LoaderManager$Dialog;->bQ:I

    .line 401
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/Configuration$Application;->e(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lo/Configuration$Application;->t:C

    .line 402
    sget v0, Lo/LoaderManager$Dialog;->cd:I

    .line 403
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lo/Configuration$Application;->q:I

    .line 404
    sget v0, Lo/LoaderManager$Dialog;->bS:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    sget v0, Lo/LoaderManager$Dialog;->bS:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput v0, p0, Lo/Configuration$Application;->r:I

    goto :goto_0

    .line 410
    :cond_0
    iget v0, p0, Lo/Configuration$Application;->j:I

    iput v0, p0, Lo/Configuration$Application;->r:I

    .line 412
    :goto_0
    sget v0, Lo/LoaderManager$Dialog;->bH:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lo/Configuration$Application;->v:Z

    .line 413
    sget v0, Lo/LoaderManager$Dialog;->bK:I

    iget-boolean v2, p0, Lo/Configuration$Application;->i:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lo/Configuration$Application;->u:Z

    .line 414
    sget v0, Lo/LoaderManager$Dialog;->bJ:I

    iget-boolean v2, p0, Lo/Configuration$Application;->g:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lo/Configuration$Application;->x:Z

    .line 415
    sget v0, Lo/LoaderManager$Dialog;->cb:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lo/Configuration$Application;->y:I

    .line 416
    sget v0, Lo/LoaderManager$Dialog;->bR:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Configuration$Application;->z:Ljava/lang/String;

    .line 417
    sget v0, Lo/LoaderManager$Dialog;->bT:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/Configuration$Application;->w:I

    .line 418
    sget v0, Lo/LoaderManager$Dialog;->bY:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Configuration$Application;->C:Ljava/lang/String;

    .line 419
    sget v0, Lo/LoaderManager$Dialog;->bV:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Configuration$Application;->A:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lo/Configuration$Application;->A:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 422
    iget v4, p0, Lo/Configuration$Application;->w:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lo/Configuration$Application;->C:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 423
    iget-object v0, p0, Lo/Configuration$Application;->A:Ljava/lang/String;

    sget-object v4, Lo/Configuration;->c:[Ljava/lang/Class;

    iget-object v5, p0, Lo/Configuration$Application;->e:Lo/Configuration;

    iget-object v5, v5, Lo/Configuration;->e:[Ljava/lang/Object;

    invoke-direct {p0, v0, v4, v5}, Lo/Configuration$Application;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DataInput;

    iput-object v0, p0, Lo/Configuration$Application;->b:Lo/DataInput;

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const-string v0, "SupportMenuInflater"

    const-string v4, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 428
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_3
    iput-object v3, p0, Lo/Configuration$Application;->b:Lo/DataInput;

    .line 434
    :goto_2
    sget v0, Lo/LoaderManager$Dialog;->bW:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/Configuration$Application;->D:Ljava/lang/CharSequence;

    .line 435
    sget v0, Lo/LoaderManager$Dialog;->ca:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/Configuration$Application;->B:Ljava/lang/CharSequence;

    .line 436
    sget v0, Lo/LoaderManager$Dialog;->bZ:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 437
    sget v0, Lo/LoaderManager$Dialog;->bZ:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget-object v2, p0, Lo/Configuration$Application;->I:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lo/Configuration$Application;->I:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 442
    :cond_4
    iput-object v3, p0, Lo/Configuration$Application;->I:Landroid/graphics/PorterDuff$Mode;

    .line 444
    :goto_3
    sget v0, Lo/LoaderManager$Dialog;->bU:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 445
    sget v0, Lo/LoaderManager$Dialog;->bU:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lo/Configuration$Application;->G:Landroid/content/res/ColorStateList;

    goto :goto_4

    .line 448
    :cond_5
    iput-object v3, p0, Lo/Configuration$Application;->G:Landroid/content/res/ColorStateList;

    .line 451
    :goto_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 453
    iput-boolean v1, p0, Lo/Configuration$Application;->f:Z

    return-void
.end method

.method public b(Landroid/util/AttributeSet;)V
    .locals 2

    .line 367
    iget-object v0, p0, Lo/Configuration$Application;->e:Lo/Configuration;

    iget-object v0, v0, Lo/Configuration;->d:Landroid/content/Context;

    sget-object v1, Lo/LoaderManager$Dialog;->bz:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 369
    sget v0, Lo/LoaderManager$Dialog;->bA:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/Configuration$Application;->d:I

    .line 370
    sget v0, Lo/LoaderManager$Dialog;->bE:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lo/Configuration$Application;->a:I

    .line 372
    sget v0, Lo/LoaderManager$Dialog;->bD:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lo/Configuration$Application;->h:I

    .line 373
    sget v0, Lo/LoaderManager$Dialog;->bB:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lo/Configuration$Application;->j:I

    .line 375
    sget v0, Lo/LoaderManager$Dialog;->bC:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lo/Configuration$Application;->i:Z

    .line 376
    sget v0, Lo/LoaderManager$Dialog;->bw:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lo/Configuration$Application;->g:Z

    .line 378
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 355
    iput v0, p0, Lo/Configuration$Application;->d:I

    .line 356
    iput v0, p0, Lo/Configuration$Application;->a:I

    .line 357
    iput v0, p0, Lo/Configuration$Application;->h:I

    .line 358
    iput v0, p0, Lo/Configuration$Application;->j:I

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Lo/Configuration$Application;->i:Z

    .line 360
    iput-boolean v0, p0, Lo/Configuration$Application;->g:Z

    return-void
.end method

.method public d()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    .line 534
    iput-boolean v0, p0, Lo/Configuration$Application;->f:Z

    .line 535
    iget-object v0, p0, Lo/Configuration$Application;->c:Landroid/view/Menu;

    iget v1, p0, Lo/Configuration$Application;->d:I

    iget v2, p0, Lo/Configuration$Application;->k:I

    iget v3, p0, Lo/Configuration$Application;->o:I

    iget-object v4, p0, Lo/Configuration$Application;->m:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 536
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/Configuration$Application;->b(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 541
    iget-boolean v0, p0, Lo/Configuration$Application;->f:Z

    return v0
.end method
