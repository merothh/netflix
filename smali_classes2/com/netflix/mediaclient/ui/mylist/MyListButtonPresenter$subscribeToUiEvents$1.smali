.class public final Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$subscribeToUiEvents$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Oc;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Od$TaskDescription;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Oc;


# direct methods
.method public constructor <init>(Lo/Oc;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$subscribeToUiEvents$1;->c:Lo/Oc;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/Od$TaskDescription;)V
    .locals 4

    .line 98
    instance-of v0, p1, Lo/Od$TaskDescription$Application;

    if-eqz v0, :cond_0

    .line 100
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$subscribeToUiEvents$1;->c:Lo/Oc;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/Oc;->d(Z)V

    .line 101
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$subscribeToUiEvents$1;->c:Lo/Oc;

    invoke-static {p1}, Lo/Oc;->a(Lo/Oc;)Lo/Od;

    move-result-object p1

    invoke-interface {p1}, Lo/Od;->h()V

    .line 103
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$subscribeToUiEvents$1;->c:Lo/Oc;

    invoke-static {p1}, Lo/Oc;->e(Lo/Oc;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$subscribeToUiEvents$1;->c:Lo/Oc;

    invoke-static {v1}, Lo/Oc;->c(Lo/Oc;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$subscribeToUiEvents$1;->c:Lo/Oc;

    invoke-static {v2}, Lo/Oc;->d(Lo/Oc;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$subscribeToUiEvents$1;->c:Lo/Oc;

    invoke-static {v3}, Lo/Oc;->b(Lo/Oc;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lo/Oc;->e(Lo/Oc;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 104
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$subscribeToUiEvents$1;->c:Lo/Oc;

    invoke-static {p1}, Lo/Oc;->a(Lo/Oc;)Lo/Od;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$subscribeToUiEvents$1;->c:Lo/Oc;

    invoke-static {v0}, Lo/Oc;->e(Lo/Oc;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/Od;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_0
    instance-of p1, p1, Lo/Od$TaskDescription$Activity;

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$subscribeToUiEvents$1;->c:Lo/Oc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/Oc;->d(Z)V

    .line 109
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$subscribeToUiEvents$1;->c:Lo/Oc;

    invoke-static {p1}, Lo/Oc;->a(Lo/Oc;)Lo/Od;

    move-result-object p1

    invoke-interface {p1}, Lo/Od;->i()V

    .line 111
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$subscribeToUiEvents$1;->c:Lo/Oc;

    .line 112
    invoke-static {p1}, Lo/Oc;->e(Lo/Oc;)Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$subscribeToUiEvents$1;->c:Lo/Oc;

    invoke-static {v1}, Lo/Oc;->c(Lo/Oc;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$subscribeToUiEvents$1;->c:Lo/Oc;

    invoke-static {v2}, Lo/Oc;->d(Lo/Oc;)Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v2

    .line 115
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$subscribeToUiEvents$1;->c:Lo/Oc;

    invoke-static {v3}, Lo/Oc;->b(Lo/Oc;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    .line 111
    invoke-static {p1, v0, v1, v2, v3}, Lo/Oc;->b(Lo/Oc;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/TrackingInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lo/Od$TaskDescription;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$subscribeToUiEvents$1;->d(Lo/Od$TaskDescription;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
