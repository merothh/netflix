.class public final Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$LoaderManager;->d:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$LoaderManager;->d:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->p()Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 120
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$LoaderManager;->d:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->a(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V

    return-void
.end method
