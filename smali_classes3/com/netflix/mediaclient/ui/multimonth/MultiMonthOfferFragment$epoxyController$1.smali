.class public final synthetic Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$epoxyController$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NA;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lo/alA<",
        "Lo/Nw;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/NA;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lo/Nw;)V
    .locals 1

    const-string v0, "p1"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$epoxyController$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lo/NA;

    .line 35
    invoke-static {v0, p1}, Lo/NA;->a(Lo/NA;Lo/Nw;)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "onOfferSelected"

    return-object v0
.end method

.method public final getOwner()Lo/amH;
    .locals 1

    const-class v0, Lo/NA;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "onOfferSelected(Lcom/netflix/mediaclient/ui/multimonth/OfferChoice;)V"

    return-object v0
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Lo/Nw;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$epoxyController$1;->a(Lo/Nw;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
