.class public final Lcom/netflix/mediaclient/util/log/SignInLogUtils;
.super Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;
.source "SignInLogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;-><init>()V

    return-void
.end method

.method public static credentialRequestResultToError(I)Lcom/netflix/mediaclient/service/logging/client/model/Error;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setFatal(Z)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setErrorCode(Ljava/lang/String;)V

    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;-><init>()V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setDebug(Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->serverFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v1, v3, v0}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "code"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setMessage(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static credentialRequestResultToError(Lcom/google/android/gms/common/api/Status;)Lcom/netflix/mediaclient/service/logging/client/model/Error;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setFatal(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setErrorCode(Ljava/lang/String;)V

    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;-><init>()V

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setDebug(Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->serverFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v0, v3, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "message"

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "code"

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setMessage(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static reportCredentialRetrievalSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 4

    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_RETRIEVAL_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "credSavedService"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v0, "reason"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p3, :cond_3

    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportCredentialRetrievalSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V
    .locals 3

    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_RETRIEVAL_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string/jumbo v1, "credSavedService"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportCredentialStoreSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 4

    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_SAVE_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "credSavedService"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v0, "reason"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p3, :cond_3

    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportCredentialStoreSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;)V
    .locals 3

    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_CREDENTIAL_SAVE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string/jumbo v1, "credSavedService"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialService;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 4

    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "type"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v0, "reason"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p3, :cond_3

    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportSignInRequestSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V
    .locals 3

    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_SIGNIN_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string/jumbo v1, "type"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method
