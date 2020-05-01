.class public final Lo/CursorFilter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CursorFilter$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/CursorFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lo/CursorFilter;

    invoke-direct {v0}, Lo/CursorFilter;-><init>()V

    sput-object v0, Lo/CursorFilter;->b:Lo/CursorFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public final a(Lo/CursorFilter$StateListAnimator;Ljava/lang/Float;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 2

    const-string v0, "spec"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 53
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v0}, Lo/CursorFilter;->c(I)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1}, Lo/CursorFilter$StateListAnimator;->e()I

    move-result p3

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    sub-int/2addr p3, p4

    int-to-float p3, p3

    .line 59
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    div-float/2addr p3, p2

    int-to-float p2, p5

    add-float/2addr p3, p2

    float-to-int p2, p3

    .line 60
    invoke-virtual {p1}, Lo/CursorFilter$StateListAnimator;->b()I

    move-result p3

    invoke-static {p2, p3}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 61
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lo/CursorFilter$StateListAnimator;->d(I)V

    goto :goto_0

    .line 62
    :cond_1
    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0, p3}, Lo/CursorFilter;->c(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 63
    invoke-virtual {p1}, Lo/CursorFilter$StateListAnimator;->b()I

    move-result p3

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    sub-int/2addr p3, p5

    int-to-float p3, p3

    .line 65
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float p3, p3, p2

    int-to-float p2, p4

    add-float/2addr p3, p2

    float-to-int p2, p3

    .line 66
    invoke-virtual {p1}, Lo/CursorFilter$StateListAnimator;->e()I

    move-result p3

    invoke-static {p2, p3}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 67
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lo/CursorFilter$StateListAnimator;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method
