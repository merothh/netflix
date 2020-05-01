.class public final Lo/Yt;
.super Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Yt$TaskDescription;
    }
.end annotation


# static fields
.field public static final c:Lo/Yt$TaskDescription;


# instance fields
.field private a:F

.field private b:Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

.field private d:Lo/ShellCommand;

.field private e:F

.field private f:F

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Yt$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Yt$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Yt;->c:Lo/Yt$TaskDescription;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Yt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/Yt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 16
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Yt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic setPlaybackState$default(Lo/Yt;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 73
    :cond_0
    invoke-virtual {p0, p1, p2}, Lo/Yt;->setPlaybackState(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lo/Yt;->c:Lo/Yt$TaskDescription;

    invoke-virtual {v0}, Lo/Yt$TaskDescription;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lo/Yt;->f:F

    .line 91
    iget v0, p0, Lo/Yt;->f:F

    iget v2, p0, Lo/Yt;->e:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/16 v2, 0x64

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 92
    iget v0, p0, Lo/Yt;->f:F

    iget v2, p0, Lo/Yt;->e:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 93
    :goto_0
    invoke-virtual {p0}, Lo/Yt;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    .line 95
    instance-of v2, v0, Lo/Yl;

    if-eqz v2, :cond_4

    check-cast v0, Lo/Yl;

    invoke-virtual {v0}, Lo/Yl;->e()Lo/UpdateLock;

    move-result-object v0

    new-instance v2, Lo/YB$AssistContent;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    :goto_1
    invoke-direct {v2, v1}, Lo/YB$AssistContent;-><init>(I)V

    invoke-interface {v0, v2}, Lo/UpdateLock;->e(Ljava/lang/Object;)V

    goto :goto_2

    .line 86
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lo/Yt;->e:F

    .line 100
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onScrolled(II)V
    .locals 2

    .line 39
    iget-object p2, p0, Lo/Yt;->d:Lo/ShellCommand;

    if-eqz p2, :cond_2

    .line 40
    iget v0, p0, Lo/Yt;->a:F

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lo/Yt;->a:F

    .line 41
    iget p1, p0, Lo/Yt;->a:F

    invoke-virtual {p0}, Lo/Yt;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 43
    sget-object v0, Lo/Yt;->c:Lo/Yt$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 47
    invoke-virtual {p2}, Lo/ShellCommand;->e()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lo/Yt;->stopScroll()V

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lo/Yt;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lo/Yt;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;->getAdapterPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 55
    :goto_0
    sget-object v1, Lo/Yt;->c:Lo/Yt$TaskDescription;

    check-cast v1, Lo/MessagePdu;

    if-eq p1, v0, :cond_2

    .line 57
    invoke-virtual {p2, p1}, Lo/ShellCommand;->d(I)V

    .line 58
    invoke-virtual {p0, p1}, Lo/Yt;->scrollToPosition(I)V

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lo/Yt;->a:F

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p2, p1}, Lo/ShellCommand;->c(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;->scrollToPosition(I)V

    .line 69
    iget-object v0, p0, Lo/Yt;->d:Lo/ShellCommand;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/ShellCommand;->d(I)V

    :cond_0
    const/4 p1, 0x1

    const-string v0, "scrollToPosition"

    .line 70
    invoke-virtual {p0, p1, v0}, Lo/Yt;->setPlaybackState(ZLjava/lang/String;)V

    return-void
.end method

.method public final setDragging(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lo/Yt;->i:Z

    return-void
.end method

.method public final setItemScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lo/Yt;->b:Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    .line 108
    iget-object p1, p0, Lo/Yt;->b:Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    if-nez p1, :cond_0

    const-string v0, "itemScrollListener"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lo/Yt;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    return-void
.end method

.method public final setPlaybackState(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lo/Yt;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0, v0}, Lo/Yt;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/Yo;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlaybackState from ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Yo;->a(Ljava/lang/String;)V

    .line 77
    iget-boolean v1, p0, Lo/Yt;->i:Z

    invoke-virtual {v0, p1, v1, p2}, Lo/Yo;->b(ZZLjava/lang/String;)V

    .line 78
    sget-object p1, Lo/Yt;->c:Lo/Yt$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    goto :goto_0

    .line 75
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.previews.PreviewsPlayerItemViewHolder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final setTitleBarView(Lo/ShellCommand;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lo/Yt;->d:Lo/ShellCommand;

    return-void
.end method
