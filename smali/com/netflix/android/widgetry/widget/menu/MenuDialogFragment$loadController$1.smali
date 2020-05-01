.class public final Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SynchronousResultReceiver;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/android/widgetry/widget/menu/MenuController<",
        "TT;>;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/SynchronousResultReceiver;


# direct methods
.method public constructor <init>(Lo/SynchronousResultReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/android/widgetry/widget/menu/MenuController;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/android/widgetry/widget/menu/MenuController<",
            "TT;>;)V"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    invoke-virtual {v0}, Lo/SynchronousResultReceiver;->g()V

    .line 201
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    invoke-static {v0, p1}, Lo/SynchronousResultReceiver;->d(Lo/SynchronousResultReceiver;Lcom/netflix/android/widgetry/widget/menu/MenuController;)V

    .line 203
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    invoke-static {v0}, Lo/SynchronousResultReceiver;->e(Lo/SynchronousResultReceiver;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    invoke-static {v1}, Lo/SynchronousResultReceiver;->a(Lo/SynchronousResultReceiver;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    invoke-virtual {v0}, Lo/SynchronousResultReceiver;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    invoke-static {v1}, Lo/SynchronousResultReceiver;->c(Lo/SynchronousResultReceiver;)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1$2;

    invoke-direct {v2, p0}, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1$2;-><init>(Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;)V

    check-cast v2, Lo/alN;

    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    invoke-static {v0}, Lo/SynchronousResultReceiver;->a(Lo/SynchronousResultReceiver;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$FragmentManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$FragmentManager;)V

    .line 212
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    invoke-static {v0}, Lo/SynchronousResultReceiver;->a(Lo/SynchronousResultReceiver;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    invoke-static {v0}, Lo/SynchronousResultReceiver;->a(Lo/SynchronousResultReceiver;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const-string v2, "controller"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/widget/menu/MenuController;->getAdapter()Lo/OfLong;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 214
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    invoke-static {v0}, Lo/SynchronousResultReceiver;->d(Lo/SynchronousResultReceiver;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    invoke-static {v0}, Lo/SynchronousResultReceiver;->f(Lo/SynchronousResultReceiver;)Lo/HorizontalScrollView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/widget/menu/MenuController;->getItemClicks()Lio/reactivex/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    invoke-static {v2}, Lo/SynchronousResultReceiver;->j(Lo/SynchronousResultReceiver;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    invoke-static {v3}, Lo/SynchronousResultReceiver;->i(Lo/SynchronousResultReceiver;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lo/SynchronousResultReceiver;->d(Lio/reactivex/Observable;Lio/reactivex/subjects/PublishSubject;Z)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-static {v0, v1}, Lo/SynchronousResultReceiver;->b(Lo/SynchronousResultReceiver;Lio/reactivex/disposables/Disposable;)V

    .line 222
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->c:Lo/SynchronousResultReceiver;

    .line 220
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/widget/menu/MenuController;->getDismissClicks()Lio/reactivex/Observable;

    move-result-object v1

    const-wide/16 v2, 0x1

    .line 221
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v1

    .line 222
    new-instance v2, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1$1;

    invoke-direct {v2, p0}, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1$1;-><init>(Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-static {v0, v1}, Lo/SynchronousResultReceiver;->e(Lo/SynchronousResultReceiver;Lio/reactivex/disposables/Disposable;)V

    .line 224
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/widget/menu/MenuController;->requestModelBuild()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Lcom/netflix/android/widgetry/widget/menu/MenuController;

    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/widget/menu/MenuDialogFragment$loadController$1;->a(Lcom/netflix/android/widgetry/widget/menu/MenuController;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
