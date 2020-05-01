.class public final Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$1;
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
        "Lo/DC;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/EO;


# direct methods
.method public constructor <init>(Lo/EO;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$1;->c:Lo/EO;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/DC;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    instance-of v0, p1, Lo/DC$ActionBar;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$1;->c:Lo/EO;

    check-cast p1, Lo/DC$ActionBar;

    invoke-virtual {p1}, Lo/DC$ActionBar;->c()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/EO;->d(Z)V

    .line 38
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$1;->c:Lo/EO;

    invoke-virtual {p1}, Lo/EO;->d()V

    goto :goto_0

    .line 40
    :cond_0
    instance-of v0, p1, Lo/DC$TaskDescription;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$1;->c:Lo/EO;

    check-cast p1, Lo/DC$TaskDescription;

    invoke-virtual {p1}, Lo/DC$TaskDescription;->a()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/EO;->c(Z)V

    .line 42
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$1;->c:Lo/EO;

    invoke-virtual {p1}, Lo/EO;->d()V

    goto :goto_0

    .line 44
    :cond_1
    instance-of v0, p1, Lo/DC$PendingIntent;

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$1;->c:Lo/EO;

    check-cast p1, Lo/DC$PendingIntent;

    invoke-virtual {p1}, Lo/DC$PendingIntent;->e()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lo/EO;->b(Lo/EO;Ljava/util/List;)Lo/SimpleExpandableListAdapter;

    .line 46
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$1;->c:Lo/EO;

    invoke-virtual {p1}, Lo/EO;->d()V

    goto :goto_0

    .line 48
    :cond_2
    instance-of v0, p1, Lo/DC$Dialog;

    if-eqz v0, :cond_4

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$1;->c:Lo/EO;

    invoke-virtual {v0}, Lo/EO;->a()Lo/SimpleExpandableListAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 50
    invoke-virtual {v0}, Lo/SimpleExpandableListAdapter;->b()I

    move-result v1

    check-cast p1, Lo/DC$Dialog;

    invoke-virtual {p1}, Lo/DC$Dialog;->d()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 51
    invoke-virtual {p1}, Lo/DC$Dialog;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/SimpleExpandableListAdapter;->a(I)V

    .line 52
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$1;->c:Lo/EO;

    invoke-static {v1}, Lo/EO;->a(Lo/EO;)Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;

    move-result-object v1

    invoke-virtual {p1}, Lo/DC$Dialog;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/SimpleExpandableListAdapter;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/netflix/mediaclient/ui/details/uiView/ISeasonsSelectionUIView;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_3
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Season Selection: selected index is invalid, less seasons are available."

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lo/DC;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/presenter/SeasonsSelectionUIPresenter$1;->c(Lo/DC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
