.class public final Lcom/netflix/mediaclient/service/pushnotification/MessageData;
.super Ljava/lang/Object;
.source "MessageData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_push"


# instance fields
.field private mGuid:Ljava/lang/String;

.field private mMessageGuid:Ljava/lang/String;

.field private mOriginator:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->mGuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->mMessageGuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->mOriginator:Ljava/lang/String;

    return-void
.end method

.method public static addMessageDataToIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V
    .locals 3

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Intent or msg is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "nf_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add msg data to intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "nf_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add GUID to intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v0, "guid"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getMessageGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "messageGuid"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getMessageGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getOriginator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "originator"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getOriginator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public static createInstance(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pushnotification/MessageData;
    .locals 5

    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "MessageData::"

    invoke-static {v0, v1, p0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    const-string/jumbo v0, "guid"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "Guid not found, source is not (proper) push notification"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "messageGuid"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "nf_push"

    const-string/jumbo v3, "Message guid not found, source is not (proper) push notification"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v2, "originator"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "nf_push"

    const-string/jumbo v4, "Received notification WITHOUT ORIGINATOR! Pass default!"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v3, Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    invoke-direct {v3, v0, v1, v2}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->mGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->mMessageGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->mOriginator:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MessageData [mGuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->mGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMessageGuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->mMessageGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mOriginator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->mOriginator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
