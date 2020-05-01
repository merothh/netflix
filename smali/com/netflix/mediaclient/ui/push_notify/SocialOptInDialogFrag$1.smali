.class Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$1;
.super Ljava/lang/Object;
.source "SocialOptInDialogFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 84
    const-string/jumbo v0, "social"

    const-string/jumbo v1, "User opted out!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->access$000(Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->access$000(Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string/jumbo v0, "social"

    const-string/jumbo v2, "Already clicked!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    monitor-exit v1

    .line 100
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->access$000(Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->dismiss()V

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->handler:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->onDecline()V

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->optInButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->optInDialog:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->handler:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    .line 99
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v3

    const-string/jumbo v4, "skip"

    .line 98
    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
