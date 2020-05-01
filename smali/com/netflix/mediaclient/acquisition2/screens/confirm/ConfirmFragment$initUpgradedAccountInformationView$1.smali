.class final Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment$initUpgradedAccountInformationView$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment$initUpgradedAccountInformationView$1;->d:Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment$initUpgradedAccountInformationView$1;->d:Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lo/ArrayMap;->v()V

    return-void
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment$initUpgradedAccountInformationView$1;->d()V

    sget-object v0, Lo/akj;->a:Lo/akj;

    return-object v0
.end method
