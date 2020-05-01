.class Lo/PooledStringReader$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PooledStringReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/PooledStringReader;


# direct methods
.method constructor <init>(Lo/PooledStringReader;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lo/PooledStringReader$2;->b:Lo/PooledStringReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 79
    iget-object v0, p0, Lo/PooledStringReader$2;->b:Lo/PooledStringReader;

    invoke-static {v0}, Lo/PooledStringReader;->c(Lo/PooledStringReader;)Lo/ParcelFormatException;

    move-result-object v0

    invoke-virtual {v0}, Lo/ParcelFormatException;->d()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "PulseAnimator"

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 80
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    .line 81
    iget-object v6, p0, Lo/PooledStringReader$2;->b:Lo/PooledStringReader;

    invoke-static {v6}, Lo/PooledStringReader;->c(Lo/PooledStringReader;)Lo/ParcelFormatException;

    move-result-object v6

    invoke-virtual {v6}, Lo/ParcelFormatException;->c()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lo/PooledStringReader$2;->b:Lo/PooledStringReader;

    invoke-static {v6}, Lo/PooledStringReader;->a(Lo/PooledStringReader;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lo/PooledStringReader$2;->b:Lo/PooledStringReader;

    invoke-static {v6}, Lo/PooledStringReader;->d(Lo/PooledStringReader;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string v6, "Row#%s run at %s with %s pulses"

    invoke-static {v2, v6, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_0

    .line 83
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lo/PooledStringReader$2;->b:Lo/PooledStringReader;

    invoke-static {v6}, Lo/PooledStringReader;->a(Lo/PooledStringReader;)I

    move-result v6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 84
    iget-object v5, p0, Lo/PooledStringReader$2;->b:Lo/PooledStringReader;

    invoke-static {v5}, Lo/PooledStringReader;->e(Lo/PooledStringReader;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object v5

    check-cast v5, Lo/ParcelFormatException$Activity;

    goto :goto_0

    .line 86
    :cond_0
    instance-of v6, v5, Lo/PooledStringReader$Application;

    if-eqz v6, :cond_3

    .line 87
    check-cast v5, Lo/PooledStringReader$Application;

    .line 88
    invoke-interface {v5}, Lo/PooledStringReader$Application;->T_()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 90
    invoke-interface {v5}, Lo/PooledStringReader$Application;->h()Landroid/view/View;

    move-result-object v6

    .line 91
    invoke-interface {v5}, Lo/PooledStringReader$Application;->j()Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v8

    .line 92
    invoke-interface {v5}, Lo/PooledStringReader$Application;->S_()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 95
    iget v9, v5, Landroid/graphics/Rect;->right:I

    iget v10, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    .line 96
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    iget v11, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    if-ltz v9, :cond_1

    if-ltz v10, :cond_1

    .line 99
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v9, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 100
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v10, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 101
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 103
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v5

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    .line 104
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    const-string v1, "%s - Invalid dimensions for image view: width: %d, height: %d"

    invoke-static {v11, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-interface {v5, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 109
    :cond_2
    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v8}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 113
    :cond_3
    iget-object v1, p0, Lo/PooledStringReader$2;->b:Lo/PooledStringReader;

    invoke-static {v1}, Lo/PooledStringReader;->a(Lo/PooledStringReader;)I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemCount()I

    move-result v0

    if-lt v1, v0, :cond_4

    .line 114
    iget-object v0, p0, Lo/PooledStringReader$2;->b:Lo/PooledStringReader;

    invoke-static {v0, v3}, Lo/PooledStringReader;->d(Lo/PooledStringReader;I)I

    .line 116
    :cond_4
    iget-object v0, p0, Lo/PooledStringReader$2;->b:Lo/PooledStringReader;

    invoke-static {v0}, Lo/PooledStringReader;->b(Lo/PooledStringReader;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    iget-object v0, p0, Lo/PooledStringReader$2;->b:Lo/PooledStringReader;

    invoke-static {v0}, Lo/PooledStringReader;->g(Lo/PooledStringReader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/PooledStringReader$2;->b:Lo/PooledStringReader;

    invoke-static {v1}, Lo/PooledStringReader;->f(Lo/PooledStringReader;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lo/PooledStringReader$2;->b:Lo/PooledStringReader;

    invoke-static {v2}, Lo/PooledStringReader;->h(Lo/PooledStringReader;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_5
    new-array v0, v1, [Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lo/PooledStringReader$2;->b:Lo/PooledStringReader;

    invoke-static {v1}, Lo/PooledStringReader;->c(Lo/PooledStringReader;)Lo/ParcelFormatException;

    move-result-object v1

    invoke-virtual {v1}, Lo/ParcelFormatException;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Row#%s run... wait, no RecyclerView or valid activity detected, stopping..."

    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 121
    iget-object v0, p0, Lo/PooledStringReader$2;->b:Lo/PooledStringReader;

    invoke-static {v0, v3}, Lo/PooledStringReader;->e(Lo/PooledStringReader;Z)Z

    :cond_6
    :goto_2
    return-void
.end method
