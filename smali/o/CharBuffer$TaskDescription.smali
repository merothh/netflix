.class Lo/CharBuffer$TaskDescription;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CharBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field private final b:Landroid/view/View;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lo/CharBuffer$TaskDescription;->d:Z

    .line 184
    iput-object p1, p0, Lo/CharBuffer$TaskDescription;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 198
    iget-object p1, p0, Lo/CharBuffer$TaskDescription;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lo/DSAParams;->a(Landroid/view/View;F)V

    .line 199
    iget-boolean p1, p0, Lo/CharBuffer$TaskDescription;->d:Z

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lo/CharBuffer$TaskDescription;->b:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 189
    iget-object p1, p0, Lo/CharBuffer$TaskDescription;->b:Landroid/view/View;

    invoke-static {p1}, Lo/FilterWriter;->q(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/CharBuffer$TaskDescription;->b:Landroid/view/View;

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 191
    iput-boolean p1, p0, Lo/CharBuffer$TaskDescription;->d:Z

    .line 192
    iget-object p1, p0, Lo/CharBuffer$TaskDescription;->b:Landroid/view/View;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
