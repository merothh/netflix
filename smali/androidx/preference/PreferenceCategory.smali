.class public Landroidx/preference/PreferenceCategory;
.super Landroidx/preference/PreferenceGroup;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 51
    sget v0, Lo/StackTraceElement$ActionBar;->c:I

    const v1, 0x101008c

    invoke-static {p1, v0, v1}, Lo/ViewParent;->e(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public C()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lo/LineNumberInputStream;)V
    .locals 7

    .line 79
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->c(Lo/LineNumberInputStream;)V

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    .line 81
    invoke-virtual {p1}, Lo/LineNumberInputStream;->v()Lo/LineNumberInputStream$Application;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {v0}, Lo/LineNumberInputStream$Application;->d()I

    move-result v1

    .line 88
    invoke-virtual {v0}, Lo/LineNumberInputStream$Application;->c()I

    move-result v2

    .line 89
    invoke-virtual {v0}, Lo/LineNumberInputStream$Application;->b()I

    move-result v3

    .line 90
    invoke-virtual {v0}, Lo/LineNumberInputStream$Application;->a()I

    move-result v4

    const/4 v5, 0x1

    .line 92
    invoke-virtual {v0}, Lo/LineNumberInputStream$Application;->e()Z

    move-result v6

    .line 86
    invoke-static/range {v1 .. v6}, Lo/LineNumberInputStream$Application;->b(IIIIZZ)Lo/LineNumberInputStream$Application;

    move-result-object v0

    .line 93
    invoke-virtual {p1, v0}, Lo/LineNumberInputStream;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public c(Lo/String;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->c(Lo/String;)V

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 73
    iget-object p1, p1, Lo/String;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityHeading(Z)V

    :cond_0
    return-void
.end method

.method public o()Z
    .locals 1

    .line 66
    invoke-super {p0}, Landroidx/preference/PreferenceGroup;->C()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
