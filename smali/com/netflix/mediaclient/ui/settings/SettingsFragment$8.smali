.class Lcom/netflix/mediaclient/ui/settings/SettingsFragment$8;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$8;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 438
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 439
    check-cast p2, Ljava/lang/String;

    .line 440
    const-string/jumbo v0, "DEFAULT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Sets ENHANCED XML subtitle configuration (default)"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$8;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$200(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->clearQaLocalOverride(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    .line 443
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$8;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->DEFAULT:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$400(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;)V

    .line 459
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 444
    :cond_0
    const-string/jumbo v0, "ENHANCED_XML"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Sets ENHANCED XML subtitle configuration (default)"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$8;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$200(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->ENHANCED_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->getLookupType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->updateQaLocalOverride(Landroid/content/Context;Ljava/lang/Integer;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    .line 447
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$8;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->ENHANCED_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$400(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;)V

    goto :goto_0

    .line 448
    :cond_1
    const-string/jumbo v0, "SIMPLE_XML"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Sets SIMPLE XML subtitle configuration"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$8;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$200(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->SIMPLE_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->getLookupType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->updateQaLocalOverride(Landroid/content/Context;Ljava/lang/Integer;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    .line 451
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$8;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->SIMPLE_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$400(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;)V

    goto :goto_0

    .line 453
    :cond_2
    const-string/jumbo v0, "SettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received unexpected value for player type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :cond_3
    const-string/jumbo v0, "SettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received unexpected NON string value for player type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
