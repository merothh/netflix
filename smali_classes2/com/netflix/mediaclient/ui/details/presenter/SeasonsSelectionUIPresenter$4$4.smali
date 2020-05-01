.class final Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4;->e(Lo/ES;Ljava/lang/String;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lo/ER;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4$4;->e:Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/ER;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4$4;->e:Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4;->d:Lo/EO;

    invoke-virtual {p1}, Lo/ER;->c()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lo/EO;->b(Lo/EO;Ljava/util/List;)Lo/SimpleExpandableListAdapter;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4$4;->e:Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4;->d:Lo/EO;

    invoke-virtual {v0}, Lo/EO;->d()V

    .line 81
    invoke-virtual {p1}, Lo/SimpleExpandableListAdapter;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1, v0}, Lo/SimpleExpandableListAdapter;->a(I)V

    .line 83
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4$4;->e:Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4;->d:Lo/EO;

    invoke-static {v1}, Lo/EO;->a(Lo/EO;)Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    move-result-object v1

    invoke-virtual {p1, v0}, Lo/SimpleExpandableListAdapter;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lo/ER;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$4$4;->a(Lo/ER;)V

    return-void
.end method
