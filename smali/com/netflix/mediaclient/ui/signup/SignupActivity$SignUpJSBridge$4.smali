.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$4;
.super Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;
.source "SignupActivity.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$4;->this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResult(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$4;->this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$4;->getCallback()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->access$1800(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
