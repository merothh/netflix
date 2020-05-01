.class final Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->e()V
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

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$StateListAnimator;->c:Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    instance-of v0, p1, Lcom/google/android/gms/common/api/ApiException;

    const-string v1, "Error: "

    const-string v2, "GiftCardPaymentFragment"

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$StateListAnimator;->c:Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->k()Lo/TextClassificationManager;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "RecaptchaException"

    invoke-virtual {v0, v1, p1}, Lo/TextClassificationManager;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
