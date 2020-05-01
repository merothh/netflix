.class public final Lo/Xr$StateListAnimator;
.super Lo/PowerManagerInternal;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xr;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Xr;


# direct methods
.method constructor <init>(Lo/Xr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lo/Xr$StateListAnimator;->b:Lo/Xr;

    invoke-direct {p0}, Lo/PowerManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 181
    iget-object p1, p0, Lo/Xr$StateListAnimator;->b:Lo/Xr;

    invoke-virtual {p1}, Lo/Xr;->o()Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 182
    iget-object p1, p0, Lo/Xr$StateListAnimator;->b:Lo/Xr;

    invoke-virtual {p1}, Lo/Xr;->m()Lo/HorizontalScrollView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setAlpha(F)V

    return-void
.end method
