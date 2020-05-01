.class public final Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/bC;-><init>(Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/bC;


# direct methods
.method public constructor <init>(Lo/bC;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$1;->c:Lo/bC;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$1;->c:Lo/bC;

    invoke-static {v0}, Lo/bC;->b(Lo/bC;)V

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$1;->e()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
