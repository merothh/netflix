.class public final Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$initializeWindowAndOrientationObservables$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Dn;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Landroid/view/Window;",
        "Landroid/view/View;",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/Dn;


# direct methods
.method public constructor <init>(Lo/Dn;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$initializeWindowAndOrientationObservables$1;->e:Lo/Dn;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/Window;Landroid/view/View;)Lio/reactivex/disposables/Disposable;
    .locals 4

    const-string v0, "safeWindow"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$initializeWindowAndOrientationObservables$1;->e:Lo/Dn;

    invoke-static {v0}, Lo/Dn;->e(Lo/Dn;)Lo/UpdateEngine;

    move-result-object v0

    .line 192
    new-instance v1, Lo/Dr$StateListAnimator;

    .line 194
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "safeView.context"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "safeView.context.resources"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 192
    invoke-direct {v1, p1, v2}, Lo/Dr$StateListAnimator;-><init>(Landroid/view/Window;I)V

    check-cast v1, Lo/VintfObject;

    .line 214
    const-class v2, Lo/Dr;

    invoke-virtual {v0, v2, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 216
    invoke-static {p2}, Lo/SSLCertificateSocketFactory;->c(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v0, "RxView.systemUiVisibilityChanges(this)"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$initializeWindowAndOrientationObservables$1;->e:Lo/Dn;

    invoke-static {v0}, Lo/Dn;->b(Lo/Dn;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p2

    .line 201
    invoke-virtual {p2}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p2

    .line 202
    new-instance v0, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$initializeWindowAndOrientationObservables$1$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$initializeWindowAndOrientationObservables$1$1;-><init>(Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$initializeWindowAndOrientationObservables$1;Landroid/view/Window;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Landroid/view/Window;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/common/episodes/list/EpisodesListSelectorDialogFragment$initializeWindowAndOrientationObservables$1;->c(Landroid/view/Window;Landroid/view/View;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method
