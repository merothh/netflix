.class Lo/acW$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acW;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/acW;


# direct methods
.method constructor <init>(Lo/acW;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lo/acW$3;->b:Lo/acW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 394
    iget-object v0, p0, Lo/acW$3;->b:Lo/acW;

    invoke-static {v0}, Lo/acW;->d(Lo/acW;)Lo/acV;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lo/acW$3;->b:Lo/acW;

    invoke-static {v0}, Lo/acW;->b(Lo/acW;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 397
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 398
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 399
    iget-object v3, p0, Lo/acW$3;->b:Lo/acW;

    invoke-static {v3}, Lo/acW;->c(Lo/acW;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 402
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 404
    iget-object v0, p0, Lo/acW$3;->b:Lo/acW;

    invoke-static {v0}, Lo/acW;->e(Lo/acW;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lo/acW$3;->b:Lo/acW;

    invoke-static {v0}, Lo/acW;->b(Lo/acW;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 410
    iget-object v2, p0, Lo/acW$3;->b:Lo/acW;

    invoke-static {v2}, Lo/acW;->b(Lo/acW;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lo/acW$3;->b:Lo/acW;

    invoke-static {v3}, Lo/acW;->e(Lo/acW;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 411
    iget-object v3, p0, Lo/acW$3;->b:Lo/acW;

    invoke-static {v3}, Lo/acW;->e(Lo/acW;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-le v3, v2, :cond_1

    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 424
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 425
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 427
    iget-object v0, p0, Lo/acW$3;->b:Lo/acW;

    invoke-static {v0}, Lo/acW;->c(Lo/acW;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    :goto_0
    iget-object v0, p0, Lo/acW$3;->b:Lo/acW;

    invoke-static {v0}, Lo/acW;->b(Lo/acW;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->c(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
