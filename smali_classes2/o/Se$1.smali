.class Lo/Se$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Se;->a(Lo/Se$StateListAnimator;Lo/Bc;Landroidx/recyclerview/widget/RecyclerView;Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic c:Lo/Se$StateListAnimator;

.field final synthetic e:Lo/Se;


# direct methods
.method constructor <init>(Lo/Se;Landroidx/recyclerview/widget/RecyclerView;Lo/Se$StateListAnimator;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lo/Se$1;->e:Lo/Se;

    iput-object p2, p0, Lo/Se$1;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lo/Se$1;->c:Lo/Se$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 203
    iget-object v0, p0, Lo/Se$1;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 206
    iget-object v0, p0, Lo/Se$1;->e:Lo/Se;

    iget-object v1, p0, Lo/Se$1;->c:Lo/Se$StateListAnimator;

    invoke-static {v0, v1}, Lo/Se;->d(Lo/Se;Lo/Se$StateListAnimator;)V

    .line 207
    iget-object v0, p0, Lo/Se$1;->e:Lo/Se;

    iget-object v0, v0, Lo/Se;->a:Lo/HwBlob;

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lo/Se$1;->e:Lo/Se;

    iget-object v1, p0, Lo/Se$1;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lo/Se$1;->c:Lo/Se$StateListAnimator;

    invoke-static {v0, v1, v2}, Lo/Se;->d(Lo/Se;Landroidx/recyclerview/widget/RecyclerView;Lo/Se$StateListAnimator;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lo/Se$1;->e:Lo/Se;

    iget-object v0, v0, Lo/Se;->a:Lo/HwBlob;

    invoke-virtual {v0}, Lo/HwBlob;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lo/Se$1;->e:Lo/Se;

    iget-object v1, p0, Lo/Se$1;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lo/Se;->a:Lo/HwBlob;

    invoke-virtual {v2}, Lo/HwBlob;->c()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/Se;->a(Lo/Se;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
