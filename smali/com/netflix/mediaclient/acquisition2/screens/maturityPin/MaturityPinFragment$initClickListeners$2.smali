.class final Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$initClickListeners$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Landroid/view/View;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$initClickListeners$2;->d:Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$initClickListeners$2;->d:Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->r()Lo/Suggestion;

    move-result-object p1

    invoke-virtual {p1}, Lo/Suggestion;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$initClickListeners$2;->d:Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->r()Lo/Suggestion;

    move-result-object p1

    invoke-virtual {p1}, Lo/Suggestion;->g()V

    .line 92
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$initClickListeners$2;->d:Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->k()Lo/Suggestion;

    move-result-object p1

    invoke-virtual {p1}, Lo/Suggestion;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$initClickListeners$2;->d:Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->k()Lo/Suggestion;

    move-result-object p1

    invoke-virtual {p1}, Lo/Suggestion;->g()V

    :cond_1
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$initClickListeners$2;->a(Landroid/view/View;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
