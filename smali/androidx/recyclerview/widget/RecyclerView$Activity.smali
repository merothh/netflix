.class public abstract Landroidx/recyclerview/widget/RecyclerView$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$Intent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroidx/recyclerview/widget/RecyclerView$TaskDescription;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6985
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$TaskDescription;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$TaskDescription;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Activity;->mObservable:Landroidx/recyclerview/widget/RecyclerView$TaskDescription;

    const/4 v0, 0x0

    .line 6986
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$Activity;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 7099
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->mPosition:I

    .line 7100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7101
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Activity;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->mItemId:J

    :cond_0
    const/16 v0, 0x207

    const/4 v1, 0x1

    .line 7103
    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Intent;->setFlags(II)V

    const-string v0, "RV OnBindView"

    .line 7106
    invoke-static {v0}, Lo/TextView;->e(Ljava/lang/String;)V

    .line 7107
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;ILjava/util/List;)V

    .line 7108
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;->clearPayload()V

    .line 7109
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 7110
    instance-of p2, p1, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    if-eqz p2, :cond_1

    .line 7111
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Dialog;

    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView$Dialog;->mInsetsDirty:Z

    .line 7113
    :cond_1
    invoke-static {}, Lo/TextView;->a()V

    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    :try_start_0
    const-string v0, "RV CreateView"

    .line 7077
    invoke-static {v0}, Lo/TextView;->e(Ljava/lang/String;)V

    .line 7078
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object p1

    .line 7079
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7084
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->mItemViewType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7087
    invoke-static {}, Lo/TextView;->a()V

    return-object p1

    .line 7080
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 7087
    invoke-static {}, Lo/TextView;->a()V

    .line 7088
    throw p1
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final hasObservers()Z
    .locals 1

    .line 7267
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Activity;->mObservable:Landroidx/recyclerview/widget/RecyclerView$TaskDescription;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$TaskDescription;->d()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 7175
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$Activity;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 7354
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Activity;->mObservable:Landroidx/recyclerview/widget/RecyclerView$TaskDescription;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$TaskDescription;->e()V

    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 2

    .line 7370
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Activity;->mObservable:Landroidx/recyclerview/widget/RecyclerView$TaskDescription;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$TaskDescription;->d(II)V

    return-void
.end method

.method public final notifyItemChanged(ILjava/lang/Object;)V
    .locals 2

    .line 7398
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Activity;->mObservable:Landroidx/recyclerview/widget/RecyclerView$TaskDescription;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$TaskDescription;->c(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemInserted(I)V
    .locals 2

    .line 7464
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Activity;->mObservable:Landroidx/recyclerview/widget/RecyclerView$TaskDescription;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$TaskDescription;->b(II)V

    return-void
.end method

.method public final notifyItemMoved(II)V
    .locals 1

    .line 7479
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Activity;->mObservable:Landroidx/recyclerview/widget/RecyclerView$TaskDescription;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$TaskDescription;->c(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1

    .line 7416
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Activity;->mObservable:Landroidx/recyclerview/widget/RecyclerView$TaskDescription;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$TaskDescription;->d(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 7447
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Activity;->mObservable:Landroidx/recyclerview/widget/RecyclerView$TaskDescription;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$TaskDescription;->c(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .locals 1

    .line 7498
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Activity;->mObservable:Landroidx/recyclerview/widget/RecyclerView$TaskDescription;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$TaskDescription;->b(II)V

    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .locals 1

    .line 7532
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Activity;->mObservable:Landroidx/recyclerview/widget/RecyclerView$TaskDescription;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$TaskDescription;->a(II)V

    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2

    .line 7515
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Activity;->mObservable:Landroidx/recyclerview/widget/RecyclerView$TaskDescription;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$TaskDescription;->a(II)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public abstract onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7065
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V

    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$Intent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V
    .locals 1

    .line 7287
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Activity;->mObservable:Landroidx/recyclerview/widget/RecyclerView$TaskDescription;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$TaskDescription;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public setHasStableIds(Z)V
    .locals 1

    .line 7141
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7145
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$Activity;->mHasStableIds:Z

    return-void

    .line 7142
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V
    .locals 1

    .line 7301
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Activity;->mObservable:Landroidx/recyclerview/widget/RecyclerView$TaskDescription;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$TaskDescription;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
