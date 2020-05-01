.class public Landroidx/preference/SwitchPreference;
.super Landroidx/preference/TwoStatePreference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SwitchPreference$ActionBar;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/CharSequence;

.field private final e:Landroidx/preference/SwitchPreference$ActionBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 129
    sget v0, Lo/StackTraceElement$ActionBar;->n:I

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Lo/ViewParent;->e(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance v0, Landroidx/preference/SwitchPreference$ActionBar;

    invoke-direct {v0, p0}, Landroidx/preference/SwitchPreference$ActionBar;-><init>(Landroidx/preference/SwitchPreference;)V

    iput-object v0, p0, Landroidx/preference/SwitchPreference;->e:Landroidx/preference/SwitchPreference$ActionBar;

    .line 85
    sget-object v0, Lo/StackTraceElement$PendingIntent;->bw:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 88
    sget p2, Lo/StackTraceElement$PendingIntent;->bG:I

    sget p3, Lo/StackTraceElement$PendingIntent;->bx:I

    invoke-static {p1, p2, p3}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/SwitchPreference;->f(Ljava/lang/CharSequence;)V

    .line 91
    sget p2, Lo/StackTraceElement$PendingIntent;->bB:I

    sget p3, Lo/StackTraceElement$PendingIntent;->bz:I

    invoke-static {p1, p2, p3}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/SwitchPreference;->j(Ljava/lang/CharSequence;)V

    .line 94
    sget p2, Lo/StackTraceElement$PendingIntent;->bJ:I

    sget p3, Lo/StackTraceElement$PendingIntent;->bD:I

    invoke-static {p1, p2, p3}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/SwitchPreference;->b(Ljava/lang/CharSequence;)V

    .line 98
    sget p2, Lo/StackTraceElement$PendingIntent;->bF:I

    sget p3, Lo/StackTraceElement$PendingIntent;->bC:I

    invoke-static {p1, p2, p3}, Lo/ViewParent;->e(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/SwitchPreference;->d(Ljava/lang/CharSequence;)V

    .line 102
    sget p2, Lo/StackTraceElement$PendingIntent;->bE:I

    sget p3, Lo/StackTraceElement$PendingIntent;->bA:I

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Lo/ViewParent;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/SwitchPreference;->i(Z)V

    .line 106
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 220
    invoke-virtual {p0}, Landroidx/preference/SwitchPreference;->G()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 221
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x1020040

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 226
    invoke-direct {p0, v0}, Landroidx/preference/SwitchPreference;->d(Landroid/view/View;)V

    const v0, 0x1020010

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 229
    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->e(Landroid/view/View;)V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 3

    .line 233
    instance-of v0, p1, Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 234
    move-object v1, p1

    check-cast v1, Landroid/widget/Switch;

    const/4 v2, 0x0

    .line 235
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 237
    :cond_0
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 238
    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Landroidx/preference/SwitchPreference;->d:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 241
    check-cast p1, Landroid/widget/Switch;

    .line 242
    iget-object v0, p0, Landroidx/preference/SwitchPreference;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Landroidx/preference/SwitchPreference;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Landroidx/preference/SwitchPreference;->e:Landroidx/preference/SwitchPreference$ActionBar;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/CharSequence;)V
    .locals 0

    .line 158
    iput-object p1, p0, Landroidx/preference/SwitchPreference;->a:Ljava/lang/CharSequence;

    .line 159
    invoke-virtual {p0}, Landroidx/preference/SwitchPreference;->g()V

    return-void
.end method

.method protected c(Landroid/view/View;)V
    .locals 0

    .line 213
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->c(Landroid/view/View;)V

    .line 214
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreference;->a(Landroid/view/View;)V

    return-void
.end method

.method public c(Lo/String;)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->c(Lo/String;)V

    const v0, 0x1020040

    .line 146
    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object v0

    .line 147
    invoke-direct {p0, v0}, Landroidx/preference/SwitchPreference;->d(Landroid/view/View;)V

    .line 148
    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->d(Lo/String;)V

    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0

    .line 169
    iput-object p1, p0, Landroidx/preference/SwitchPreference;->b:Ljava/lang/CharSequence;

    .line 170
    invoke-virtual {p0}, Landroidx/preference/SwitchPreference;->g()V

    return-void
.end method
