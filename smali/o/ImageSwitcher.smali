.class public Lo/ImageSwitcher;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ImageSwitcher$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lo/ImageSwitcher$ActionBar;

.field private static final c:Z = false


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ImageSwitcher$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ImageSwitcher$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/ImageSwitcher;->a:Lo/ImageSwitcher$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/ImageSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/ImageSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0}, Lo/ImageSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lo/IHwInterface$Dialog;->e:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lo/ImageSwitcher;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 19
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    sget p3, Lo/IHwInterface$ActionBar;->s:I

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/ImageSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final e()V
    .locals 4

    .line 55
    invoke-virtual {p0}, Lo/ImageSwitcher;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 56
    invoke-virtual {p0}, Lo/ImageSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lo/ImageSwitcher;->getLineSpacingMultiplier()F

    move-result v1

    const v2, 0x3f8ccccd    # 1.1f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lo/ImageSwitcher;->getLineSpacingExtra()F

    move-result v1

    mul-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    int-to-float v0, v0

    .line 64
    invoke-virtual {p0, v0, v2}, Lo/ImageSwitcher;->setLineSpacing(FF)V

    .line 66
    sget-boolean v0, Lo/ImageSwitcher;->c:Z

    if-eqz v0, :cond_1

    const v0, -0xff0001

    .line 67
    invoke-virtual {p0, v0}, Lo/ImageSwitcher;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lo/ImageSwitcher;->e()V

    .line 51
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 35
    invoke-static {p1}, Lo/afw;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 43
    iget v0, p0, Lo/ImageSwitcher;->e:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method
