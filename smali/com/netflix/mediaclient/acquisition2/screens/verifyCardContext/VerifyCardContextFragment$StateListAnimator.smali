.class final Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$StateListAnimator;->d:Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$StateListAnimator;->d:Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->o()Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$Activity;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$Activity;->onVerifyContextConfirm()V

    return-void
.end method
