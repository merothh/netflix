.class final Lo/ScaleGestureDetector$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ScaleGestureDetector;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ScaleGestureDetector;


# direct methods
.method constructor <init>(Lo/ScaleGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lo/ScaleGestureDetector$Activity;->c:Lo/ScaleGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lo/ScaleGestureDetector$Activity;->c:Lo/ScaleGestureDetector;

    invoke-virtual {p1}, Lo/ScaleGestureDetector;->k()Lo/InputChannel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/InputChannel;->c(Z)V

    .line 124
    iget-object p1, p0, Lo/ScaleGestureDetector$Activity;->c:Lo/ScaleGestureDetector;

    invoke-virtual {p1}, Lo/ScaleGestureDetector;->C()Lo/ImageSwitcher;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lo/ScaleGestureDetector$Activity;->c:Lo/ScaleGestureDetector;

    iget-object p1, p1, Lo/ScaleGestureDetector;->e:Lo/RenderNode;

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lo/ScaleGestureDetector$Activity;->c:Lo/ScaleGestureDetector;

    invoke-virtual {p1}, Lo/ScaleGestureDetector;->B()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lo/ScaleGestureDetector$Activity;->c:Lo/ScaleGestureDetector;

    invoke-virtual {v0}, Lo/ScaleGestureDetector;->I()Lo/RenderNode;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$PendingIntent;)V

    .line 128
    :cond_0
    iget-object p1, p0, Lo/ScaleGestureDetector$Activity;->c:Lo/ScaleGestureDetector;

    invoke-static {p1}, Lo/ScaleGestureDetector;->a(Lo/ScaleGestureDetector;)V

    return-void
.end method
