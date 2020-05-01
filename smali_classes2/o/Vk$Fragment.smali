.class public final Lo/Vk$Fragment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vk;->d(FLcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lo/Vk;

.field final synthetic c:Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;

.field final synthetic d:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

.field final synthetic e:F


# direct methods
.method constructor <init>(Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;Lo/Vk;Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;FLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/Vk$Fragment;->c:Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;

    iput-object p2, p0, Lo/Vk$Fragment;->b:Lo/Vk;

    iput-object p3, p0, Lo/Vk$Fragment;->d:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    iput p4, p0, Lo/Vk$Fragment;->e:F

    iput-object p5, p0, Lo/Vk$Fragment;->a:Ljava/lang/String;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 346
    iget-object p1, p0, Lo/Vk$Fragment;->b:Lo/Vk;

    iget-object v0, p0, Lo/Vk$Fragment;->c:Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;

    iget v1, p0, Lo/Vk$Fragment;->e:F

    invoke-static {p1, v0, v1}, Lo/Vk;->a(Lo/Vk;Lcom/netflix/model/leafs/originals/interactive/animations/ChoicePointAnimations;F)Landroid/view/animation/AnimationSet;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 347
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 348
    iget-object v0, p0, Lo/Vk$Fragment;->b:Lo/Vk;

    invoke-static {v0}, Lo/Vk;->d(Lo/Vk;)Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast p1, Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 349
    sget-object p1, Lo/akj;->a:Lo/akj;

    :cond_0
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
