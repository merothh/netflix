.class final Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$TaskDescription;->c:Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$TaskDescription;->c:Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->n()Lo/MutableChar;

    move-result-object p1

    invoke-virtual {p1}, Lo/MutableChar;->e()V

    return-void
.end method
