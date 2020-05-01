.class Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$4;
.super Ljava/lang/Object;
.source "CoppolaLoadingDecorator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$4;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator$4;->this$0:Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;->access$800(Lcom/netflix/mediaclient/ui/player/CoppolaLoadingDecorator;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;ZI)Landroid/view/ViewPropertyAnimator;

    .line 298
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 294
    return-void
.end method
