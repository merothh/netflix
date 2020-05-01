.class public final Lo/Vk$FragmentManager;
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
.field final synthetic b:Landroid/view/animation/ScaleAnimation;

.field final synthetic c:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

.field final synthetic d:Lo/Vk;

.field final synthetic e:F


# direct methods
.method constructor <init>(Landroid/view/animation/ScaleAnimation;Lo/Vk;FLcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;)V
    .locals 0

    iput-object p1, p0, Lo/Vk$FragmentManager;->b:Landroid/view/animation/ScaleAnimation;

    iput-object p2, p0, Lo/Vk$FragmentManager;->d:Lo/Vk;

    iput p3, p0, Lo/Vk$FragmentManager;->e:F

    iput-object p4, p0, Lo/Vk$FragmentManager;->c:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    .line 938
    iget-object p1, p0, Lo/Vk$FragmentManager;->b:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 939
    iget-object v0, p0, Lo/Vk$FragmentManager;->d:Lo/Vk;

    .line 940
    invoke-virtual {v0}, Lo/Vk;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v1

    .line 941
    iget-object p1, p0, Lo/Vk$FragmentManager;->d:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->s()Lo/Xt;

    move-result-object v2

    .line 942
    iget-object p1, p0, Lo/Vk$FragmentManager;->d:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->j()I

    move-result v3

    .line 943
    iget-object p1, p0, Lo/Vk$FragmentManager;->d:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->t()Lcom/netflix/model/leafs/originals/interactive/BaseLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v4, p1

    check-cast v4, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    .line 944
    iget-object p1, p0, Lo/Vk$FragmentManager;->d:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->r()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v5

    .line 939
    invoke-static/range {v0 .. v5}, Lo/Vk;->c(Lo/Vk;Lcom/netflix/model/leafs/originals/interactive/Moment;Lo/Xt;ILcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    goto :goto_0

    .line 943
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.model.leafs.originals.interactive.CommonMetaData.Layout"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 929
    sget-object p1, Lo/Vk;->e:Lo/Vk$Application;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 933
    sget-object p1, Lo/Vk;->e:Lo/Vk$Application;

    check-cast p1, Lo/MessagePdu;

    .line 934
    iget-object p1, p0, Lo/Vk$FragmentManager;->d:Lo/Vk;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/Vk;->c(Z)V

    return-void
.end method
