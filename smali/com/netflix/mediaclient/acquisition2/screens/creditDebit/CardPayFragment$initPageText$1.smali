.class final Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initPageText$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initPageText$1;->a:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "firstLineText"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondLineText"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initPageText$1;->a:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->s()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setDoubleLineText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initPageText$1;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method