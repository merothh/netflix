.class Landroidx/preference/CheckBoxPreference$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/CheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic a:Landroidx/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Landroidx/preference/CheckBoxPreference;)V
    .locals 0

    .line 46
    iput-object p1, p0, Landroidx/preference/CheckBoxPreference$StateListAnimator;->a:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 51
    iget-object v0, p0, Landroidx/preference/CheckBoxPreference$StateListAnimator;->a:Landroidx/preference/CheckBoxPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/CheckBoxPreference;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    xor-int/lit8 p2, p2, 0x1

    .line 54
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    .line 57
    :cond_0
    iget-object p1, p0, Landroidx/preference/CheckBoxPreference$StateListAnimator;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/CheckBoxPreference;->e(Z)V

    return-void
.end method