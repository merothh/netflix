.class public final Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


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
        "Lo/alA<",
        "Lo/DG;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/EO;


# direct methods
.method public constructor <init>(Lo/EO;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$3;->e:Lo/EO;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/DG;)V
    .locals 1

    .line 68
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$3;->e:Lo/EO;

    invoke-static {p1}, Lo/EO;->a(Lo/EO;)Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$3;->e:Lo/EO;

    invoke-virtual {v0}, Lo/EO;->a()Lo/SimpleExpandableListAdapter;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;->d(Lo/SimpleExpandableListAdapter;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lo/DG;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$3;->d(Lo/DG;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
