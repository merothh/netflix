.class public final Lo/ResultReceiver$Activity;
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
.field final synthetic b:Lo/ResultReceiver;


# direct methods
.method constructor <init>(Lo/ResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lo/ResultReceiver$Activity;->b:Lo/ResultReceiver;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lo/ResultReceiver$Activity;->b:Lo/ResultReceiver;

    invoke-virtual {p1}, Lo/ResultReceiver;->e()Lo/ResultReceiver$TaskDescription;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/ResultReceiver$Activity;->b:Lo/ResultReceiver;

    invoke-interface {p1, v0}, Lo/ResultReceiver$TaskDescription;->c(Lo/ResultReceiver;)V

    :cond_0
    return-void
.end method
