.class public final Lo/Vk$PendingIntent;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vk;->e(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Vk;

.field final synthetic b:F

.field final synthetic c:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic d:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lo/Vk;FLcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;)V
    .locals 0

    iput-object p1, p0, Lo/Vk$PendingIntent;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lo/Vk$PendingIntent;->a:Lo/Vk;

    iput p3, p0, Lo/Vk$PendingIntent;->b:F

    iput-object p4, p0, Lo/Vk$PendingIntent;->d:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    .line 889
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 892
    iget-object p1, p0, Lo/Vk$PendingIntent;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 901
    iget-object p1, p0, Lo/Vk$PendingIntent;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->d:Z

    if-nez p1, :cond_1

    .line 902
    iget-object v0, p0, Lo/Vk$PendingIntent;->a:Lo/Vk;

    .line 903
    invoke-virtual {v0}, Lo/Vk;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v1

    .line 904
    iget-object p1, p0, Lo/Vk$PendingIntent;->a:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->s()Lo/Xt;

    move-result-object v2

    .line 905
    iget-object p1, p0, Lo/Vk$PendingIntent;->a:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->j()I

    move-result v3

    .line 906
    iget-object p1, p0, Lo/Vk$PendingIntent;->a:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->t()Lcom/netflix/model/leafs/originals/interactive/BaseLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v4, p1

    check-cast v4, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    .line 907
    iget-object p1, p0, Lo/Vk$PendingIntent;->a:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->r()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object v5

    .line 902
    invoke-static/range {v0 .. v5}, Lo/Vk;->c(Lo/Vk;Lcom/netflix/model/leafs/originals/interactive/Moment;Lo/Xt;ILcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V

    goto :goto_0

    .line 906
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.model.leafs.originals.interactive.CommonMetaData.Layout"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 896
    sget-object p1, Lo/Vk;->e:Lo/Vk$Application;

    check-cast p1, Lo/MessagePdu;

    .line 897
    iget-object p1, p0, Lo/Vk$PendingIntent;->a:Lo/Vk;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/Vk;->c(Z)V

    return-void
.end method
