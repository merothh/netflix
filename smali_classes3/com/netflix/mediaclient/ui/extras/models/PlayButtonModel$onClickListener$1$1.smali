.class public final Lcom/netflix/mediaclient/ui/extras/models/PlayButtonModel$onClickListener$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HF$Activity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alO<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lcom/netflix/mediaclient/servicemgr/PlayContext;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/HF$Activity;


# direct methods
.method public constructor <init>(Lo/HF$Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/models/PlayButtonModel$onClickListener$1$1;->a:Lo/HF$Activity;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 2

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/models/PlayButtonModel$onClickListener$1$1;->a:Lo/HF$Activity;

    iget-object v0, v0, Lo/HF$Activity;->c:Lo/HF;

    invoke-virtual {v0}, Lo/HF;->h()Lo/UpdateEngine;

    move-result-object v0

    .line 21
    new-instance v1, Lo/GY$PendingIntent;

    invoke-direct {v1, p1, p2, p3}, Lo/GY$PendingIntent;-><init>(ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    check-cast v1, Lo/VintfObject;

    .line 54
    const-class p1, Lo/GY;

    invoke-virtual {v0, p1, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/extras/models/PlayButtonModel$onClickListener$1$1;->e(ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
