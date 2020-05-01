.class public final Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$updatedSeasonList$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/EO;->e(Ljava/util/List;)Lo/SimpleExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Integer;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/EO;

.field final synthetic e:Lo/SimpleExpandableListAdapter;


# direct methods
.method public constructor <init>(Lo/EO;Lo/SimpleExpandableListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$updatedSeasonList$1;->b:Lo/EO;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$updatedSeasonList$1;->e:Lo/SimpleExpandableListAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Integer;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$updatedSeasonList$1;->b:Lo/EO;

    invoke-static {v0}, Lo/EO;->a(Lo/EO;)Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;->d(I)V

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$updatedSeasonList$1;->b:Lo/EO;

    invoke-static {v0}, Lo/EO;->a(Lo/EO;)Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$updatedSeasonList$1;->e:Lo/SimpleExpandableListAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lo/SimpleExpandableListAdapter;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$updatedSeasonList$1;->b(Ljava/lang/Integer;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
