.class public final Lcom/netflix/mediaclient/ui/extras/models/MyListButtonModel$onClickListener$1$$special$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ht$Application;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/String;",
        "Lcom/netflix/mediaclient/servicemgr/PlayContext;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/Ht$Application;


# direct methods
.method public constructor <init>(Lo/Ht$Application;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/models/MyListButtonModel$onClickListener$1$$special$$inlined$let$lambda$1;->d:Lo/Ht$Application;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 3

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/models/MyListButtonModel$onClickListener$1$$special$$inlined$let$lambda$1;->d:Lo/Ht$Application;

    iget-object v0, v0, Lo/Ht$Application;->d:Lo/Ht;

    invoke-virtual {v0}, Lo/Ht;->h()Lo/UpdateEngine;

    move-result-object v0

    .line 28
    new-instance v1, Lo/GY$Dialog;

    .line 30
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/models/MyListButtonModel$onClickListener$1$$special$$inlined$let$lambda$1;->d:Lo/Ht$Application;

    iget-object v2, v2, Lo/Ht$Application;->d:Lo/Ht;

    invoke-virtual {v2}, Lo/Ht;->p()Z

    move-result v2

    .line 28
    invoke-direct {v1, p1, p2, v2}, Lo/GY$Dialog;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Z)V

    check-cast v1, Lo/VintfObject;

    .line 79
    const-class p1, Lo/GY;

    invoke-virtual {v0, p1, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/models/MyListButtonModel$onClickListener$1$$special$$inlined$let$lambda$1;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
