.class final Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$addSignInMenuOption$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->addSignInMenuOption(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$addSignInMenuOption$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    const-string p1, "nf_signup_native"

    const-string v0, "User tapped sign-in button"

    .line 736
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    new-instance p1, Lcom/netflix/cl/model/event/session/command/SignInCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/SignInCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 738
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$addSignInMenuOption$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/JG;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
