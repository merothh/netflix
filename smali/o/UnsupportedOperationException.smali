.class public abstract Lo/UnsupportedOperationException;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$Intent;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field final a:Lo/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Thread<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lo/Thread$StateListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Thread$StateListAnimator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lo/State$StateListAnimator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/State$StateListAnimator<",
            "TT;>;)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    .line 97
    new-instance v0, Lo/UnsupportedOperationException$5;

    invoke-direct {v0, p0}, Lo/UnsupportedOperationException$5;-><init>(Lo/UnsupportedOperationException;)V

    iput-object v0, p0, Lo/UnsupportedOperationException;->b:Lo/Thread$StateListAnimator;

    .line 108
    new-instance v0, Lo/Thread;

    new-instance v1, Lo/SuppressWarnings;

    invoke-direct {v1, p0}, Lo/SuppressWarnings;-><init>(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    new-instance v2, Lo/StringBuffer$StateListAnimator;

    invoke-direct {v2, p1}, Lo/StringBuffer$StateListAnimator;-><init>(Lo/State$StateListAnimator;)V

    .line 109
    invoke-virtual {v2}, Lo/StringBuffer$StateListAnimator;->c()Lo/StringBuffer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lo/Thread;-><init>(Lo/VirtualMachineError;Lo/StringBuffer;)V

    iput-object v0, p0, Lo/UnsupportedOperationException;->a:Lo/Thread;

    .line 110
    iget-object p1, p0, Lo/UnsupportedOperationException;->a:Lo/Thread;

    iget-object v0, p0, Lo/UnsupportedOperationException;->b:Lo/Thread$StateListAnimator;

    invoke-virtual {p1, v0}, Lo/Thread;->b(Lo/Thread$StateListAnimator;)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lo/UnsupportedOperationException;->a:Lo/Thread;

    invoke-virtual {v0}, Lo/Thread;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lo/UnsupportedOperationException;->a:Lo/Thread;

    invoke-virtual {v0, p1}, Lo/Thread;->a(Ljava/util/List;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 155
    iget-object v0, p0, Lo/UnsupportedOperationException;->a:Lo/Thread;

    invoke-virtual {v0}, Lo/Thread;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
