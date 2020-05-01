.class public final Lo/Vm$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vm;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Vm;

.field final synthetic e:Landroid/view/animation/ScaleAnimation;


# direct methods
.method constructor <init>(Landroid/view/animation/ScaleAnimation;Lo/Vm;)V
    .locals 0

    iput-object p1, p0, Lo/Vm$TaskDescription;->e:Landroid/view/animation/ScaleAnimation;

    iput-object p2, p0, Lo/Vm$TaskDescription;->c:Lo/Vm;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lo/Vm$TaskDescription;->e:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lo/Vm$TaskDescription;->c:Lo/Vm;

    invoke-static {p1}, Lo/Vm;->c(Lo/Vm;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 62
    sget-object p1, Lo/Vf;->h:Lo/Vf$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 63
    iget-object p1, p0, Lo/Vm$TaskDescription;->c:Lo/Vm;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/Vm;->b(Lo/Vm;Z)V

    return-void
.end method
