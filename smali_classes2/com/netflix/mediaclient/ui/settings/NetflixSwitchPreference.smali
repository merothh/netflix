.class public final Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference$Application;
    }
.end annotation


# instance fields
.field private final b:Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference$Application;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p1, Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference$Application;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference$Application;-><init>(Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference;->b:Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference$Application;

    return-void
.end method


# virtual methods
.method public c(Lo/String;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->c(Lo/String;)V

    .line 36
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lj:I

    invoke-virtual {p1, v0}, Lo/String;->c(I)Landroid/view/View;

    move-result-object p1

    .line 37
    instance-of v0, p1, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 39
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference;->d:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference;->b:Lcom/netflix/mediaclient/ui/settings/NetflixSwitchPreference$Application;

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method
