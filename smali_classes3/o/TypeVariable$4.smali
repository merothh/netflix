.class Lo/TypeVariable$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TypeVariable;->c(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/TypeVariable;


# direct methods
.method constructor <init>(Lo/TypeVariable;)V
    .locals 0

    .line 976
    iput-object p1, p0, Lo/TypeVariable$4;->a:Lo/TypeVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 984
    iget-object p1, p0, Lo/TypeVariable$4;->a:Lo/TypeVariable;

    iget-boolean p1, p1, Lo/TypeVariable;->d:Z

    if-nez p1, :cond_0

    .line 985
    iget-object p1, p0, Lo/TypeVariable$4;->a:Lo/TypeVariable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/TypeVariable;->e(Landroid/view/animation/Animation$AnimationListener;)V

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
