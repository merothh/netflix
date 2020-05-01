.class final Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$TaskStackBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->Q()V
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

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$TaskStackBuilder;->c:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$TaskStackBuilder;->c:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->F()Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$StateListAnimator;->onrampFinished()V

    return-void
.end method
