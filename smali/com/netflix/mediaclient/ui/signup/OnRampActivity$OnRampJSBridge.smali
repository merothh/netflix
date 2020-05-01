.class public Lcom/netflix/mediaclient/ui/signup/OnRampActivity$OnRampJSBridge;
.super Ljava/lang/Object;
.source "OnRampActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/signup/OnRampActivity;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$OnRampJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyReady()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 257
    return-void
.end method

.method public onLoaded()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$OnRampJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->access$002(Lcom/netflix/mediaclient/ui/signup/OnRampActivity;Z)Z

    .line 252
    return-void
.end method

.method public onRampCompleted(I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 235
    const-string/jumbo v0, "OnRampActivity"

    const-string/jumbo v1, "onRampCompleted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-lez p1, :cond_0

    .line 237
    invoke-static {}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->access$200()Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;->access$302(Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;Z)Z

    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$OnRampJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.REFRESH_HOME_LOLOMO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$OnRampJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;->finish()V

    .line 241
    return-void
.end method

.method public onRampInitiated()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 230
    return-void
.end method

.method public passNonMemberInfo(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 247
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 267
    return-void
.end method

.method public showSignIn()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 272
    return-void
.end method

.method public showSignOut()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 278
    return-void
.end method

.method public supportsSignUp(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 262
    return-void
.end method
