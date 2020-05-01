.class public final Lo/Filterable$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Filterable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Filterable;


# direct methods
.method public constructor <init>(Lo/Filterable;)V
    .locals 0

    iput-object p1, p0, Lo/Filterable$Application;->a:Lo/Filterable;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lo/Filterable$Application;->a:Lo/Filterable;

    invoke-static {p1}, Lo/Filterable;->c(Lo/Filterable;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/Filterable$Application;->a:Lo/Filterable;

    move-object v1, v0

    check-cast v1, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Lo/Filterable;->getProgress()I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v0, v2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 118
    :cond_0
    iget-object p1, p0, Lo/Filterable$Application;->a:Lo/Filterable;

    invoke-static {p1}, Lo/Filterable;->c(Lo/Filterable;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/Filterable$Application;->a:Lo/Filterable;

    check-cast v0, Landroid/widget/SeekBar;

    invoke-interface {p1, v0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
