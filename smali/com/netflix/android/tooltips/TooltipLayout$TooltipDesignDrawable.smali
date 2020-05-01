.class Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TooltipLayout.java"


# instance fields
.field private mAccentDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

.field private mBackgroundDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

.field private final mWhitePart:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/netflix/android/tooltips/TooltipLayout;


# direct methods
.method private constructor <init>(Lcom/netflix/android/tooltips/TooltipLayout;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    iput-object p1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 405
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mWhitePart:Landroid/graphics/Rect;

    .line 407
    new-instance v0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    .line 408
    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$900(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v1

    invoke-direct {v0, p0, v1, v2}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;-><init>(Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;ILcom/netflix/android/tooltips/TooltipLayout$1;)V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mAccentDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    .line 409
    new-instance v0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    .line 410
    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1100(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v1

    invoke-direct {v0, p0, v1, v2}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;-><init>(Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;ILcom/netflix/android/tooltips/TooltipLayout$1;)V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mBackgroundDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    .line 409
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/android/tooltips/TooltipLayout;Lcom/netflix/android/tooltips/TooltipLayout$1;)V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;-><init>(Lcom/netflix/android/tooltips/TooltipLayout;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;)V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->update()V

    return-void
.end method

.method private update()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mAccentDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$900(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 414
    new-instance v0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$900(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v1

    invoke-direct {v0, p0, v1, v3}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;-><init>(Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;ILcom/netflix/android/tooltips/TooltipLayout$1;)V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mAccentDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mBackgroundDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1100(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 417
    new-instance v0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1100(Lcom/netflix/android/tooltips/TooltipLayout;)I

    move-result v1

    invoke-direct {v0, p0, v1, v3}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;-><init>(Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;ILcom/netflix/android/tooltips/TooltipLayout$1;)V

    iput-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mBackgroundDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mWhitePart:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 420
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mWhitePart:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1200(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 421
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 422
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mWhitePart:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 423
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mWhitePart:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1200(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v2}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1300(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 428
    :goto_0
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mAccentDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->update()V

    .line 429
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mBackgroundDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->update()V

    .line 430
    return-void

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mWhitePart:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1300(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 426
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mWhitePart:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$1200(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 435
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mAccentDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0, p1}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 436
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mWhitePart:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 437
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mBackgroundDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0, p1}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 438
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 439
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 453
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 444
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .prologue
    .line 458
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 459
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mAccentDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->setBounds(IIII)V

    .line 460
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mBackgroundDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->setBounds(IIII)V

    .line 461
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 465
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 466
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mAccentDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0, p1}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 467
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable;->mBackgroundDrawable:Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;

    invoke-virtual {v0, p1}, Lcom/netflix/android/tooltips/TooltipLayout$TooltipDesignDrawable$ColoredTooltipDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 468
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 449
    return-void
.end method
