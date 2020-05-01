.class public final Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$fetchTask$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/bC;->d(Lo/DateTransformation;Lo/alA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "TT;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/alA;


# direct methods
.method public constructor <init>(Lo/alA;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$fetchTask$2;->a:Lo/alA;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$fetchTask$2;->a:Lo/alA;

    new-instance v1, Lo/bG;

    invoke-direct {v1, p1}, Lo/bG;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/repository/impl/NetflixRepositoryImpl$fetchTask$2;->d(Ljava/lang/Object;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
