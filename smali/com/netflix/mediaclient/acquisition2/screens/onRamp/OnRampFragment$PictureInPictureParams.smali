.class final Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$PictureInPictureParams;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/widget/NestedScrollView$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$PictureInPictureParams;->e:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$PictureInPictureParams;->e:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->q()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-gt p3, p1, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$PictureInPictureParams;->e:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->e(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$PictureInPictureParams;->e:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->c(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$PictureInPictureParams;->e:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->q()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-le p3, p1, :cond_1

    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$PictureInPictureParams;->e:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->e(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 190
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$PictureInPictureParams;->e:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->b(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V

    :cond_1
    :goto_0
    return-void
.end method
