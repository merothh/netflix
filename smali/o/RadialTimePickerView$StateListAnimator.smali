.class Lo/RadialTimePickerView$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field private a:Lo/adW$Application;

.field final synthetic b:Lo/RadialTimePickerView;

.field private final e:Lo/RadialTimePickerView$ActionBar;


# direct methods
.method public constructor <init>(Lo/RadialTimePickerView;Lo/RadialTimePickerView$ActionBar;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lo/RadialTimePickerView$StateListAnimator;->b:Lo/RadialTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p2, p0, Lo/RadialTimePickerView$StateListAnimator;->e:Lo/RadialTimePickerView$ActionBar;

    return-void
.end method

.method private b()Lo/adW$Application;
    .locals 3

    .line 229
    iget-object v0, p0, Lo/RadialTimePickerView$StateListAnimator;->b:Lo/RadialTimePickerView;

    invoke-virtual {v0}, Lo/RadialTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lo/RadialTimePickerView$StateListAnimator;->b:Lo/RadialTimePickerView;

    invoke-virtual {v1}, Lo/RadialTimePickerView;->getMax()I

    move-result v1

    mul-int v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lo/RadialTimePickerView$StateListAnimator;->b:Lo/RadialTimePickerView;

    invoke-virtual {v1}, Lo/RadialTimePickerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 230
    iget-object v1, p0, Lo/RadialTimePickerView$StateListAnimator;->b:Lo/RadialTimePickerView;

    invoke-virtual {v1}, Lo/RadialTimePickerView;->getProgress()I

    move-result v1

    sub-int v2, v1, v0

    add-int/2addr v1, v0

    .line 234
    new-instance v0, Lo/adW$Application;

    invoke-direct {v0, v2, v1}, Lo/adW$Application;-><init>(II)V

    return-object v0
.end method

.method static synthetic c(Lo/RadialTimePickerView$StateListAnimator;I)Z
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lo/RadialTimePickerView$StateListAnimator;->e(I)Z

    move-result p0

    return p0
.end method

.method private e(I)Z
    .locals 1

    .line 266
    iget-object v0, p0, Lo/RadialTimePickerView$StateListAnimator;->a:Lo/adW$Application;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/adW$Application;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged, progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SnappableSeekBar"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 253
    invoke-direct {p0, p2}, Lo/RadialTimePickerView$StateListAnimator;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object p2, p0, Lo/RadialTimePickerView$StateListAnimator;->a:Lo/adW$Application;

    invoke-virtual {p2}, Lo/adW$Application;->d()I

    move-result p2

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-static {p2, v0, v1}, Lo/adW;->e(III)I

    move-result p2

    .line 256
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 262
    :cond_0
    iget-object v0, p0, Lo/RadialTimePickerView$StateListAnimator;->e:Lo/RadialTimePickerView$ActionBar;

    invoke-interface {v0, p1, p2, p3}, Lo/RadialTimePickerView$ActionBar;->e(Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string v0, "SnappableSeekBar"

    const-string v1, "onStartTrackingTouch"

    .line 221
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lo/RadialTimePickerView$StateListAnimator;->e:Lo/RadialTimePickerView$ActionBar;

    invoke-interface {v0, p1}, Lo/RadialTimePickerView$ActionBar;->c(Landroid/widget/SeekBar;)V

    .line 224
    iget-object p1, p0, Lo/RadialTimePickerView$StateListAnimator;->b:Lo/RadialTimePickerView;

    invoke-static {p1}, Lo/RadialTimePickerView;->d(Lo/RadialTimePickerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lo/RadialTimePickerView$StateListAnimator;->b()Lo/adW$Application;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lo/RadialTimePickerView$StateListAnimator;->a:Lo/adW$Application;

    .line 225
    iget-object p1, p0, Lo/RadialTimePickerView$StateListAnimator;->b:Lo/RadialTimePickerView;

    invoke-static {p1}, Lo/RadialTimePickerView;->b(Lo/RadialTimePickerView;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const-string v0, "SnappableSeekBar"

    const-string v1, "onStopTrackingTouch"

    .line 243
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lo/RadialTimePickerView$StateListAnimator;->e:Lo/RadialTimePickerView$ActionBar;

    iget-object v1, p0, Lo/RadialTimePickerView$StateListAnimator;->a:Lo/adW$Application;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lo/RadialTimePickerView$StateListAnimator;->b:Lo/RadialTimePickerView;

    invoke-virtual {v2}, Lo/RadialTimePickerView;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/adW$Application;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, v1}, Lo/RadialTimePickerView$ActionBar;->a(Landroid/widget/SeekBar;Z)V

    const/4 p1, 0x0

    .line 245
    iput-object p1, p0, Lo/RadialTimePickerView$StateListAnimator;->a:Lo/adW$Application;

    .line 246
    iget-object p1, p0, Lo/RadialTimePickerView$StateListAnimator;->b:Lo/RadialTimePickerView;

    invoke-static {p1}, Lo/RadialTimePickerView;->c(Lo/RadialTimePickerView;)V

    return-void
.end method
