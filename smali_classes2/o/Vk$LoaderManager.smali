.class public final Lo/Vk$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vk;->e(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:F

.field final synthetic c:Lo/Vk;

.field final synthetic d:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

.field final synthetic e:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Landroid/widget/FrameLayout;Lo/Vk;FLcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;)V
    .locals 0

    iput-object p1, p0, Lo/Vk$LoaderManager;->e:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lo/Vk$LoaderManager;->c:Lo/Vk;

    iput p3, p0, Lo/Vk$LoaderManager;->b:F

    iput-object p4, p0, Lo/Vk$LoaderManager;->d:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 962
    iget-object p1, p0, Lo/Vk$LoaderManager;->c:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->u()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 964
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 966
    :cond_0
    iget-object p1, p0, Lo/Vk$LoaderManager;->c:Lo/Vk;

    invoke-static {p1}, Lo/Vk;->c(Lo/Vk;)Landroid/view/animation/ScaleAnimation;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 968
    iget-object v0, p0, Lo/Vk$LoaderManager;->c:Lo/Vk;

    invoke-static {v0}, Lo/Vk;->e(Lo/Vk;)Lo/MenuInflater;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Lo/MenuInflater;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
