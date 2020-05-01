.class Lo/DoubleBinaryOperator$TaskDescription;
.super Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroidx/recyclerview/widget/RecyclerView$PictureInPictureParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DoubleBinaryOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic d:Lo/DoubleBinaryOperator;


# direct methods
.method private constructor <init>(Lo/DoubleBinaryOperator;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lo/DoubleBinaryOperator$TaskDescription;->d:Lo/DoubleBinaryOperator;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/DoubleBinaryOperator;Lo/DoubleBinaryOperator$4;)V
    .locals 0

    .line 308
    invoke-direct {p0, p1}, Lo/DoubleBinaryOperator$TaskDescription;-><init>(Lo/DoubleBinaryOperator;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 322
    iget-object p1, p0, Lo/DoubleBinaryOperator$TaskDescription;->d:Lo/DoubleBinaryOperator;

    const-string p2, "onScrolled"

    invoke-static {p1, p2}, Lo/DoubleBinaryOperator;->c(Lo/DoubleBinaryOperator;Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 3

    .line 335
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lo/DoubleBinaryOperator$TaskDescription;->d:Lo/DoubleBinaryOperator;

    move-object v1, p1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lo/DoubleBinaryOperator;->d(Lo/DoubleBinaryOperator;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 338
    :cond_0
    iget-object v0, p0, Lo/DoubleBinaryOperator$TaskDescription;->d:Lo/DoubleBinaryOperator;

    invoke-static {v0}, Lo/DoubleBinaryOperator;->c(Lo/DoubleBinaryOperator;)Z

    move-result v0

    const-string v1, "onChildViewDetachedFromWindow"

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lo/DoubleBinaryOperator$TaskDescription;->d:Lo/DoubleBinaryOperator;

    invoke-static {v0, p1, v1}, Lo/DoubleBinaryOperator;->b(Lo/DoubleBinaryOperator;Landroid/view/View;Ljava/lang/String;)V

    .line 342
    iget-object p1, p0, Lo/DoubleBinaryOperator$TaskDescription;->d:Lo/DoubleBinaryOperator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/DoubleBinaryOperator;->b(Lo/DoubleBinaryOperator;Z)Z

    goto :goto_0

    .line 344
    :cond_1
    iget-object v0, p0, Lo/DoubleBinaryOperator$TaskDescription;->d:Lo/DoubleBinaryOperator;

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Lo/DoubleBinaryOperator;->a(Lo/DoubleBinaryOperator;Landroid/view/View;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 3

    .line 327
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lo/DoubleBinaryOperator$TaskDescription;->d:Lo/DoubleBinaryOperator;

    move-object v1, p1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lo/DoubleBinaryOperator;->e(Lo/DoubleBinaryOperator;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 330
    :cond_0
    iget-object v0, p0, Lo/DoubleBinaryOperator$TaskDescription;->d:Lo/DoubleBinaryOperator;

    const/4 v1, 0x0

    const-string v2, "onChildViewAttachedToWindow"

    invoke-static {v0, p1, v1, v2}, Lo/DoubleBinaryOperator;->a(Lo/DoubleBinaryOperator;Landroid/view/View;ZLjava/lang/String;)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 317
    iget-object p1, p0, Lo/DoubleBinaryOperator$TaskDescription;->d:Lo/DoubleBinaryOperator;

    const-string p2, "onLayoutChange"

    invoke-static {p1, p2}, Lo/DoubleBinaryOperator;->c(Lo/DoubleBinaryOperator;Ljava/lang/String;)V

    return-void
.end method
