.class final synthetic Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initEmvcoWebView$1$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$Activity;->run(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lo/alA<",
        "Ljava/lang/String;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/Base64;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initEmvcoWebView$1$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lo/Base64;

    .line 266
    invoke-virtual {v0, p1}, Lo/Base64;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "onReceiveJwt"

    return-object v0
.end method

.method public final getOwner()Lo/amH;
    .locals 1

    const-class v0, Lo/Base64;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "onReceiveJwt(Ljava/lang/String;)V"

    return-object v0
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initEmvcoWebView$1$1;->b(Ljava/lang/String;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
