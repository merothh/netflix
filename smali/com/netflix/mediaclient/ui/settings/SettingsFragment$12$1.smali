.class Lcom/netflix/mediaclient/ui/settings/SettingsFragment$12$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$12;

.field final synthetic val$newAppId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment$12;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$12$1;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$12;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$12$1;->val$newAppId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$12$1;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$12;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$12;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$200(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$12$1;->val$newAppId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->setNewCastApplicationId(Landroid/content/Context;Ljava/lang/String;)V

    .line 787
    return-void
.end method
