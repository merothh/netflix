.class Lcom/netflix/mediaclient/ui/settings/AboutFragment$4;
.super Ljava/lang/Object;
.source "AboutFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/AboutFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/AboutFragment;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment$4;->this$0:Lcom/netflix/mediaclient/ui/settings/AboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/AboutFragment$4;->this$0:Lcom/netflix/mediaclient/ui/settings/AboutFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->access$000(Lcom/netflix/mediaclient/ui/settings/AboutFragment;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->customerService:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportUiModalViewChanged(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 85
    const/4 v0, 0x0

    return v0
.end method
