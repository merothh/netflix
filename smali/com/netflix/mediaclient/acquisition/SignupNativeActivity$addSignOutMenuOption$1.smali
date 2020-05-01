.class final Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$addSignOutMenuOption$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->addSignOutMenuOption(Landroid/view/Menu;)V
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

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$addSignOutMenuOption$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    const-string p1, "nf_signup_native"

    const-string v0, "User tapped sign-out button"

    .line 751
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity$addSignOutMenuOption$1;->this$0:Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->access$signOut(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    const/4 p1, 0x1

    return p1
.end method
