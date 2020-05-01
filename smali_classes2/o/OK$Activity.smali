.class public final Lo/OK$Activity;
.super Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OK;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/OK;


# direct methods
.method constructor <init>(Lo/OK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lo/OK$Activity;->b:Lo/OK;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)I
    .locals 1

    .line 66
    iget-object v0, p0, Lo/OK$Activity;->b:Lo/OK;

    invoke-static {v0}, Lo/OK;->c(Lo/OK;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lo/OK$Activity;->b:Lo/OK;

    invoke-static {v0}, Lo/OK;->c(Lo/OK;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lo/ON;

    .line 68
    invoke-virtual {v0, p1}, Lo/ON;->c(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    .line 67
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.notifications.multititle.MultiTitleNotificationsAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_2
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "MultiTitleNotifications - span size is called even though adapter is null"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
