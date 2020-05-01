.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$5;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$5;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 385
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$5;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->reload(Z)V

    .line 386
    return v1
.end method
