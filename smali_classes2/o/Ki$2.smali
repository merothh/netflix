.class Lo/Ki$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ki;->d(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFFFII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/graphics/drawable/Drawable;

.field final synthetic c:I

.field final synthetic d:Lo/Ki;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lo/Ki;Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    .line 197
    iput-object p1, p0, Lo/Ki$2;->d:Lo/Ki;

    iput-object p2, p0, Lo/Ki$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lo/Ki$2;->b:Landroid/graphics/drawable/Drawable;

    iput p4, p0, Lo/Ki$2;->e:I

    iput p5, p0, Lo/Ki$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 211
    iget-object p1, p0, Lo/Ki$2;->b:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lo/Ki$2;->e:I

    iget v1, p0, Lo/Ki$2;->c:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 212
    iget-object p1, p0, Lo/Ki$2;->b:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 205
    iget-object p1, p0, Lo/Ki$2;->b:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lo/Ki$2;->e:I

    iget v1, p0, Lo/Ki$2;->c:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 206
    iget-object p1, p0, Lo/Ki$2;->b:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 200
    iget-object p1, p0, Lo/Ki$2;->a:Landroid/content/Context;

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.BILLBOARD_ANIMATION_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    return-void
.end method
