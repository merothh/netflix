.class public final synthetic Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$bindToVideo$2;
.super Lkotlin/jvm/internal/FunctionReference;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Oc;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/TrackingInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lo/alA<",
        "Ljava/lang/Throwable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/Oc;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "p1"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$bindToVideo$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lo/Oc;

    .line 88
    invoke-static {v0, p1}, Lo/Oc;->c(Lo/Oc;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "onError"

    return-object v0
.end method

.method public final getOwner()Lo/amH;
    .locals 1

    const-class v0, Lo/Oc;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "onError(Ljava/lang/Throwable;)V"

    return-object v0
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mylist/MyListButtonPresenter$bindToVideo$2;->c(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
