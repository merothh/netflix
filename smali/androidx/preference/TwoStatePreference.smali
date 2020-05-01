.class public abstract Landroidx/preference/TwoStatePreference;
.super Landroidx/preference/Preference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/TwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Z

.field private c:Z

.field protected d:Z

.field private e:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/TwoStatePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    check-cast p1, Landroidx/preference/TwoStatePreference$SavedState;

    .line 262
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->b(Landroid/os/Parcelable;)V

    .line 263
    iget-boolean p1, p1, Landroidx/preference/TwoStatePreference$SavedState;->b:Z

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->e(Z)V

    return-void

    .line 257
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->b(Landroid/os/Parcelable;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->d:Z

    return v0
.end method

.method protected c(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 191
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 193
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->d(Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->e(Z)V

    return-void
.end method

.method protected d(Lo/String;)V
    .locals 1

    const v0, 0x1020010

    .line 202
    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object p1

    .line 203
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->e(Landroid/view/View;)V

    return-void
.end method

.method protected e(Landroid/view/View;)V
    .locals 4

    .line 211
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 216
    iget-boolean v1, p0, Landroidx/preference/TwoStatePreference;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/preference/TwoStatePreference;->a:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    iget-object v0, p0, Landroidx/preference/TwoStatePreference;->a:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 219
    :cond_1
    iget-boolean v1, p0, Landroidx/preference/TwoStatePreference;->d:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/preference/TwoStatePreference;->e:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 220
    iget-object v0, p0, Landroidx/preference/TwoStatePreference;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 224
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->n()Ljava/lang/CharSequence;

    move-result-object v1

    .line 225
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 226
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :cond_3
    const/16 v1, 0x8

    if-nez v0, :cond_4

    const/4 v1, 0x0

    .line 235
    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_5

    .line 236
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public e(Z)V
    .locals 3

    .line 79
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->d:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 80
    iget-boolean v2, p0, Landroidx/preference/TwoStatePreference;->c:Z

    if-nez v2, :cond_2

    .line 81
    :cond_1
    iput-boolean p1, p0, Landroidx/preference/TwoStatePreference;->d:Z

    .line 82
    iput-boolean v1, p0, Landroidx/preference/TwoStatePreference;->c:Z

    .line 83
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->b(Z)Z

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->o()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->a(Z)V

    .line 86
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->g()V

    :cond_2
    return-void
.end method

.method protected f()V
    .locals 2

    .line 64
    invoke-super {p0}, Landroidx/preference/Preference;->f()V

    .line 66
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->e(Z)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/CharSequence;)V
    .locals 0

    .line 112
    iput-object p1, p0, Landroidx/preference/TwoStatePreference;->a:Ljava/lang/CharSequence;

    .line 113
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->g()V

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Landroidx/preference/TwoStatePreference;->b:Z

    return-void
.end method

.method public j(Ljava/lang/CharSequence;)V
    .locals 0

    .line 140
    iput-object p1, p0, Landroidx/preference/TwoStatePreference;->e:Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->b()Z

    move-result p1

    if-nez p1, :cond_0

    .line 142
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->g()V

    :cond_0
    return-void
.end method

.method protected l()Landroid/os/Parcelable;
    .locals 2

    .line 242
    invoke-super {p0}, Landroidx/preference/Preference;->l()Landroid/os/Parcelable;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 248
    :cond_0
    new-instance v1, Landroidx/preference/TwoStatePreference$SavedState;

    invoke-direct {v1, v0}, Landroidx/preference/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 249
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->b()Z

    move-result v0

    iput-boolean v0, v1, Landroidx/preference/TwoStatePreference$SavedState;->b:Z

    return-object v1
.end method

.method public o()Z
    .locals 3

    .line 102
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->d:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 103
    invoke-super {p0}, Landroidx/preference/Preference;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method
