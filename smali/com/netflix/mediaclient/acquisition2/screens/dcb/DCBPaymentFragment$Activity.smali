.class final Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment$Activity;->d:Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment$Activity;->d:Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object p1

    invoke-virtual {p1}, Lo/FloatMath;->i()V

    return-void
.end method
