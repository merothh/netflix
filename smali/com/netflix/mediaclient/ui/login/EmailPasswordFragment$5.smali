.class Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$5;
.super Ljava/lang/Object;
.source "EmailPasswordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$5;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$5;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    const v1, 0x7f0801ab

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    new-instance v1, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$5;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    const v3, 0x7f0801c0

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v0, v2, v4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$5;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$5;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->access$300(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$5;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 292
    return-void
.end method
