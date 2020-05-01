.class Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;
.super Ljava/lang/Object;
.source "PlayBilling.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

.field final synthetic val$listener:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iput-object p2, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->val$listener:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mDisposed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "playBilling"

    const-string/jumbo v1, "Billing service connected."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mService:Lcom/android/vending/billing/IInAppBillingService;

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iget-object v0, v0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "playBilling"

    const-string/jumbo v2, "Checking for play billing 3 support."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iget-object v1, v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string/jumbo v3, "inapp"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSubscriptionsSupported:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSubscriptionUpdateSupported:Z

    const-string/jumbo v0, "playBilling"

    const-string/jumbo v1, "Error checking for billing v3 support."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->val$listener:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->val$listener:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;->onSetupFinished(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "playBilling"

    const-string/jumbo v2, "Exception while setting up in-app billing."

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->val$listener:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->val$listener:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;

    invoke-interface {v0, v5}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;->onSetupFinished(Z)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v1, "playBilling"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "play billing version 3 supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iget-object v1, v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x5

    const-string/jumbo v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "playBilling"

    const-string/jumbo v2, "Subscription re-signup AVAILABLE."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSubscriptionUpdateSupported:Z

    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSubscriptionUpdateSupported:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSubscriptionsSupported:Z

    :goto_2
    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iget-object v1, v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x6

    const-string/jumbo v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "playBilling"

    const-string/jumbo v1, "api 6 not supported. Check if PlayStore version > 6.2"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSubscriptionsSupported:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSubscriptionUpdateSupported:Z

    :goto_3
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSetupDone:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v0, "playBilling"

    const-string/jumbo v1, "Setup successful"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->val$listener:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->val$listener:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;

    invoke-interface {v0, v6}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;->onSetupFinished(Z)V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    const-string/jumbo v1, "playBilling"

    const-string/jumbo v2, "Subscription re-signup not available."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSubscriptionUpdateSupported:Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    iget-object v1, v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string/jumbo v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "playBilling"

    const-string/jumbo v2, "Subscriptions AVAILABLE."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSubscriptionsSupported:Z

    goto :goto_2

    :cond_5
    const-string/jumbo v2, "playBilling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSubscriptionsSupported:Z

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mSubscriptionUpdateSupported:Z

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v0, "playBilling"

    const-string/jumbo v1, "api 6 supported... "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "playBilling"

    const-string/jumbo v1, "Billing service disconnected."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$3;->this$0:Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-void
.end method
