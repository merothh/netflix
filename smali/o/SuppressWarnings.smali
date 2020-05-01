.class public final Lo/SuppressWarnings;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/VirtualMachineError;


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView$Activity;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Activity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/SuppressWarnings;->a:Landroidx/recyclerview/widget/RecyclerView$Activity;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/SuppressWarnings;->a:Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Activity;->notifyItemMoved(II)V

    return-void
.end method

.method public b(II)V
    .locals 1

    .line 48
    iget-object v0, p0, Lo/SuppressWarnings;->a:Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Activity;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public d(IILjava/lang/Object;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lo/SuppressWarnings;->a:Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Activity;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public e(II)V
    .locals 1

    .line 42
    iget-object v0, p0, Lo/SuppressWarnings;->a:Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Activity;->notifyItemRangeInserted(II)V

    return-void
.end method
