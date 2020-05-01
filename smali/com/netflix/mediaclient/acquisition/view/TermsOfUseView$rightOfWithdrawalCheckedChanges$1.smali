.class final Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView$rightOfWithdrawalCheckedChanges$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->rightOfWithdrawalCheckedChanges()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView$rightOfWithdrawalCheckedChanges$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Boolean;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView$rightOfWithdrawalCheckedChanges$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->access$updateErrorVisibility(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView$rightOfWithdrawalCheckedChanges$1;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
