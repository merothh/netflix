.class final Lo/LO;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:I

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/view/ViewGroup$LayoutParams;

.field private final e:Landroid/graphics/Rect;

.field private final f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    .line 355
    iget-object p1, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mT:I

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/DialerFilter;

    const-string v0, "fragment.playback_container"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/DialerFilter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lo/LO;->b:I

    .line 356
    iget-object p1, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->mT:I

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/DialerFilter;

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lo/LM;->c(Landroid/view/ViewGroup;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lo/LO;->c:Landroid/graphics/Rect;

    .line 357
    iget-object p1, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pX:I

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "fragment.quick_draw_video_details_info"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/LM;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lo/LO;->a:Landroid/graphics/Rect;

    .line 358
    iget-object p1, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pX:I

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lo/LO;->d:Landroid/view/ViewGroup$LayoutParams;

    .line 359
    iget-object p1, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pR:I

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string v0, "fragment.quick_draw_base_view_group"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/LM;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lo/LO;->e:Landroid/graphics/Rect;

    .line 362
    invoke-direct {p0}, Lo/LO;->c()V

    return-void
.end method

.method private final c()V
    .locals 5

    .line 367
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->mT:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/DialerFilter;

    const-string v1, "fragment.playback_container"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lo/DialerFilter;->setClipChildren(Z)V

    .line 369
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->mT:I

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/DialerFilter;

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/DialerFilter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v3, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->requireActivity()Lo/Serializable;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lo/adq;->b(Landroid/app/Activity;)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 370
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->mT:I

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/DialerFilter;

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v1}, Lo/LM;->d(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 371
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->mT:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/DialerFilter;

    invoke-virtual {v0}, Lo/DialerFilter;->requestLayout()V

    .line 372
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->mT:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/DialerFilter;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lo/DialerFilter;->setBackgroundColor(I)V

    .line 376
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pX:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "fragment.quick_draw_video_details_info"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->pX:I

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 475
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 380
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pR:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "fragment.quick_draw_base_view_group"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 381
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->pR:I

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 477
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 386
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->mT:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/DialerFilter;

    const-string v1, "fragment.playback_container"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lo/DialerFilter;->setClipChildren(Z)V

    .line 387
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->mT:I

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/DialerFilter;

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/DialerFilter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, p0, Lo/LO;->b:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 388
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->mT:I

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/DialerFilter;

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/LO;->c:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lo/LM;->d(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 389
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->mT:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/DialerFilter;

    invoke-virtual {v0}, Lo/DialerFilter;->requestLayout()V

    .line 390
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->mT:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/DialerFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/DialerFilter;->setBackgroundColor(I)V

    .line 393
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pX:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "fragment.quick_draw_video_details_info"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lo/LO;->d:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->pX:I

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lo/LO;->a:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lo/LM;->e(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 397
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pR:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "fragment.quick_draw_base_view_group"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 398
    iget-object v0, p0, Lo/LO;->f:Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->pR:I

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/lomo/qddp/QuickDrawDialogFrag;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lo/LO;->e:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lo/LM;->e(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
