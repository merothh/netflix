.class Landroidx/recyclerview/widget/RecyclerView$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/StringIndexOutOfBoundsException$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/RecyclerView;->initAdapterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 968
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 1043
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 1045
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public a(Lo/StringIndexOutOfBoundsException$Activity;)V
    .locals 0

    .line 1009
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$8;->d(Lo/StringIndexOutOfBoundsException$Activity;)V

    return-void
.end method

.method public b(I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 3

    .line 971
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 977
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Lo/UncaughtExceptionHandler;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$Intent;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lo/UncaughtExceptionHandler;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public b(II)V
    .locals 2

    .line 996
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 997
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public d(II)V
    .locals 1

    .line 1037
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 1038
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method d(Lo/StringIndexOutOfBoundsException$Activity;)V
    .locals 4

    .line 1013
    iget v0, p1, Lo/StringIndexOutOfBoundsException$Activity;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1025
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget v3, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget p1, p1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    invoke-virtual {v0, v2, v3, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V

    goto :goto_0

    .line 1021
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget v3, p1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    iget-object p1, p1, Lo/StringIndexOutOfBoundsException$Activity;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    goto :goto_0

    .line 1018
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget p1, p1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    invoke-virtual {v0, v1, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto :goto_0

    .line 1015
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$Fragment;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p1, Lo/StringIndexOutOfBoundsException$Activity;->a:I

    iget p1, p1, Lo/StringIndexOutOfBoundsException$Activity;->e:I

    invoke-virtual {v0, v1, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    :goto_0
    return-void
.end method

.method public e(II)V
    .locals 2

    .line 988
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 989
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 990
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$ComponentName;

    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$ComponentName;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$ComponentName;->c:I

    return-void
.end method

.method public e(IILjava/lang/Object;)V
    .locals 1

    .line 1003
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 1004
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$8;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    return-void
.end method

.method public e(Lo/StringIndexOutOfBoundsException$Activity;)V
    .locals 0

    .line 1032
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$8;->d(Lo/StringIndexOutOfBoundsException$Activity;)V

    return-void
.end method
