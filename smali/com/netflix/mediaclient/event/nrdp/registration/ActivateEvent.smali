.class public Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;
.super Lcom/netflix/mediaclient/event/nrdp/registration/BaseRegistrationEvent;
.source "ActivateEvent.java"


# static fields
.field private static final ACTION_ID:Ljava/lang/String; = "ACTION_ID"

.field private static final COMPLETE:Ljava/lang/String; = "COMPLETE"

.field public static final NAME:Ljava/lang/String; = "activateComplete"

.field private static final NETWORK_ERROR:Ljava/lang/String; = "NETWORK_ERROR"

.field public static final TYPE:Ljava/lang/String; = "activate"


# instance fields
.field private actionID:I

.field private actionId:Z

.field private bcp47:Ljava/lang/String;

.field private code:I

.field private cookies:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private networkError:Z

.field private ok:Z

.field private origin:Ljava/lang/String;

.field private reasonCode:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string/jumbo v0, "activate"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/registration/BaseRegistrationEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public failed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->ok:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActionID()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->actionID:I

    return v0
.end method

.method public getBcp47()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->bcp47:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->code:I

    return v0
.end method

.method public getCookies()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->cookies:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonCode()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->reasonCode:I

    return v0
.end method

.method public isActionId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->actionId:Z

    return v0
.end method

.method public isNetworkError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->networkError:Z

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string/jumbo v0, "result"

    invoke-static {p1, v0, v5}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_event"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device activated as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->cookies:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "nf_event"

    const-string/jumbo v1, "Activation was success"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->ok:Z

    iput-boolean v4, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->actionId:Z

    iput-boolean v4, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->networkError:Z

    const-string/jumbo v0, "cookies"

    invoke-static {p1, v0, v5}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->cookies:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "nf_event"

    const-string/jumbo v2, "Activation failed"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->ok:Z

    const-string/jumbo v1, "actionID"

    invoke-static {p1, v1, v4}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->actionID:I

    const-string/jumbo v1, "reasonCode"

    invoke-static {p1, v1, v4}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->reasonCode:I

    const-string/jumbo v1, "code"

    invoke-static {p1, v1, v4}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->code:I

    const-string/jumbo v1, "message"

    invoke-static {p1, v1, v5}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->message:Ljava/lang/String;

    const-string/jumbo v1, "bcp47"

    invoke-static {p1, v1, v5}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->bcp47:Ljava/lang/String;

    const-string/jumbo v1, "origin"

    invoke-static {p1, v1, v5}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->origin:Ljava/lang/String;

    const-string/jumbo v1, "ACTION_ID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v6, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->actionId:Z

    iput-boolean v4, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->networkError:Z

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "NETWORK_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->actionId:Z

    iput-boolean v6, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->networkError:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ActivateEvent{cookies=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->cookies:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", actionID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->actionID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bcp47=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->bcp47:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", reasonCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->reasonCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", origin=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->origin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", networkError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->networkError:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->actionId:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ok="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;->ok:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
