.class final Lo/UndoManager$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UndoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UndoManager$ActionBar$Application;
    }
.end annotation


# static fields
.field static a:Ljava/lang/Integer;


# instance fields
.field private b:Lo/UndoManager$ActionBar$Application;

.field private final c:Landroid/view/View;

.field d:Z

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/UndoManager$ActionBar;->e:Ljava/util/List;

    .line 343
    iput-object p1, p0, Lo/UndoManager$ActionBar;->c:Landroid/view/View;

    return-void
.end method

.method private a()I
    .locals 3

    .line 442
    iget-object v0, p0, Lo/UndoManager$ActionBar;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lo/UndoManager$ActionBar;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 443
    iget-object v1, p0, Lo/UndoManager$ActionBar;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 444
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 445
    :goto_0
    iget-object v2, p0, Lo/UndoManager$ActionBar;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lo/UndoManager$ActionBar;->e(III)I

    move-result v0

    return v0
.end method

.method private a(I)Z
    .locals 1

    if-gtz p1, :cond_1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private c(II)V
    .locals 2

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/UndoManager$ActionBar;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SyncStatusInfo;

    .line 365
    invoke-interface {v1, p1, p2}, Lo/SyncStatusInfo;->c(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(II)Z
    .locals 0

    .line 431
    invoke-direct {p0, p1}, Lo/UndoManager$ActionBar;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lo/UndoManager$ActionBar;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private e()I
    .locals 3

    .line 435
    iget-object v0, p0, Lo/UndoManager$ActionBar;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lo/UndoManager$ActionBar;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    iget-object v1, p0, Lo/UndoManager$ActionBar;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 437
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 438
    :goto_0
    iget-object v2, p0, Lo/UndoManager$ActionBar;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lo/UndoManager$ActionBar;->e(III)I

    move-result v0

    return v0
.end method

.method private e(III)I
    .locals 2

    sub-int v0, p2, p3

    if-lez v0, :cond_0

    return v0

    .line 460
    :cond_0
    iget-boolean v0, p0, Lo/UndoManager$ActionBar;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/UndoManager$ActionBar;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sub-int/2addr p1, p3

    if-lez p1, :cond_2

    return p1

    .line 487
    :cond_2
    iget-object p1, p0, Lo/UndoManager$ActionBar;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, -0x2

    if-ne p2, p1, :cond_4

    const/4 p1, 0x4

    const-string p2, "ViewTarget"

    .line 488
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device\'s screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions."

    .line 489
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_3
    iget-object p1, p0, Lo/UndoManager$ActionBar;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/UndoManager$ActionBar;->e(Landroid/content/Context;)I

    move-result p1

    return p1

    :cond_4
    return v1
.end method

.method private static e(Landroid/content/Context;)I
    .locals 1

    .line 348
    sget-object v0, Lo/UndoManager$ActionBar;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, "window"

    .line 350
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 351
    invoke-static {p0}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 352
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 353
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 354
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lo/UndoManager$ActionBar;->a:Ljava/lang/Integer;

    .line 356
    :cond_0
    sget-object p0, Lo/UndoManager$ActionBar;->a:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method a(Lo/SyncStatusInfo;)V
    .locals 1

    .line 412
    iget-object v0, p0, Lo/UndoManager$ActionBar;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method c()V
    .locals 2

    .line 422
    iget-object v0, p0, Lo/UndoManager$ActionBar;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lo/UndoManager$ActionBar;->b:Lo/UndoManager$ActionBar$Application;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 426
    iput-object v0, p0, Lo/UndoManager$ActionBar;->b:Lo/UndoManager$ActionBar$Application;

    .line 427
    iget-object v0, p0, Lo/UndoManager$ActionBar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method d()V
    .locals 3

    .line 371
    iget-object v0, p0, Lo/UndoManager$ActionBar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 375
    :cond_0
    invoke-direct {p0}, Lo/UndoManager$ActionBar;->a()I

    move-result v0

    .line 376
    invoke-direct {p0}, Lo/UndoManager$ActionBar;->e()I

    move-result v1

    .line 377
    invoke-direct {p0, v0, v1}, Lo/UndoManager$ActionBar;->d(II)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 381
    :cond_1
    invoke-direct {p0, v0, v1}, Lo/UndoManager$ActionBar;->c(II)V

    .line 382
    invoke-virtual {p0}, Lo/UndoManager$ActionBar;->c()V

    return-void
.end method

.method e(Lo/SyncStatusInfo;)V
    .locals 3

    .line 386
    invoke-direct {p0}, Lo/UndoManager$ActionBar;->a()I

    move-result v0

    .line 387
    invoke-direct {p0}, Lo/UndoManager$ActionBar;->e()I

    move-result v1

    .line 388
    invoke-direct {p0, v0, v1}, Lo/UndoManager$ActionBar;->d(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    invoke-interface {p1, v0, v1}, Lo/SyncStatusInfo;->c(II)V

    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lo/UndoManager$ActionBar;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    iget-object v0, p0, Lo/UndoManager$ActionBar;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_1
    iget-object p1, p0, Lo/UndoManager$ActionBar;->b:Lo/UndoManager$ActionBar$Application;

    if-nez p1, :cond_2

    .line 399
    iget-object p1, p0, Lo/UndoManager$ActionBar;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 400
    new-instance v0, Lo/UndoManager$ActionBar$Application;

    invoke-direct {v0, p0}, Lo/UndoManager$ActionBar$Application;-><init>(Lo/UndoManager$ActionBar;)V

    iput-object v0, p0, Lo/UndoManager$ActionBar;->b:Lo/UndoManager$ActionBar$Application;

    .line 401
    iget-object v0, p0, Lo/UndoManager$ActionBar;->b:Lo/UndoManager$ActionBar$Application;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    return-void
.end method
