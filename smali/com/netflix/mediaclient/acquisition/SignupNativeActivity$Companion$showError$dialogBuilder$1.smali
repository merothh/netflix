.class final Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion$showError$dialogBuilder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion;->showError(Landroid/app/Activity;Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $goToSignIn:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion$showError$dialogBuilder$1;->$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion$showError$dialogBuilder$1;->$goToSignIn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 174
    iget-object p2, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion$showError$dialogBuilder$1;->$activity:Landroid/app/Activity;

    .line 175
    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion$showError$dialogBuilder$1;->$goToSignIn:Z

    if-eqz v0, :cond_0

    .line 176
    move-object v0, p2

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/JG;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/NetflixApplication;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 174
    :goto_0
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    if-eqz p1, :cond_1

    .line 181
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$Companion$showError$dialogBuilder$1;->$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
