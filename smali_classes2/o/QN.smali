.class public final Lo/QN;
.super Lo/DatePickerSpinnerDelegate;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/QN;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/QN;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lo/DatePickerSpinnerDelegate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 15
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/QN;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final e(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lo/QN;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setButton(Ljava/lang/CharSequence;)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/QN;->setButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setIcon(I)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lo/QN;->setIconDrawable(I)V

    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p1}, Lo/QN;->setMessageText(Ljava/lang/CharSequence;)V

    return-void
.end method
