.class final Lcom/netflix/android/mdxpanel/MdxPanelController$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/mdxpanel/MdxPanelController;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Lo/UnicodeScript;Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/android/mdxpanel/MdxPanelController;


# direct methods
.method constructor <init>(Lcom/netflix/android/mdxpanel/MdxPanelController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$1;->c:Lcom/netflix/android/mdxpanel/MdxPanelController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;)V
    .locals 7

    .line 230
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$1;->c:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->c(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->b()V

    .line 231
    invoke-interface {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;->a()Lio/reactivex/Observable;

    move-result-object p1

    .line 232
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$1;->c:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->l(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p1, "it.data()\n              \u2026.takeUntil(deactivates())"

    invoke-static {v1, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    new-instance p1, Lcom/netflix/android/mdxpanel/MdxPanelController$1$1;

    invoke-direct {p1, p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$1$1;-><init>(Lcom/netflix/android/mdxpanel/MdxPanelController$1;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    .line 236
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$1;->c:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->d(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lo/alA;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 233
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;

    invoke-virtual {p0, p1}, Lcom/netflix/android/mdxpanel/MdxPanelController$1;->a(Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
