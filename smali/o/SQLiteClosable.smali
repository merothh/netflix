.class final Lo/SQLiteClosable;
.super Lo/Callback;
.source ""

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SQLiteClosable$ActionBar;
    }
.end annotation


# static fields
.field private static final f:I


# instance fields
.field private C:Landroid/widget/PopupWindow$OnDismissListener;

.field private D:Lo/MediaController$StateListAnimator;

.field final a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field b:Landroid/view/ViewTreeObserver;

.field c:Landroid/view/View;

.field final d:Landroid/os/Handler;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SQLiteClosable$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I

.field private final h:Landroid/content/Context;

.field private final i:I

.field j:Z

.field private final k:Landroid/view/View$OnAttachStateChangeListener;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Mode;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Z

.field private final n:I

.field private final o:Landroidx/appcompat/widget/MenuItemHoverListener;

.field private p:I

.field private q:Landroid/view/View;

.field private r:I

.field private s:I

.field private t:Z

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget v0, Lo/LoaderManager$PendingIntent;->f:I

    sput v0, Lo/SQLiteClosable;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 1

    .line 222
    invoke-direct {p0}, Lo/Callback;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/SQLiteClosable;->l:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    .line 97
    new-instance v0, Lo/SQLiteClosable$5;

    invoke-direct {v0, p0}, Lo/SQLiteClosable$5;-><init>(Lo/SQLiteClosable;)V

    iput-object v0, p0, Lo/SQLiteClosable;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 119
    new-instance v0, Lo/SQLiteClosable$4;

    invoke-direct {v0, p0}, Lo/SQLiteClosable$4;-><init>(Lo/SQLiteClosable;)V

    iput-object v0, p0, Lo/SQLiteClosable;->k:Landroid/view/View$OnAttachStateChangeListener;

    .line 137
    new-instance v0, Lo/SQLiteClosable$3;

    invoke-direct {v0, p0}, Lo/SQLiteClosable$3;-><init>(Lo/SQLiteClosable;)V

    iput-object v0, p0, Lo/SQLiteClosable;->o:Landroidx/appcompat/widget/MenuItemHoverListener;

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Lo/SQLiteClosable;->s:I

    .line 198
    iput v0, p0, Lo/SQLiteClosable;->p:I

    .line 223
    iput-object p1, p0, Lo/SQLiteClosable;->h:Landroid/content/Context;

    .line 224
    iput-object p2, p0, Lo/SQLiteClosable;->q:Landroid/view/View;

    .line 225
    iput p3, p0, Lo/SQLiteClosable;->i:I

    .line 226
    iput p4, p0, Lo/SQLiteClosable;->n:I

    .line 227
    iput-boolean p5, p0, Lo/SQLiteClosable;->m:Z

    .line 229
    iput-boolean v0, p0, Lo/SQLiteClosable;->w:Z

    .line 230
    invoke-direct {p0}, Lo/SQLiteClosable;->d()I

    move-result p2

    iput p2, p0, Lo/SQLiteClosable;->r:I

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, Lo/LoaderManager$ActionBar;->a:I

    .line 234
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 233
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lo/SQLiteClosable;->g:I

    .line 236
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lo/SQLiteClosable;->d:Landroid/os/Handler;

    return-void
.end method

.method private a(Lo/Mode;Lo/Mode;)Landroid/view/MenuItem;
    .locals 4

    .line 516
    invoke-virtual {p1}, Lo/Mode;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 517
    invoke-virtual {p1, v1}, Lo/Mode;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 518
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()Landroidx/appcompat/widget/MenuPopupWindow;
    .locals 5

    .line 245
    new-instance v0, Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object v1, p0, Lo/SQLiteClosable;->h:Landroid/content/Context;

    iget v2, p0, Lo/SQLiteClosable;->i:I

    iget v3, p0, Lo/SQLiteClosable;->n:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroidx/appcompat/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 247
    iget-object v1, p0, Lo/SQLiteClosable;->o:Landroidx/appcompat/widget/MenuItemHoverListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->setHoverListener(Landroidx/appcompat/widget/MenuItemHoverListener;)V

    .line 248
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 249
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 250
    iget-object v1, p0, Lo/SQLiteClosable;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 251
    iget v1, p0, Lo/SQLiteClosable;->p:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->setDropDownGravity(I)V

    const/4 v1, 0x1

    .line 252
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->setModal(Z)V

    const/4 v1, 0x2

    .line 253
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->setInputMethodMode(I)V

    return-object v0
.end method

