.class final Lo/FileObserver$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FileObserver;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Landroid/view/View;

.field final synthetic e:Lo/FileObserver;


# direct methods
.method constructor <init>(Lo/FileObserver;Landroid/view/View;FF)V
    .locals 0

    iput-object p1, p0, Lo/FileObserver$ActionBar;->e:Lo/FileObserver;

    iput-object p2, p0, Lo/FileObserver$ActionBar;->c:Landroid/view/View;

    iput p3, p0, Lo/FileObserver$ActionBar;->a:F

    iput p4, p0, Lo/FileObserver$ActionBar;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 96
    iget-object v0, p0, Lo/FileObserver$ActionBar;->e:Lo/FileObserver;

    invoke-static {v0}, Lo/FileObserver;->b(Lo/FileObserver;)Lo/BaseAdapter;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 216
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v2, p0, Lo/FileObserver$ActionBar;->e:Lo/FileObserver;

    invoke-static {v2}, Lo/FileObserver;->a(Lo/FileObserver;)Lo/ImageSwitcher;

    move-result-object v2

    iget-object v3, p0, Lo/FileObserver$ActionBar;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 99
    iget-object v4, p0, Lo/FileObserver$ActionBar;->e:Lo/FileObserver;

    invoke-static {v4}, Lo/FileObserver;->e(Lo/FileObserver;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 100
    iget-object v4, p0, Lo/FileObserver$ActionBar;->e:Lo/FileObserver;

    invoke-static {v4}, Lo/FileObserver;->a(Lo/FileObserver;)Lo/ImageSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lo/ImageSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, "loadingLabel.layoutParams"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lo/BatteryManager;->f(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 101
    iget-object v4, p0, Lo/FileObserver$ActionBar;->e:Lo/FileObserver;

    invoke-static {v4}, Lo/FileObserver;->a(Lo/FileObserver;)Lo/ImageSwitcher;

    move-result-object v4

    invoke-virtual {v4}, Lo/ImageSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lo/BatteryManager;->e(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 102
    iget-object v4, p0, Lo/FileObserver$ActionBar;->e:Lo/FileObserver;

    invoke-static {v4}, Lo/FileObserver;->e(Lo/FileObserver;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v5, "loadingProgress.layoutParams"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lo/BatteryManager;->f(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 103
    iget-object v4, p0, Lo/FileObserver$ActionBar;->e:Lo/FileObserver;

    invoke-static {v4}, Lo/FileObserver;->e(Lo/FileObserver;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lo/BatteryManager;->e(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 102
    invoke-virtual {v2, v3}, Lo/ImageSwitcher;->setMaxWidth(I)V

    .line 105
    invoke-static {}, Lo/FileObserver;->t()I

    move-result v2

    iget-object v3, p0, Lo/FileObserver$ActionBar;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lo/FileObserver$ActionBar;->a:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 106
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    iget v3, p0, Lo/FileObserver$ActionBar;->b:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 216
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
