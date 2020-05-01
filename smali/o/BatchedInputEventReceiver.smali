.class public final Lo/BatchedInputEventReceiver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajW;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajW<",
        "Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public static c(Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;Lo/FallbackEventHandler;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->viewModelInitializer:Lo/FallbackEventHandler;

    return-void
.end method

.method public static c(Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;Lo/TextClassificationConstants;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->paymentPresentationListener:Lo/TextClassificationConstants;

    return-void
.end method

.method public static d(Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;",
            "Ljava/util/ArrayList<",
            "Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;",
            ">;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->paymentNavigationListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static d(Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;Lo/VoiceInteractionManagerInternal;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->adapterFactory:Lo/VoiceInteractionManagerInternal;

    return-void
.end method
