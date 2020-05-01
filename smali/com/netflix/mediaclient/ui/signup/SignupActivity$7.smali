.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$7;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V
    .locals 0

    .prologue
    .line 901
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$7;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$7;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->invalidateOptionsMenu()V

    .line 905
    return-void
.end method
