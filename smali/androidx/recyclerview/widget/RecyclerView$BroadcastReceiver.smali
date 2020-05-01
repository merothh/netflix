.class Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;
.super Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BroadcastReceiver"
.end annotation


# instance fields
.field final synthetic e:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 5531
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 5563
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5564
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Lo/StringIndexOutOfBoundsException;

    invoke-virtual {v0, p1, p2}, Lo/StringIndexOutOfBoundsException;->e(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5565
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e()V

    :cond_0
    return-void
.end method

.method public a(III)V
    .locals 2

    .line 5571
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5572
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Lo/StringIndexOutOfBoundsException;

    invoke-virtual {v0, p1, p2, p3}, Lo/StringIndexOutOfBoundsException;->e(III)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5573
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e()V

    :cond_0
    return-void
.end method

.method public b(IILjava/lang/Object;)V
    .locals 2

    .line 5547
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5548
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Lo/StringIndexOutOfBoundsException;

    invoke-virtual {v0, p1, p2, p3}, Lo/StringIndexOutOfBoundsException;->b(IILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5549
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 5536
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5537
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ComponentName;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$ComponentName;->h:Z

    .line 5539
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 5540
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Lo/StringIndexOutOfBoundsException;

    invoke-virtual {v0}, Lo/StringIndexOutOfBoundsException;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5541
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method e()V
    .locals 2

    .line 5578
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 5579
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lo/FilterWriter;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5581
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 5582
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :goto_0
    return-void
.end method

.method public e(II)V
    .locals 2

    .line 5555
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5556
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Lo/StringIndexOutOfBoundsException;

    invoke-virtual {v0, p1, p2}, Lo/StringIndexOutOfBoundsException;->d(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5557
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$BroadcastReceiver;->e()V

    :cond_0
    return-void
.end method
