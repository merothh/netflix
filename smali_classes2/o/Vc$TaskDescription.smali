.class public final Lo/Vc$TaskDescription;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vc;->e(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Vc;


# direct methods
.method constructor <init>(Lo/Vc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lo/Vc$TaskDescription;->e:Lo/Vc;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 359
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 360
    iget-object p1, p0, Lo/Vc$TaskDescription;->e:Lo/Vc;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/Vc;->c(Z)V

    .line 361
    iget-object p1, p0, Lo/Vc$TaskDescription;->e:Lo/Vc;

    invoke-virtual {p1}, Lo/Vc;->u()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
