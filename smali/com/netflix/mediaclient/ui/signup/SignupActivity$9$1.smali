.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$9$1;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$9$1;->this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$9$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$9$1;->this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$9$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$2200(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
