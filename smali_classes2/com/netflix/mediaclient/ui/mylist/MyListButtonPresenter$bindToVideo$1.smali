.class public final Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$bindToVideo$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Oc;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/TrackingInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Ob;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/Oc;


# direct methods
.method public constructor <init>(Lo/Oc;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$bindToVideo$1;->b:Lo/Oc;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/Ob;)V
    .locals 1

    .line 79
    instance-of v0, p1, Lo/Ob$Activity;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$bindToVideo$1;->b:Lo/Oc;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/Oc;->d(Z)V

    goto :goto_0

    .line 80
    :cond_0
    instance-of v0, p1, Lo/Ob$Application;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$bindToVideo$1;->b:Lo/Oc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/Oc;->d(Z)V

    goto :goto_0

    .line 81
    :cond_1
    instance-of v0, p1, Lo/Ob$TaskDescription;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$bindToVideo$1;->b:Lo/Oc;

    invoke-static {p1}, Lo/Oc;->a(Lo/Oc;)Lo/Od;

    move-result-object p1

    invoke-interface {p1}, Lo/Od;->g()V

    goto :goto_0

    .line 82
    :cond_2
    instance-of p1, p1, Lo/Ob$ActionBar;

    if-eqz p1, :cond_3

    .line 83
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$bindToVideo$1;->b:Lo/Oc;

    invoke-static {p1}, Lo/Oc;->a(Lo/Oc;)Lo/Od;

    move-result-object p1

    invoke-interface {p1}, Lo/Od;->g()V

    .line 84
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$bindToVideo$1;->b:Lo/Oc;

    invoke-static {p1}, Lo/Oc;->a(Lo/Oc;)Lo/Od;

    move-result-object p1

    invoke-interface {p1}, Lo/Od;->b()V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lo/Ob;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$bindToVideo$1;->d(Lo/Ob;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
