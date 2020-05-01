.class public final Lo/Yo$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yo;-><init>(Landroid/view/View;Lo/Ab;Lo/UpdateLock;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Yo;


# direct methods
.method constructor <init>(Lo/Yo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lo/Yo$3;->c:Lo/Yo;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lo/Yo$3;->c:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->c(Lo/Yo;)Lo/YF;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lo/YF;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lo/Yo$3;->c:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->e(Lo/Yo;)Lo/XY;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/XY;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lo/Yo$3;->c:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->c(Lo/Yo;)Lo/YF;

    move-result-object p1

    invoke-virtual {p1}, Lo/YF;->l()V

    return-void
.end method
