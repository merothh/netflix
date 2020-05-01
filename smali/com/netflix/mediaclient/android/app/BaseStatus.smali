.class public abstract Lcom/netflix/mediaclient/android/app/BaseStatus;
.super Ljava/lang/Object;
.source "BaseStatus.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/app/Status;


# instance fields
.field public mStatusCode:Lcom/netflix/mediaclient/StatusCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getRequestId()I
.end method

.method public getStatusCode()Lcom/netflix/mediaclient/StatusCode;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->isError()Z

    move-result v0

    return v0
.end method

.method public isErrorOrWarning()Z
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/BaseStatus;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/app/BaseStatus;->isWarning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSucces()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->isSucess()Z

    move-result v0

    return v0
.end method

.method public isWarning()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/BaseStatus;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->isWarning()Z

    move-result v0

    return v0
.end method

.method public abstract shouldDisplayMessage()Z
.end method
