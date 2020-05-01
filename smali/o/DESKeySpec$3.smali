.class Lo/DESKeySpec$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DESKeySpec;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/DESKeySpec;


# direct methods
.method constructor <init>(Lo/DESKeySpec;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lo/DESKeySpec$3;->a:Lo/DESKeySpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 120
    iget-object p1, p0, Lo/DESKeySpec$3;->a:Lo/DESKeySpec;

    invoke-static {p1}, Lo/DESKeySpec;->c(Lo/DESKeySpec;)Lo/ColorRes;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lo/DESKeySpec$3;->a:Lo/DESKeySpec;

    invoke-static {p1}, Lo/DESKeySpec;->c(Lo/DESKeySpec;)Lo/ColorRes;

    move-result-object p1

    iget-object v0, p0, Lo/DESKeySpec$3;->a:Lo/DESKeySpec;

    invoke-static {v0}, Lo/DESKeySpec;->a(Lo/DESKeySpec;)Lo/ActivityGroup;

    move-result-object v0

    invoke-virtual {v0}, Lo/ActivityGroup;->c()F

    move-result v0

    invoke-virtual {p1, v0}, Lo/ColorRes;->e(F)V

    :cond_0
    return-void
.end method
