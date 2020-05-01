.class public final Lo/Space$TaskDescription;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Space;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private final e:Lo/SimpleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SimpleAdapter<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Lo/SimpleAdapter;Lio/reactivex/subjects/PublishSubject;Lio/reactivex/subjects/PublishSubject;Lo/SlidingDrawer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Lo/SimpleAdapter<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Integer;",
            ">;",
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;",
            "Lo/SlidingDrawer;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "model"

    invoke-static {p3, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "clickItemsSubject"

    invoke-static {p4, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "clickOutsideSubject"

    invoke-static {p5, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lo/Space$TaskDescription;->e:Lo/SimpleAdapter;

    .line 39
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->iU:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/ImageSwitcher;

    new-instance p2, Lo/Space$TaskDescription$StateListAnimator;

    invoke-direct {p2, p0, p4, p6}, Lo/Space$TaskDescription$StateListAnimator;-><init>(Lo/Space$TaskDescription;Lio/reactivex/subjects/PublishSubject;Lo/SlidingDrawer;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "title"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lo/Space$TaskDescription;->itemView:Landroid/view/View;

    .line 50
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->iU:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/ImageSwitcher;

    .line 51
    iget-object v2, p0, Lo/Space$TaskDescription;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 52
    sget p2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->u:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->y:I

    .line 50
    :goto_0
    invoke-virtual {v1, v2, p2}, Lo/ImageSwitcher;->setTextAppearance(Landroid/content/Context;I)V

    .line 53
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->iU:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/ImageSwitcher;

    const-string v0, "item_label"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d()Lo/SimpleAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/SimpleAdapter<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lo/Space$TaskDescription;->e:Lo/SimpleAdapter;

    return-object v0
.end method
