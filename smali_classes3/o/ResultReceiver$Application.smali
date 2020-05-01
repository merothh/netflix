.class public final Lo/ResultReceiver$Application;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ResultReceiver;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/ResultReceiver;


# direct methods
.method constructor <init>(Lo/ResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lo/ResultReceiver$Application;->d:Lo/ResultReceiver;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lo/ResultReceiver$Application;->d:Lo/ResultReceiver;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/ResultReceiver;->setActivityBackgroundColor(I)V

    .line 124
    iget-object p1, p0, Lo/ResultReceiver$Application;->d:Lo/ResultReceiver;

    invoke-virtual {p1}, Lo/ResultReceiver;->e()Lo/ResultReceiver$TaskDescription;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/ResultReceiver$Application;->d:Lo/ResultReceiver;

    invoke-interface {p1, v0}, Lo/ResultReceiver$TaskDescription;->a(Lo/ResultReceiver;)V

    :cond_0
    return-void
.end method
