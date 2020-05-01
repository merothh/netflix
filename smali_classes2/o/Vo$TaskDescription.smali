.class public final Lo/Vo$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vo;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic e:Lo/Vo;


# direct methods
.method constructor <init>(Lo/Vo;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lo/Vo$TaskDescription;->e:Lo/Vo;

    iput-wide p2, p0, Lo/Vo$TaskDescription;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 50
    iget-object p1, p0, Lo/Vo$TaskDescription;->e:Lo/Vo;

    invoke-virtual {p1}, Lo/Vo;->i()Z

    move-result p1

    if-nez p1, :cond_0

    .line 51
    iget-object p1, p0, Lo/Vo$TaskDescription;->e:Lo/Vo;

    new-instance v0, Lo/Vo$TaskDescription$Activity;

    invoke-direct {v0, p0}, Lo/Vo$TaskDescription$Activity;-><init>(Lo/Vo$TaskDescription;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 53
    iget-wide v1, p0, Lo/Vo$TaskDescription;->d:J

    .line 51
    invoke-virtual {p1, v0, v1, v2}, Lo/Vo;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lo/Vo$TaskDescription;->e:Lo/Vo;

    const-string v0, "notificationAppear"

    invoke-virtual {p1, v0}, Lo/Vo;->b(Ljava/lang/String;)V

    return-void
.end method
