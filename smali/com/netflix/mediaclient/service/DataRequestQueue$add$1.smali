.class public final Lcom/netflix/mediaclient/service/DataRequestQueue$add$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/bL;->e(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/bL;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/DataRequestQueue$add$1;->b:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/bL;)V
    .locals 1

    .line 70
    sget-object p1, Lo/bL;->e:Lo/bL;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/DataRequestQueue$add$1;->b:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    invoke-virtual {p1, v0}, Lo/bL;->e(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lo/bL;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/DataRequestQueue$add$1;->d(Lo/bL;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
