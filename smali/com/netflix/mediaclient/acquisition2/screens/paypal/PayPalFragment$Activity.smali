.class final Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment$Activity;->e:Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment$Activity;->e:Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->n()Lo/FrameMetricsObserver;

    move-result-object p1

    invoke-virtual {p1}, Lo/FrameMetricsObserver;->i()V

    return-void
.end method
