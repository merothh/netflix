.class public final Lo/Yz$Fragment;
.super Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yz;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Yz;


# direct methods
.method constructor <init>(Lo/Yz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 480
    iput-object p1, p0, Lo/Yz$Fragment;->d:Lo/Yz;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 12

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    sget-object v0, Lo/Yz;->a:Lo/Yz$Activity;

    check-cast v0, Lo/MessagePdu;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.previews.PreviewsPlayerItemViewHolder"

    const-string v1, "getChildAt(index)"

    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    const/4 v4, 0x1

    if-eq p2, v4, :cond_0

    goto/16 :goto_2

    .line 502
    :cond_0
    iget-object p2, p0, Lo/Yz$Fragment;->d:Lo/Yz;

    invoke-static {p2}, Lo/Yz;->a(Lo/Yz;)Lo/Yt;

    move-result-object p2

    invoke-virtual {p2}, Lo/Yt;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 503
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()I

    move-result p2

    .line 504
    sget-object v2, Lo/Yz;->a:Lo/Yz$Activity;

    check-cast v2, Lo/MessagePdu;

    .line 506
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .line 591
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_7

    .line 592
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v5, Lo/Yo;

    .line 508
    invoke-virtual {v5}, Lo/Yo;->getAdapterPosition()I

    move-result v6

    if-ne v6, p2, :cond_1

    .line 509
    invoke-virtual {v5}, Lo/Yo;->c()V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 507
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 502
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 485
    :cond_4
    iget-object p2, p0, Lo/Yz$Fragment;->d:Lo/Yz;

    invoke-static {p2}, Lo/Yz;->a(Lo/Yz;)Lo/Yt;

    move-result-object p2

    invoke-virtual {p2}, Lo/Yt;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object p2

    if-eqz p2, :cond_8

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 486
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->m()I

    move-result p2

    .line 487
    sget-object v2, Lo/Yz;->a:Lo/Yz$Activity;

    check-cast v2, Lo/MessagePdu;

    .line 489
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .line 578
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_7

    .line 579
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object v5

    if-eqz v5, :cond_6

    move-object v6, v5

    check-cast v6, Lo/Yo;

    .line 491
    sget-object v5, Lo/Yz;->a:Lo/Yz$Activity;

    check-cast v5, Lo/MessagePdu;

    .line 492
    invoke-virtual {v6}, Lo/Yo;->getAdapterPosition()I

    move-result v5

    if-ne v5, p2, :cond_5

    .line 493
    iget-object p1, p0, Lo/Yz$Fragment;->d:Lo/Yz;

    new-instance v0, Lo/YB$ActionBar;

    invoke-direct {v0, p2}, Lo/YB$ActionBar;-><init>(I)V

    invoke-virtual {p1, v0}, Lo/Yz;->e(Ljava/lang/Object;)V

    const-string p1, "setPlaybackTo from SCROLL_STATE_IDLE"

    .line 494
    invoke-virtual {v6, p1}, Lo/Yo;->a(Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    .line 495
    invoke-static/range {v6 .. v11}, Lo/Yo;->a(Lo/Yo;ZZLjava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 490
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    return-void

    .line 485
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
