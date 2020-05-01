.class Lo/LV$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RadialTimePickerView$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lo/LV;


# direct methods
.method constructor <init>(Lo/LV;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lo/LV$6;->b:Lo/LV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/SeekBar;Z)V
    .locals 2

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopTrackingTouch, isInSnapRegion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdxMiniPlayerViews"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v0, p0, Lo/LV$6;->b:Lo/LV;

    invoke-static {v0}, Lo/LV;->a(Lo/LV;)Lo/LW;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/LW;->a(Landroid/widget/SeekBar;Z)V

    const-wide/16 v0, 0x0

    .line 889
    iput-wide v0, p0, Lo/LV$6;->a:J

    if-eqz p2, :cond_0

    .line 891
    iget-object v0, p0, Lo/LV$6;->b:Lo/LV;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {v0, p1}, Lo/LV;->a(Lo/LV;I)V

    goto :goto_0

    .line 895
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lo/LV$6;->e(Landroid/widget/SeekBar;IZ)V

    .line 898
    :goto_0
    iget-object p1, p0, Lo/LV$6;->b:Lo/LV;

    invoke-static {p1}, Lo/LV;->h(Lo/LV;)V

    .line 899
    iget-object p1, p0, Lo/LV$6;->b:Lo/LV;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/LV;->e(Z)V

    if-nez p2, :cond_1

    .line 902
    iget-object p1, p0, Lo/LV$6;->b:Lo/LV;

    invoke-virtual {p1, v0}, Lo/LV;->d(Z)V

    :cond_1
    return-void
.end method

.method public c(Landroid/widget/SeekBar;)V
    .locals 4

    const-string v0, "MdxMiniPlayerViews"

    const-string v1, "onStartTrackingTouch"

    .line 867
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object v0, p0, Lo/LV$6;->b:Lo/LV;

    invoke-static {v0}, Lo/LV;->a(Lo/LV;)Lo/LW;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/LW;->c(Landroid/widget/SeekBar;)V

    .line 870
    iget-object p1, p0, Lo/LV$6;->b:Lo/LV;

    invoke-static {p1}, Lo/LV;->b(Lo/LV;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 871
    iget-object p1, p0, Lo/LV$6;->b:Lo/LV;

    invoke-static {p1}, Lo/LV;->b(Lo/LV;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 874
    :cond_0
    iget-object p1, p0, Lo/LV$6;->b:Lo/LV;

    invoke-static {p1}, Lo/LV;->i(Lo/LV;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 875
    iget-object p1, p0, Lo/LV$6;->b:Lo/LV;

    new-array v2, v1, [Landroid/view/View;

    invoke-static {p1}, Lo/LV;->i(Lo/LV;)Landroid/widget/ImageView;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1, v2}, Lo/LV;->e([Landroid/view/View;)V

    .line 878
    :cond_1
    iget-object p1, p0, Lo/LV$6;->b:Lo/LV;

    invoke-static {p1}, Lo/LV;->j(Lo/LV;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 879
    iget-object p1, p0, Lo/LV$6;->b:Lo/LV;

    new-array v2, v1, [Landroid/view/View;

    invoke-static {p1}, Lo/LV;->j(Lo/LV;)Landroid/widget/TextView;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1, v2}, Lo/LV;->e([Landroid/view/View;)V

    .line 881
    :cond_2
    iget-object p1, p0, Lo/LV$6;->b:Lo/LV;

    invoke-virtual {p1, v1}, Lo/LV;->e(Z)V

    return-void
.end method

.method public e(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 908
    iget-object v0, p0, Lo/LV$6;->b:Lo/LV;

    invoke-static {v0}, Lo/LV;->a(Lo/LV;)Lo/LW;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lo/LW;->e(Landroid/widget/SeekBar;IZ)V

    if-nez p3, :cond_0

    return-void

    .line 914
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/LV$6;->a:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lo/aeC;->e(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    return-void

    .line 919
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/LV$6;->a:J

    .line 922
    iget-object p1, p0, Lo/LV$6;->b:Lo/LV;

    invoke-static {p1}, Lo/LV;->i(Lo/LV;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/LV$6;->b:Lo/LV;

    invoke-static {p1}, Lo/LV;->a(Lo/LV;)Lo/LW;

    move-result-object p1

    invoke-interface {p1}, Lo/LW;->c()Lo/Am;

    move-result-object p1

    invoke-static {p1}, Lo/acE;->b(Lo/Am;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 923
    iget-object p1, p0, Lo/LV$6;->b:Lo/LV;

    invoke-static {p1}, Lo/LV;->a(Lo/LV;)Lo/LW;

    move-result-object p1

    invoke-interface {p1}, Lo/LW;->d()Lo/zN;

    move-result-object p1

    mul-int/lit16 p3, p2, 0x3e8

    invoke-interface {p1, p3}, Lo/zN;->e(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object p3, p0, Lo/LV$6;->b:Lo/LV;

    invoke-static {p3}, Lo/LV;->i(Lo/LV;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-static {p1, p3}, Lo/pK$StateListAnimator;->e(Ljava/nio/ByteBuffer;Landroid/widget/ImageView;)V

    .line 926
    :cond_2
    iget-object p1, p0, Lo/LV$6;->b:Lo/LV;

    invoke-static {p1, p2}, Lo/LV;->a(Lo/LV;I)V

    return-void
.end method
