.class public final synthetic Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$epoxyController$3;
.super Lkotlin/jvm/internal/FunctionReference;
.source ""

# interfaces
.implements Lo/alB;


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
        "Lo/alB<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/NA;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$epoxyController$3;->receiver:Ljava/lang/Object;

    check-cast v0, Lo/NA;

    .line 35
    invoke-static {v0}, Lo/NA;->a(Lo/NA;)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "onDismissClicked"

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

    const-string v0, "onDismissClicked()V"

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/multimonth/MultiMonthOfferFragment$epoxyController$3;->d()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
