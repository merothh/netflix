.class public interface abstract Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;
.super Ljava/lang/Object;
.source "UserAgentStateManager.java"


# virtual methods
.method public abstract fetchAccountData()V
.end method

.method public abstract initialized(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract profileActivated(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;)V
.end method

.method public abstract profileInactive()V
.end method

.method public abstract readyToSelectProfile()V
.end method

.method public abstract selectProfileResult(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract shouldFetchAccountDataAsync()Z
.end method

.method public abstract switchWebUserProfile(Ljava/lang/String;)V
.end method

.method public abstract userAccountActivated(Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;)V
.end method

.method public abstract userAccountDataResult(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract userAccountDeactivated()V
.end method

.method public abstract userAccountInactive()V
.end method
