.class final Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$FragmentManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$FragmentManager;->c:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 271
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$FragmentManager;->c:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->F()Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;->onrampSignOut()V

    return-void
.end method
