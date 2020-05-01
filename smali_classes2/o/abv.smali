.class public final Lo/abv;
.super Lcom/netflix/mediaclient/ui/settings/SettingsFragment;
.source ""


# instance fields
.field private e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/Am;)V
    .locals 3

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pref.downloads.smart"

    .line 13
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/abv;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0}, Lo/abv;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    sget-object v1, Lo/aaT;->b:Lo/aaT$StateListAnimator;

    const-string v2, "it"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lo/aaT$StateListAnimator;->e(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->d(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 9
    sget v0, Lcom/netflix/mediaclient/ui/R$VoiceInteractor;->c:I

    invoke-virtual {p0, v0}, Lo/abv;->a(I)V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lo/abv;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->onDestroyView()V

    invoke-virtual {p0}, Lo/abv;->m()V

    return-void
.end method
