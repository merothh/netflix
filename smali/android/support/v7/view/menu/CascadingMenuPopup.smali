.class final Landroid/support/v7/view/menu/CascadingMenuPopup;
.super Landroid/support/v7/view/menu/MenuPopup;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasXOffset:Z

.field private mHasYOffset:Z

.field private mLastPosition:I

.field private final mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

.field private final mMenuMaxWidth:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPendingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mRawDropDownGravity:I

.field mShouldCloseImmediately:Z

.field private mShowTitle:Z

.field final mShowingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field mShownAnchorView:Landroid/view/View;

.field final mSubMenuHoverHandler:Landroid/os/Handler;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-direct {p0}, Landroid/support/v7/view/menu/MenuPopup;-><init>()V

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 94
    new-instance v0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/CascadingMenuPopup$1;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 115
    new-instance v0, Landroid/support/v7/view/menu/CascadingMenuPopup$2;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/CascadingMenuPopup$2;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    .line 175
    iput v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 176
    iput v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 200
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    .line 201
    iput-object p2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 202
    iput p3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    .line 203
    iput p4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    .line 204
    iput-boolean p5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    .line 206
    iput-boolean v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 207
    invoke-direct {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 211
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 210
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    .line 214
    return-void
.end method

.method private createPopupWindow()Landroid/support/v7/widget/MenuPopupWindow;
    .locals 5

    .prologue
    .line 222
    new-instance v0, Landroid/support/v7/widget/MenuPopupWindow;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    iget v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 224
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setHoverListener(Landroid/support/v7/widget/MenuItemHoverListener;)V

    .line 225
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 226
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 227
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 228
    iget v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 229
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setModal(Z)V

    .line 230
    return-object v0
.end method

.method private findIndexOfAddedMenu(Landroid/support/v7/view/menu/MenuBuilder;)I
    .locals 3

    .prologue
    .line 595
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 596
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 597
    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 602
    :goto_1
    return v0

    .line 595
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findMenuItemForSubmenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 457
    invoke-virtual {p1, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 458
    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_0

    .line 463
    :goto_1
    return-object v0

    .line 456
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 463
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findParentViewForSubmenu(Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 477
    iget-object v0, p1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {p0, v0, p2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->findMenuItemForSubmenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/MenuItem;

    move-result-object v5

    .line 478
    if-nez v5, :cond_0

    move-object v0, v3

    .line 520
    :goto_0
    return-object v0

    .line 486
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v6

    .line 487
    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 488
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_1

    .line 489
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 490
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    .line 491
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuAdapter;

    .line 499
    :goto_1
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuAdapter;->getCount()I

    move-result v7

    :goto_2
    if-ge v2, v7, :cond_6

    .line 500
    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v8

    if-ne v5, v8, :cond_2

    move v0, v2

    .line 505
    :goto_3
    if-ne v0, v4, :cond_3

    move-object v0, v3

    .line 507
    goto :goto_0

    .line 494
    :cond_1
    check-cast v0, Landroid/support/v7/view/menu/MenuAdapter;

    move v1, v2

    goto :goto_1

    .line 499
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 511
    :cond_3
    add-int/2addr v0, v1

    .line 514
    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 515
    if-ltz v0, :cond_4

    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_5

    :cond_4
    move-object v0, v3

    .line 517
    goto :goto_0

    .line 520
    :cond_5
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_3
.end method

.method private getInitialMenuPosition()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 290
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 291
    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private getNextMenuPosition(I)I
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 306
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 307
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 309
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 310
    iget-object v5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 312
    iget v5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    if-ne v5, v2, :cond_1

    .line 313
    aget v3, v3, v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v0, p1

    .line 314
    iget v3, v4, Landroid/graphics/Rect;->right:I

    if-le v0, v3, :cond_0

    move v0, v1

    .line 323
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 317
    goto :goto_0

    .line 319
    :cond_1
    aget v0, v3, v1

    sub-int/2addr v0, p1

    .line 320
    if-gez v0, :cond_2

    move v0, v2

    .line 321
    goto :goto_0

    :cond_2
    move v0, v1

    .line 323
    goto :goto_0
.end method

.method private showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 344
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 345
    new-instance v0, Landroid/support/v7/view/menu/MenuAdapter;

    iget-boolean v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    invoke-direct {v0, p1, v6, v3}, Landroid/support/v7/view/menu/MenuAdapter;-><init>(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    .line 351
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    if-eqz v3, :cond_2

    .line 353
    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 360
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    invoke-static {v0, v4, v3, v5}, Landroid/support/v7/view/menu/CascadingMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v7

    .line 361
    invoke-direct {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->createPopupWindow()Landroid/support/v7/widget/MenuPopupWindow;

    move-result-object v8

    .line 362
    invoke-virtual {v8, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 363
    invoke-virtual {v8, v7}, Landroid/support/v7/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 364
    iget v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v8, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 368
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 369
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 370
    invoke-direct {p0, v0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->findParentViewForSubmenu(Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/View;

    move-result-object v3

    move-object v5, v0

    .line 376
    :goto_1
    if-eqz v3, :cond_8

    .line 378
    invoke-virtual {v8, v2}, Landroid/support/v7/widget/MenuPopupWindow;->setTouchModal(Z)V

    .line 379
    invoke-virtual {v8, v4}, Landroid/support/v7/widget/MenuPopupWindow;->setEnterTransition(Ljava/lang/Object;)V

    .line 381
    invoke-direct {p0, v7}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getNextMenuPosition(I)I

    move-result v9

    .line 382
    if-ne v9, v1, :cond_4

    move v0, v1

    .line 383
    :goto_2
    iput v9, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 385
    const/4 v9, 0x2

    new-array v9, v9, [I

    .line 389
    invoke-virtual {v3, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 390
    iget-object v10, v5, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v10}, Landroid/support/v7/widget/MenuPopupWindow;->getHorizontalOffset()I

    move-result v10

    aget v11, v9, v2

    add-int/2addr v10, v11

    .line 391
    iget-object v11, v5, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v11}, Landroid/support/v7/widget/MenuPopupWindow;->getVerticalOffset()I

    move-result v11

    aget v1, v9, v1

    add-int/2addr v1, v11

    .line 396
    iget v9, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    and-int/lit8 v9, v9, 0x5

    const/4 v11, 0x5

    if-ne v9, v11, :cond_6

    .line 397
    if-eqz v0, :cond_5

    .line 398
    add-int v0, v10, v7

    .line 410
    :goto_3
    invoke-virtual {v8, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 413
    invoke-virtual {v8, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 425
    :goto_4
    new-instance v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    invoke-direct {v0, v8, p1, v1}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Landroid/support/v7/widget/MenuPopupWindow;Landroid/support/v7/view/menu/MenuBuilder;I)V

    .line 426
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {v8}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    .line 431
    if-nez v5, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowTitle:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {v8}, Landroid/support/v7/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 433
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v6, v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 435
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 436
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 437
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {v3, v0, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 441
    invoke-virtual {v8}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    .line 443
    :cond_1
    return-void

    .line 354
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 356
    invoke-static {p1}, Landroid/support/v7/view/menu/MenuPopup;->shouldPreserveIconSpacing(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    goto/16 :goto_0

    :cond_3
    move-object v3, v4

    move-object v5, v4

    .line 373
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 382
    goto :goto_2

    .line 400
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v0, v10, v0

    goto :goto_3

    .line 403
    :cond_6
    if-eqz v0, :cond_7

    .line 404
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v10

    goto :goto_3

    .line 406
    :cond_7
    sub-int v0, v10, v7

    goto :goto_3

    .line 415
    :cond_8
    iget-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    if-eqz v0, :cond_9

    .line 416
    iget v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mXOffset:I

    invoke-virtual {v8, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 418
    :cond_9
    iget-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    if-eqz v0, :cond_a

    .line 419
    iget v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mYOffset:I

    invoke-virtual {v8, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 421
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 422
    invoke-virtual {v8, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 331
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 263
    if-lez v1, :cond_1

    .line 264
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    new-array v2, v1, [Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 265
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 266
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 267
    aget-object v2, v0, v1

    .line 268
    iget-object v3, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    iget-object v2, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroid/support/v7/widget/MenuPopupWindow;->dismiss()V

    .line 266
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 273
    :cond_1
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 707
    :goto_0
    return-object v0

    .line 705
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 707
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 607
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->findIndexOfAddedMenu(Landroid/support/v7/view/menu/MenuBuilder;)I

    move-result v1

    .line 608
    if-gez v1, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    add-int/lit8 v0, v1, 0x1

    .line 614
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 615
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 616
    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 620
    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 621
    iget-object v1, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1, p0}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 622
    iget-boolean v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    if-eqz v1, :cond_3

    .line 624
    iget-object v1, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/MenuPopupWindow;->setExitTransition(Ljava/lang/Object;)V

    .line 625
    iget-object v1, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/MenuPopupWindow;->setAnimationStyle(I)V

    .line 627
    :cond_3
    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->dismiss()V

    .line 629
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 630
    if-lez v1, :cond_7

    .line 631
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 636
    :goto_1
    if-nez v1, :cond_8

    .line 638
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->dismiss()V

    .line 640
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_4

    .line 641
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 644
    :cond_4
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_6

    .line 645
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 646
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 648
    :cond_5
    iput-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 654
    :cond_6
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_0

    .line 633
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    goto :goto_1

    .line 655
    :cond_8
    if-eqz p2, :cond_0

    .line 659
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 660
    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto/16 :goto_0
.end method

.method public onDismiss()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 538
    const/4 v1, 0x0

    .line 539
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    .line 540
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 541
    iget-object v5, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v5}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 549
    :goto_1
    if-eqz v0, :cond_0

    .line 550
    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 552
    :cond_0
    return-void

    .line 539
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 277
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 278
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->dismiss()V

    .line 281
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 676
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 569
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 570
    iget-object v3, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    .line 572
    invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    move v0, v1

    .line 585
    :goto_0
    return v0

    .line 577
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 578
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 580
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 581
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z

    :cond_2
    move v0, v1

    .line 583
    goto :goto_0

    .line 585
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 690
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 693
    iget v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 694
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 693
    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 696
    :cond_0
    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 564
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    .prologue
    .line 218
    iput-boolean p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 219
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    if-eq v0, p1, :cond_0

    .line 681
    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 682
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 683
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 682
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 685
    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    .line 713
    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mXOffset:I

    .line 714
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 701
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0

    .prologue
    .line 724
    iput-boolean p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowTitle:Z

    .line 725
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    .line 719
    iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mYOffset:I

    .line 720
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuBuilder;

    .line 241
    invoke-direct {p0, v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    goto :goto_1

    .line 243
    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 245
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 247
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 249
    :goto_2
    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 250
    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 248
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public updateMenuView(Z)V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 557
    invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 559
    :cond_0
    return-void
.end method
