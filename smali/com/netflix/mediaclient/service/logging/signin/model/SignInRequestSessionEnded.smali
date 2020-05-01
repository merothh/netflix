.class public Lcom/netflix/mediaclient/service/logging/signin/model/SignInRequestSessionEnded;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "SignInRequestSessionEnded.java"


# static fields
.field public static final CREDENTIAL_SAVED:Ljava/lang/String; = "credentialSaved"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final REASON:Ljava/lang/String; = "reason"

.field private static final SESSION_NAME:Ljava/lang/String; = "signInRequest"

.field public static final SIGN_IN_TYPE:Ljava/lang/String; = "signInType"


# instance fields
.field private mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

.field private mCredentialSavedState:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

.field private mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

.field private mSignInType:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;)V
    .locals 2

    const-string/jumbo v0, "signInRequest"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Completion reason is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SignIn type is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/signin/model/SignInRequestSessionEnded;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/signin/model/SignInRequestSessionEnded;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/signin/model/SignInRequestSessionEnded;->mSignInType:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/signin/model/SignInRequestSessionEnded;->mCredentialSavedState:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string/jumbo v1, "signInType"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/signin/model/SignInRequestSessionEnded;->mSignInType:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "reason"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/signin/model/SignInRequestSessionEnded;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/signin/model/SignInRequestSessionEnded;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "error"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/signin/model/SignInRequestSessionEnded;->mError:Lcom/netflix/mediaclient/service/logging/client/model/Error;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/signin/model/SignInRequestSessionEnded;->mCredentialSavedState:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "credentialSaved"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/signin/model/SignInRequestSessionEnded;->mCredentialSavedState:Lcom/netflix/mediaclient/servicemgr/SignInLogging$CredentialSaved;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-object v0
.end method
