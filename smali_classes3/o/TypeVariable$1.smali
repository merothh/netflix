.class Lo/TypeVariable$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/TypeVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/TypeVariable;


# direct methods
.method constructor <init>(Lo/TypeVariable;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lo/TypeVariable$1;->c:Lo/TypeVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 189
    iget-object p1, p0, Lo/TypeVariable$1;->c:Lo/TypeVariable;

    iget-boolean p1, p1, Lo/TypeVariable;->b:Z

    if-eqz p1, :cond_1

    .line 191
    iget-object p1, p0, Lo/TypeVariable$1;->c:Lo/TypeVariable;

    iget-object p1, p1, Lo/TypeVariable;->l:Lo/URL;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lo/URL;->setAlpha(I)V

    .line 192
    iget-object p1, p0, Lo/TypeVariable$1;->c:Lo/TypeVariable;

    iget-object p1, p1, Lo/TypeVariable;->l:Lo/URL;

    invoke-virtual {p1}, Lo/URL;->start()V

    .line 193
    iget-object p1, p0, Lo/TypeVariable$1;->c:Lo/TypeVariable;

    iget-boolean p1, p1, Lo/TypeVariable;->o:Z

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lo/TypeVariable$1;->c:Lo/TypeVariable;

    iget-object p1, p1, Lo/TypeVariable;->c:Lo/TypeVariable$ActionBar;

    if-eqz p1, :cond_0

    .line 195
    iget-object p1, p0, Lo/TypeVariable$1;->c:Lo/TypeVariable;

    iget-object p1, p1, Lo/TypeVariable;->c:Lo/TypeVariable$ActionBar;

    invoke-interface {p1}, Lo/TypeVariable$ActionBar;->c()V

    .line 198
    :cond_0
    iget-object p1, p0, Lo/TypeVariable$1;->c:Lo/TypeVariable;

    iget-object v0, p1, Lo/TypeVariable;->e:Lo/URI;

    invoke-virtual {v0}, Lo/URI;->getTop()I

    move-result v0

    iput v0, p1, Lo/TypeVariable;->a:I

    goto :goto_0

    .line 200
    :cond_1
    iget-object p1, p0, Lo/TypeVariable$1;->c:Lo/TypeVariable;

    invoke-virtual {p1}, Lo/TypeVariable;->b()V

    :goto_0
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
