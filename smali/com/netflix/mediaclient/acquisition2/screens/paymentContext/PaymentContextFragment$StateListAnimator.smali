.class final Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$StateListAnimator;->d:Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$StateListAnimator;->d:Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->s()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 126
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;

    .line 102
    invoke-interface {v0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;->onSkipAlternatePaymentMethod()V

    goto :goto_0

    :cond_0
    return-void
.end method
