.class final Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment$Activity;->b:Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment$Activity;->b:Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/smsPaymentContext/SMSPaymentContextFragment;->e()Lo/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Lo/AccessibilityManager;->e()V

    return-void
.end method
