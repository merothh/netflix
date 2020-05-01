.class public final Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/EO;-><init>(Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;Lio/reactivex/Observable;Lio/reactivex/Observable;Lo/ES;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/ES;",
        "Ljava/lang/String;",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/EO;


# direct methods
.method public constructor <init>(Lo/EO;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4;->d:Lo/EO;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/ES;Ljava/lang/String;)Lio/reactivex/disposables/Disposable;
    .locals 1

    const-string v0, "safeRepo"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeVideoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, p2}, Lo/ES;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 76
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4;->d:Lo/EO;

    invoke-static {p2}, Lo/EO;->d(Lo/EO;)Lio/reactivex/Observable;

    move-result-object p2

    check-cast p2, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 77
    new-instance p2, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4$4;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4$4;-><init>(Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lo/ES;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4;->e(Lo/ES;Ljava/lang/String;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method
