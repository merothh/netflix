.class public final Lo/Vc$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vc;->e(Lo/Xt;Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;Lcom/netflix/model/leafs/originals/interactive/Moment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lo/Vc;

.field final synthetic c:Lcom/netflix/model/leafs/originals/interactive/Moment;

.field final synthetic d:Lo/Xt;


# direct methods
.method constructor <init>(Lo/Vc;Lo/Xt;Lcom/netflix/model/leafs/originals/interactive/Moment;J)V
    .locals 0

    iput-object p1, p0, Lo/Vc$Activity;->b:Lo/Vc;

    iput-object p2, p0, Lo/Vc$Activity;->d:Lo/Xt;

    iput-object p3, p0, Lo/Vc$Activity;->c:Lcom/netflix/model/leafs/originals/interactive/Moment;

    iput-wide p4, p0, Lo/Vc$Activity;->a:J

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 209
    iget-object p1, p0, Lo/Vc$Activity;->b:Lo/Vc;

    invoke-virtual {p1}, Lo/Vc;->a()Lo/GridView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lo/GridView;->setVisibility(I)V

    .line 210
    iget-object p1, p0, Lo/Vc$Activity;->b:Lo/Vc;

    invoke-virtual {p1}, Lo/Vc;->m()Z

    move-result p1

    if-nez p1, :cond_0

    .line 211
    iget-object p1, p0, Lo/Vc$Activity;->b:Lo/Vc;

    iget-object v0, p0, Lo/Vc$Activity;->d:Lo/Xt;

    iget-object v1, p0, Lo/Vc$Activity;->c:Lcom/netflix/model/leafs/originals/interactive/Moment;

    invoke-static {p1, v0, v1}, Lo/Vc;->e(Lo/Vc;Lo/Xt;Lcom/netflix/model/leafs/originals/interactive/Moment;)V

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
