.class public final Lo/Xl$ActionBar;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xl;->c(ZZFZLo/alB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Xl;

.field private c:Z

.field final synthetic d:Z

.field final synthetic e:Lo/alB;


# direct methods
.method constructor <init>(Lo/Xl;ZLo/alB;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lo/alB;",
            ")V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lo/Xl$ActionBar;->a:Lo/Xl;

    iput-boolean p2, p0, Lo/Xl$ActionBar;->d:Z

    iput-object p3, p0, Lo/Xl$ActionBar;->e:Lo/alB;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lo/Xl$ActionBar;->c:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-boolean p1, p0, Lo/Xl$ActionBar;->c:Z

    if-nez p1, :cond_1

    .line 204
    iget-object p1, p0, Lo/Xl$ActionBar;->a:Lo/Xl;

    invoke-virtual {p1}, Lo/Xl;->d()Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lo/Xl$ActionBar;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :cond_1
    iget-object p1, p0, Lo/Xl$ActionBar;->e:Lo/alB;

    invoke-interface {p1}, Lo/alB;->invoke()Ljava/lang/Object;

    return-void
.end method