.method private b(Lo/Mode;)V
    .locals 14

    .line 369
    iget-object v0, p0, Lo/SQLiteClosable;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 370
    new-instance v1, Lo/CursorFactory;

    iget-boolean v2, p0, Lo/SQLiteClosable;->m:Z

    sget v3, Lo/SQLiteClosable;->f:I

    invoke-direct {v1, p1, v0, v2, v3}, Lo/CursorFactory;-><init>(Lo/Mode;Landroid/view/LayoutInflater;ZI)V

    .line 376
    invoke-virtual {p0}, Lo/SQLiteClosable;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lo/SQLiteClosable;->w:Z

    if-eqz v2, :cond_0

    .line 378
    invoke-virtual {v1, v3}, Lo/CursorFactory;->b(Z)V

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {p0}, Lo/SQLiteClosable;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    invoke-static {p1}, Lo/Callback;->e(Lo/Mode;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lo/CursorFactory;->b(Z)V

    .line 385
    :cond_1
    :goto_0
    iget-object v2, p0, Lo/SQLiteClosable;->h:Landroid/content/Context;

    iget v4, p0, Lo/SQLiteClosable;->g:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4}, Lo/SQLiteClosable;->e(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v2

    .line 386
    invoke-direct {p0}, Lo/SQLiteClosable;->a()Landroidx/appcompat/widget/MenuPopupWindow;

    move-result-object v4

    .line 387
    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 388
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 389
    iget v1, p0, Lo/SQLiteClosable;->p:I

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 393
    iget-object v1, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 394
    iget-object v1, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SQLiteClosable$ActionBar;

    .line 395
    invoke-direct {p0, v1, p1}, Lo/SQLiteClosable;->c(Lo/SQLiteClosable$ActionBar;Lo/Mode;)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v1, v5

    move-object v6, v1

    :goto_1
    const/4 v7, 0x0

    if-eqz v6, :cond_9

    .line 403
    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/MenuPopupWindow;->setTouchModal(Z)V

    .line 404
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/MenuPopupWindow;->setEnterTransition(Ljava/lang/Object;)V

    .line 406
    invoke-direct {p0, v2}, Lo/SQLiteClosable;->e(I)I

    move-result v8

    if-ne v8, v3, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 408
    :goto_2
    iput v8, p0, Lo/SQLiteClosable;->r:I

    .line 412
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    const/4 v11, 0x5

    if-lt v8, v10, :cond_4

    .line 415
    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    const/4 v8, 0x0

    const/4 v12, 0x0

    goto :goto_3

    :cond_4
    const/4 v8, 0x2

    new-array v10, v8, [I

    .line 429
    iget-object v12, p0, Lo/SQLiteClosable;->q:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v8, v8, [I

    .line 432
    invoke-virtual {v6, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 438
    iget v12, p0, Lo/SQLiteClosable;->p:I

    and-int/lit8 v12, v12, 0x7

    if-ne v12, v11, :cond_5

    .line 439
    aget v12, v10, v7

    iget-object v13, p0, Lo/SQLiteClosable;->q:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aput v12, v10, v7

    .line 440
    aget v12, v8, v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aput v12, v8, v7

    .line 445
    :cond_5
    aget v12, v8, v7

    aget v13, v10, v7

    sub-int/2addr v12, v13

    .line 446
    aget v8, v8, v3

    aget v10, v10, v3

    sub-int/2addr v8, v10

    .line 454
    :goto_3
    iget v10, p0, Lo/SQLiteClosable;->p:I

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_7

    if-eqz v9, :cond_6

    goto :goto_4

    .line 458
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_5

    :cond_7
    if-eqz v9, :cond_8

    .line 462
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_4
    add-int/2addr v12, v2

    goto :goto_6

    :cond_8
    :goto_5
    sub-int/2addr v12, v2

    .line 467
    :goto_6
    invoke-virtual {v4, v12}, Landroidx/appcompat/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 470
    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/MenuPopupWindow;->setOverlapAnchor(Z)V

    .line 471
    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/MenuPopupWindow;->setVerticalOffset(I)V

    goto :goto_7

    .line 473
    :cond_9
    iget-boolean v2, p0, Lo/SQLiteClosable;->t:Z

    if-eqz v2, :cond_a

    .line 474
    iget v2, p0, Lo/SQLiteClosable;->u:I

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 476
    :cond_a
    iget-boolean v2, p0, Lo/SQLiteClosable;->x:Z

    if-eqz v2, :cond_b

    .line 477
    iget v2, p0, Lo/SQLiteClosable;->v:I

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 479
    :cond_b
    invoke-virtual {p0}, Lo/SQLiteClosable;->e()Landroid/graphics/Rect;

    move-result-object v2

    .line 480
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 483
    :goto_7
    new-instance v2, Lo/SQLiteClosable$ActionBar;

    iget v3, p0, Lo/SQLiteClosable;->r:I

    invoke-direct {v2, v4, p1, v3}, Lo/SQLiteClosable$ActionBar;-><init>(Landroidx/appcompat/widget/MenuPopupWindow;Lo/Mode;I)V

    .line 484
    iget-object v3, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow;->show()V

    .line 488
    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 489
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v1, :cond_c

    .line 492
    iget-boolean v1, p0, Lo/SQLiteClosable;->y:Z

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lo/Mode;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 493
    sget v1, Lo/LoaderManager$PendingIntent;->n:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x1020016

    .line 495
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 496
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 497
    invoke-virtual {p1}, Lo/Mode;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual {v2, v0, v5, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 501
    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow;->show()V

    :cond_c
    return-void
.end method

.method private c(Lo/Mode;)I
    .locals 3

    .line 655
    iget-object v0, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 656
    iget-object v2, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/SQLiteClosable$ActionBar;

    .line 657
    iget-object v2, v2, Lo/SQLiteClosable$ActionBar;->b:Lo/Mode;

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private c(Lo/SQLiteClosable$ActionBar;Lo/Mode;)Landroid/view/View;
    .locals 7

    .line 537
    iget-object v0, p1, Lo/SQLiteClosable$ActionBar;->b:Lo/Mode;

    invoke-direct {p0, v0, p2}, Lo/SQLiteClosable;->a(Lo/Mode;Lo/Mode;)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 546
    :cond_0
    invoke-virtual {p1}, Lo/SQLiteClosable$ActionBar;->e()Landroid/widget/ListView;

    move-result-object p1

    .line 547
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 548
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 549
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 550
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 551
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lo/CursorFactory;

    goto :goto_0

    .line 554
    :cond_1
    check-cast v1, Lo/CursorFactory;

    const/4 v2, 0x0

    .line 559
    :goto_0
    invoke-virtual {v1}, Lo/CursorFactory;->getCount()I

    move-result v4

    :goto_1
    const/4 v5, -0x1

    if-ge v3, v4, :cond_3

    .line 560
    invoke-virtual {v1, v3}, Lo/CursorFactory;->c(I)Lo/Rect;

    move-result-object v6

    if-ne p2, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    :goto_2
    if-ne v3, v5, :cond_4

    return-object v0

    :cond_4
    add-int/2addr v3, v2

    .line 574
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p2

    sub-int/2addr v3, p2

    if-ltz v3, :cond_6

    .line 575
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p2

    if-lt v3, p2, :cond_5

    goto :goto_3

    .line 580
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method private d()I
    .locals 2

    .line 315
    iget-object v0, p0, Lo/SQLiteClosable;->q:Landroid/view/View;

    invoke-static {v0}, Lo/FilterWriter;->h(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method private e(I)I
    .locals 6

    .line 329
    iget-object v0, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SQLiteClosable$ActionBar;

    invoke-virtual {v0}, Lo/SQLiteClosable$ActionBar;->e()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 332
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 334
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 335
    iget-object v4, p0, Lo/SQLiteClosable;->c:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 337
    iget v4, p0, Lo/SQLiteClosable;->r:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    .line 338
    aget v1, v1, v5

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    .line 339
    iget p1, v3, Landroid/graphics/Rect;->right:I

    if-le v1, p1, :cond_0

    return v5

    :cond_0
    return v2

    .line 344
    :cond_1
    aget v0, v1, v5

    sub-int/2addr v0, p1

    if-gez v0, :cond_2

    return v2

    :cond_2
    return v5
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    .line 772
    iput-boolean v0, p0, Lo/SQLiteClosable;->t:Z

    .line 773
    iput p1, p0, Lo/SQLiteClosable;->u:I

    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lo/SQLiteClosable;->C:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public a(Lo/Mode;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lo/SQLiteClosable;->h:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lo/Mode;->addMenuPresenter(Lo/MediaController;Landroid/content/Context;)V

    .line 356
    invoke-virtual {p0}, Lo/SQLiteClosable;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0, p1}, Lo/SQLiteClosable;->b(Lo/Mode;)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lo/SQLiteClosable;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 784
    iput-boolean p1, p0, Lo/SQLiteClosable;->y:Z

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 740
    iget v0, p0, Lo/SQLiteClosable;->s:I

    if-eq v0, p1, :cond_0

    .line 741
    iput p1, p0, Lo/SQLiteClosable;->s:I

    .line 742
    iget-object v0, p0, Lo/SQLiteClosable;->q:Landroid/view/View;

    .line 743
    invoke-static {v0}, Lo/FilterWriter;->h(Landroid/view/View;)I

    move-result v0

    .line 742
    invoke-static {p1, v0}, Lo/Console;->e(II)I

    move-result p1

    iput p1, p0, Lo/SQLiteClosable;->p:I

    :cond_0
    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(I)V
    .locals 1

    const/4 v0, 0x1

    .line 778
    iput-boolean v0, p0, Lo/SQLiteClosable;->x:Z

    .line 779
    iput p1, p0, Lo/SQLiteClosable;->v:I

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 749
    iget-object v0, p0, Lo/SQLiteClosable;->q:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 750
    iput-object p1, p0, Lo/SQLiteClosable;->q:Landroid/view/View;

    .line 753
    iget p1, p0, Lo/SQLiteClosable;->s:I

    iget-object v0, p0, Lo/SQLiteClosable;->q:Landroid/view/View;

    .line 754
    invoke-static {v0}, Lo/FilterWriter;->h(Landroid/view/View;)I

    move-result v0

    .line 753
    invoke-static {p1, v0}, Lo/Console;->e(II)I

    move-result p1

    iput p1, p0, Lo/SQLiteClosable;->p:I

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 241
    iput-boolean p1, p0, Lo/SQLiteClosable;->w:Z

    return-void
.end method

.method public dismiss()V
    .locals 4

    .line 287
    iget-object v0, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 289
    iget-object v1, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    new-array v2, v0, [Lo/SQLiteClosable$ActionBar;

    .line 290
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lo/SQLiteClosable$ActionBar;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 292
    aget-object v2, v1, v0

    .line 293
    iget-object v3, v2, Lo/SQLiteClosable$ActionBar;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroidx/appcompat/widget/MenuPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    iget-object v2, v2, Lo/SQLiteClosable$ActionBar;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroidx/appcompat/widget/MenuPopupWindow;->dismiss()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .line 765
    iget-object v0, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    .line 767
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SQLiteClosable$ActionBar;

    invoke-virtual {v0}, Lo/SQLiteClosable$ActionBar;->e()Landroid/widget/ListView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isShowing()Z
    .locals 2

    .line 588
    iget-object v0, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SQLiteClosable$ActionBar;

    iget-object v0, v0, Lo/SQLiteClosable$ActionBar;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onCloseMenu(Lo/Mode;Z)V
    .locals 5

    .line 667
    invoke-direct {p0, p1}, Lo/SQLiteClosable;->c(Lo/Mode;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 674
    iget-object v2, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 675
    iget-object v2, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SQLiteClosable$ActionBar;

    .line 676
    iget-object v1, v1, Lo/SQLiteClosable$ActionBar;->b:Lo/Mode;

    invoke-virtual {v1, v3}, Lo/Mode;->close(Z)V

    .line 680
    :cond_1
    iget-object v1, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SQLiteClosable$ActionBar;

    .line 681
    iget-object v1, v0, Lo/SQLiteClosable$ActionBar;->b:Lo/Mode;

    invoke-virtual {v1, p0}, Lo/Mode;->removeMenuPresenter(Lo/MediaController;)V

    .line 682
    iget-boolean v1, p0, Lo/SQLiteClosable;->j:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 684
    iget-object v1, v0, Lo/SQLiteClosable$ActionBar;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->setExitTransition(Ljava/lang/Object;)V

    .line 685
    iget-object v1, v0, Lo/SQLiteClosable$ActionBar;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/MenuPopupWindow;->setAnimationStyle(I)V

    .line 687
    :cond_2
    iget-object v0, v0, Lo/SQLiteClosable$ActionBar;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/MenuPopupWindow;->dismiss()V

    .line 689
    iget-object v0, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 691
    iget-object v1, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SQLiteClosable$ActionBar;

    iget v1, v1, Lo/SQLiteClosable$ActionBar;->e:I

    iput v1, p0, Lo/SQLiteClosable;->r:I

    goto :goto_0

    .line 693
    :cond_3
    invoke-direct {p0}, Lo/SQLiteClosable;->d()I

    move-result v1

    iput v1, p0, Lo/SQLiteClosable;->r:I

    :goto_0
    if-nez v0, :cond_7

    .line 698
    invoke-virtual {p0}, Lo/SQLiteClosable;->dismiss()V

    .line 700
    iget-object p2, p0, Lo/SQLiteClosable;->D:Lo/MediaController$StateListAnimator;

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    .line 701
    invoke-interface {p2, p1, v0}, Lo/MediaController$StateListAnimator;->onCloseMenu(Lo/Mode;Z)V

    .line 704
    :cond_4
    iget-object p1, p0, Lo/SQLiteClosable;->b:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_6

    .line 705
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 706
    iget-object p1, p0, Lo/SQLiteClosable;->b:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Lo/SQLiteClosable;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 708
    :cond_5
    iput-object v2, p0, Lo/SQLiteClosable;->b:Landroid/view/ViewTreeObserver;

    .line 710
    :cond_6
    iget-object p1, p0, Lo/SQLiteClosable;->c:Landroid/view/View;

    iget-object p2, p0, Lo/SQLiteClosable;->k:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 714
    iget-object p1, p0, Lo/SQLiteClosable;->C:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_8

    .line 719
    iget-object p1, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SQLiteClosable$ActionBar;

    .line 720
    iget-object p1, p1, Lo/SQLiteClosable$ActionBar;->b:Lo/Mode;

    invoke-virtual {p1, v3}, Lo/Mode;->close(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onDismiss()V
    .locals 5

    .line 599
    iget-object v0, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 600
    iget-object v3, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/SQLiteClosable$ActionBar;

    .line 601
    iget-object v4, v3, Lo/SQLiteClosable$ActionBar;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroidx/appcompat/widget/MenuPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 610
    iget-object v0, v3, Lo/SQLiteClosable$ActionBar;->b:Lo/Mode;

    invoke-virtual {v0, v1}, Lo/Mode;->close(Z)V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 302
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 303
    invoke-virtual {p0}, Lo/SQLiteClosable;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSubMenuSelected(Lo/IBinder;)Z
    .locals 4

    .line 629
    iget-object v0, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SQLiteClosable$ActionBar;

    .line 630
    iget-object v3, v1, Lo/SQLiteClosable$ActionBar;->b:Lo/Mode;

    if-ne p1, v3, :cond_0

    .line 632
    invoke-virtual {v1}, Lo/SQLiteClosable$ActionBar;->e()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    return v2

    .line 637
    :cond_1
    invoke-virtual {p1}, Lo/IBinder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 638
    invoke-virtual {p0, p1}, Lo/SQLiteClosable;->a(Lo/Mode;)V

    .line 640
    iget-object v0, p0, Lo/SQLiteClosable;->D:Lo/MediaController$StateListAnimator;

    if-eqz v0, :cond_2

    .line 641
    invoke-interface {v0, p1}, Lo/MediaController$StateListAnimator;->onOpenSubMenu(Lo/Mode;)Z

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Lo/MediaController$StateListAnimator;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lo/SQLiteClosable;->D:Lo/MediaController$StateListAnimator;

    return-void
.end method

.method public show()V
    .locals 2

    .line 259
    invoke-virtual {p0}, Lo/SQLiteClosable;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lo/SQLiteClosable;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Mode;

    .line 265
    invoke-direct {p0, v1}, Lo/SQLiteClosable;->b(Lo/Mode;)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lo/SQLiteClosable;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 269
    iget-object v0, p0, Lo/SQLiteClosable;->q:Landroid/view/View;

    iput-object v0, p0, Lo/SQLiteClosable;->c:Landroid/view/View;

    .line 271
    iget-object v0, p0, Lo/SQLiteClosable;->c:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 272
    iget-object v0, p0, Lo/SQLiteClosable;->b:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 273
    :goto_1
    iget-object v1, p0, Lo/SQLiteClosable;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lo/SQLiteClosable;->b:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_3

    .line 275
    iget-object v0, p0, Lo/SQLiteClosable;->b:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lo/SQLiteClosable;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 277
    :cond_3
    iget-object v0, p0, Lo/SQLiteClosable;->c:Landroid/view/View;

    iget-object v1, p0, Lo/SQLiteClosable;->k:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1

    .line 616
    iget-object p1, p0, Lo/SQLiteClosable;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SQLiteClosable$ActionBar;

    .line 617
    invoke-virtual {v0}, Lo/SQLiteClosable$ActionBar;->e()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lo/SQLiteClosable;->e(Landroid/widget/ListAdapter;)Lo/CursorFactory;

    move-result-object v0

    invoke-virtual {v0}, Lo/CursorFactory;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
