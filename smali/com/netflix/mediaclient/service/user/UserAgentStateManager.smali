.class public Lcom/netflix/mediaclient/service/user/UserAgentStateManager;
.super Ljava/lang/Object;
.source "UserAgentStateManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_service_useragentstate"


# instance fields
.field private mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

.field private mEmail:Ljava/lang/String;

.field private mInitilizationCompleted:Z

.field private mNeedLogout:Z

.field private mPassword:Ljava/lang/String;

.field private final mPrimaryAccountIndex:I

.field private mProfileId:Ljava/lang/String;

.field private final mProfileMap:Lcom/netflix/mediaclient/service/user/UserProfileMap;

.field private final mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

.field private mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

.field private mToken:Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

.field private final mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/javabridge/ui/Registration;Lcom/netflix/mediaclient/service/configuration/drm/DrmManager;Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->INIT:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    .line 108
    iput v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mPrimaryAccountIndex:I

    .line 116
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    .line 117
    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    .line 118
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserProfileMap;

    invoke-direct {v0, p4}, Lcom/netflix/mediaclient/service/user/UserProfileMap;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileMap:Lcom/netflix/mediaclient/service/user/UserProfileMap;

    .line 119
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mInitilizationCompleted:Z

    .line 120
    return-void
.end method

.method private cleanupAfterDeactivation()V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->userAccountInactive()V

    .line 660
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->deactivateAll(Lcom/netflix/mediaclient/javabridge/ui/Callback;)V

    .line 662
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->userAccountDeactivated()V

    .line 663
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileMap:Lcom/netflix/mediaclient/service/user/UserProfileMap;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserProfileMap;->clear()V

    .line 664
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->INIT:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    .line 665
    return-void
.end method

.method private deviceAccountCreated(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 258
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@event deviceAccountCreated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    monitor-enter v1

    .line 260
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_CREATE_DEVACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "deviceAccountCreated"

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    monitor-exit v1

    .line 276
    :goto_0
    return-void

    .line 263
    :cond_0
    if-eqz p1, :cond_2

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->getDeviceAccounts()[Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    move-result-object v0

    .line 266
    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->getAccountWithKey([Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    if-eqz v0, :cond_1

    .line 268
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_SELECT_DEVACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    .line 275
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 270
    :cond_1
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_1

    .line 273
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private deviceAccountDeactivated(Z)V
    .locals 2

    .prologue
    .line 293
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@event deviceAccountDeactivated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    monitor-enter v1

    .line 295
    if-eqz p1, :cond_0

    .line 296
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_DEACTIVATE_ACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    .line 300
    :goto_0
    monitor-exit v1

    .line 301
    return-void

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->cleanupAfterDeactivation()V

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private deviceAccountSelected(Z)V
    .locals 3

    .prologue
    .line 278
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@event deviceAccountSelected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    monitor-enter v1

    .line 280
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_SELECT_DEVACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "deviceAccountSelected"

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    monitor-exit v1

    .line 291
    :goto_0
    return-void

    .line 284
    :cond_0
    if-eqz p1, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->hasDeviceAccount()V

    .line 290
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 288
    :cond_1
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private fallbackToPrimaryAccount()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 667
    const-string/jumbo v2, "nf_service_useragentstate"

    const-string/jumbo v3, "fallbackToPrimaryAccount state:%s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileMap:Lcom/netflix/mediaclient/service/user/UserProfileMap;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/user/UserProfileMap;->getPrimaryAccountKey()Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 685
    :cond_0
    :goto_0
    return v0

    .line 672
    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    invoke-interface {v3}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->getDeviceAccounts()[Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    move-result-object v3

    .line 673
    array-length v4, v3

    if-eqz v4, :cond_0

    .line 677
    invoke-direct {p0, v3, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->getAccountWithKey([Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    move-result-object v2

    .line 678
    if-eqz v2, :cond_0

    .line 682
    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileId:Ljava/lang/String;

    .line 684
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_SELECT_DEVACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    move v0, v1

    .line 685
    goto :goto_0
.end method

.method private getAccountWithKey([Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;
    .locals 4

    .prologue
    .line 637
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 638
    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->getAccountKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 642
    :goto_1
    return-object v0

    .line 637
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 642
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getNextAccountToDeactivate()Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->getDeviceAccounts()[Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    move-result-object v0

    .line 630
    array-length v1, v0

    if-nez v1, :cond_0

    .line 631
    const/4 v0, 0x0

    .line 633
    :goto_0
    return-object v0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private hasDeviceAccount()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mNeedLogout:Z

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileMap:Lcom/netflix/mediaclient/service/user/UserProfileMap;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserProfileMap;->clearEsnMigrationForCurrentAccount()V

    .line 174
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->isProfileIdValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->WAIT_ACTIVATE_ACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mToken:Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    if-eqz v0, :cond_2

    .line 177
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_ACTIVATE_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_0

    .line 178
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->fallbackToPrimaryAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileMap:Lcom/netflix/mediaclient/service/user/UserProfileMap;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserProfileMap;->isCurrentAccountNeedEsnMigration()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileMap:Lcom/netflix/mediaclient/service/user/UserProfileMap;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserProfileMap;->clearEsnMigrationForCurrentAccount()V

    .line 185
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->isProfileIdValid()Z

    move-result v0

    if-nez v0, :cond_4

    .line 186
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_ESN_MIGRATION:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_0

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mToken:Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    if-eqz v0, :cond_5

    .line 188
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_ACTIVATE_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_0

    .line 190
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_ESN_MIGRATION:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_0

    .line 192
    :cond_6
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mNeedLogout:Z

    if-eqz v0, :cond_7

    .line 193
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_DEACTIVATE_ACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    .line 194
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mNeedLogout:Z

    goto :goto_0

    .line 196
    :cond_7
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->isProfileIdValid()Z

    move-result v0

    if-nez v0, :cond_8

    .line 197
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_FETCH_PROFILE_DATA:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_0

    .line 202
    :cond_8
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_VALIDATE_PROFILE_DATA:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 129
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    monitor-enter v1

    .line 131
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileId:Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->getCurrentDeviceAccount()Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    const-string/jumbo v2, "nf_service_useragentstate"

    const-string/jumbo v3, "@init has currentDeviceAccount"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    .line 137
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->hasDeviceAccount()V

    .line 168
    :goto_0
    monitor-exit v1

    .line 169
    :goto_1
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->getDeviceAccounts()[Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    move-result-object v2

    .line 140
    array-length v0, v2

    if-nez v0, :cond_1

    .line 141
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v3, "@init ProfileMap is being cleared"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileMap:Lcom/netflix/mediaclient/service/user/UserProfileMap;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserProfileMap;->clear()V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileMap:Lcom/netflix/mediaclient/service/user/UserProfileMap;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserProfileMap;->getCurrentProfileIdAndKey()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileId:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileMap:Lcom/netflix/mediaclient/service/user/UserProfileMap;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserProfileMap;->getCurrentProfileIdAndKey()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    const-string/jumbo v3, "nf_service_useragentstate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "@init get from map ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] with key["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_2
    array-length v3, v2

    if-nez v3, :cond_4

    .line 151
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    const-string/jumbo v2, "nf_service_useragentstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@init no device account but has current account key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_CREATE_DEVACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    .line 155
    monitor-exit v1

    goto/16 :goto_1

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 156
    :cond_4
    :try_start_1
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 157
    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->getAccountWithKey([Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    .line 162
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    if-nez v0, :cond_6

    .line 163
    const/4 v0, 0x0

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    .line 165
    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_SELECT_DEVACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private isCurrentProfileValid(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 689
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v2, "isCurrentProfileValid but mProfileId is null"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 698
    :goto_0
    return v0

    .line 693
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 694
    iget-object v3, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 695
    goto :goto_0

    .line 698
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProfileIdValid()Z
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setNetflixIdToNrdpAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 498
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->setActivationTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v0

    .line 504
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "setNetflixIdToNrdpAccount failed will fallback thru primary account"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->fallbackToPrimaryAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_0

    .line 507
    :cond_1
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "setNetflixIdToNrdpAccount has null NetflixId, will fallback thru primary account"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private signalInitilizationCompleted()V
    .locals 2

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mInitilizationCompleted:Z

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->initialized(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 703
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mInitilizationCompleted:Z

    .line 705
    :cond_0
    return-void
.end method

.method private transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 516
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    .line 517
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$1;->$SwitchMap$com$netflix$mediaclient$service$user$UserAgentStateManager$STATES:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 623
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@state default"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 519
    :pswitch_0
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@state INIT"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->init()V

    goto :goto_0

    .line 523
    :pswitch_1
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@state NEED_ACTIVATE_PROFILE"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mToken:Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->tokenActivate(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;)V

    .line 528
    :cond_1
    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mToken:Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    goto :goto_0

    .line 531
    :pswitch_2
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@state NEED_CHANGE_PROFILE_FROM_PRIMARY"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->switchWebUserProfile(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :pswitch_3
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@state NEED_CHANGE_PROFILE"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->deactivate(Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;Lcom/netflix/mediaclient/javabridge/ui/Callback;)V

    .line 540
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->profileInactive()V

    .line 541
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->switchWebUserProfile(Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :pswitch_4
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@state NEED_CREATE_DEVACC"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->profileInactive()V

    .line 546
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->userAccountInactive()V

    .line 547
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->createDeviceAccount(Lcom/netflix/mediaclient/javabridge/ui/Callback;)V

    goto :goto_0

    .line 550
    :pswitch_5
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@state NEED_DEACTIVATE_ACC"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->getNextAccountToDeactivate()Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    move-result-object v0

    .line 552
    if-eqz v0, :cond_3

    .line 553
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    invoke-interface {v1, v0, p0}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->deactivate(Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;Lcom/netflix/mediaclient/javabridge/ui/Callback;)V

    goto/16 :goto_0

    .line 555
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->cleanupAfterDeactivation()V

    goto/16 :goto_0

    .line 559
    :pswitch_6
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@state NEED_EMAIL_ACTIVATE"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->emailActivate(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 565
    :pswitch_7
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@state NEED_ESN_MIGRATION"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->esnMigration()V

    goto/16 :goto_0

    .line 571
    :pswitch_8
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@state NEED_FETCH_PROFILE_DATA"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->userAccountActivated(Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;)V

    .line 576
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->fetchAccountData()V

    goto/16 :goto_0

    .line 579
    :pswitch_9
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@state NEED_SELECT_DEVACC"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileMap:Lcom/netflix/mediaclient/service/user/UserProfileMap;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->getAccountKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserProfileMap;->setCurrentAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    invoke-interface {v0, v1, p0}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->selectDeviceAccount(Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;Lcom/netflix/mediaclient/javabridge/ui/Callback;)V

    goto/16 :goto_0

    .line 584
    :pswitch_a
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@state NEED_TOKEN_ACTIVATE"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    if-eqz v0, :cond_4

    .line 587
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mToken:Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->tokenActivate(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;)V

    .line 589
    :cond_4
    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mToken:Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    goto/16 :goto_0

    .line 592
    :pswitch_b
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@state NEED_VALIDATE_PROFILE_DATA"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->userAccountActivated(Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;)V

    .line 596
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->fetchAccountData()V

    .line 597
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->shouldFetchAccountDataAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->PROFILE_ACTIVATED:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto/16 :goto_0

    .line 602
    :pswitch_c
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@state PROFILE_ACTIVATED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->profileActivated(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;)V

    .line 606
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->signalInitilizationCompleted()V

    goto/16 :goto_0

    .line 609
    :pswitch_d
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@state WAIT_ACTIVATE_ACC"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->signalInitilizationCompleted()V

    goto/16 :goto_0

    .line 613
    :pswitch_e
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@state WAIT_SELECT_PROFILE"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->signalInitilizationCompleted()V

    .line 616
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->readyToSelectProfile()V

    goto/16 :goto_0

    .line 619
    :pswitch_f
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@state FATAL_ERROR"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_DEACTIVATE_ACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto/16 :goto_0

    .line 517
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 648
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    if-ne v0, p1, :cond_1

    .line 649
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    const-string/jumbo v0, "nf_service_useragentstate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in expected state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    const/4 v0, 0x1

    .line 655
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method accountDataFetchFailed(Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 5

    .prologue
    .line 374
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@event profileDataFetchFailed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "res:%s, isAccountDataAvailable:%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    monitor-enter v1

    .line 380
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_FETCH_PROFILE_DATA:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "accountDataFetchFailed"

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 381
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->userAccountDataResult(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 386
    :goto_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 387
    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->USER_NOT_AUTHORIZED:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v2, :cond_4

    .line 390
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->isProfileIdValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->fallbackToPrimaryAccount()Z

    move-result v0

    if-nez v0, :cond_2

    .line 391
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    .line 409
    :cond_2
    :goto_1
    monitor-exit v1

    .line 410
    return-void

    .line 383
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->userAccountDataResult(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 394
    :cond_4
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_FETCH_PROFILE_DATA:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "accountDataFetchFailed"

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 395
    if-eqz p2, :cond_5

    .line 399
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->WAIT_SELECT_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_1

    .line 402
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_1

    .line 404
    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_VALIDATE_PROFILE_DATA:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "accountDataFetchFailed"

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->PROFILE_ACTIVATED:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method accountDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;)V
    .locals 3

    .prologue
    .line 357
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@event accountDataFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->userAccountDataResult(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 360
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_FETCH_PROFILE_DATA:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "accountDataFetched"

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->WAIT_SELECT_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    .line 371
    :cond_0
    :goto_0
    monitor-exit v1

    .line 372
    return-void

    .line 363
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_VALIDATE_PROFILE_DATA:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "accountDataFetched"

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->isCurrentProfileValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->PROFILE_ACTIVATED:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 367
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->fallbackToPrimaryAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method accountOrProfileActivated(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 305
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@event accountOrProfileActivated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    monitor-enter v1

    .line 308
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_TOKEN_ACTIVATE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "accountOrProfileActivated"

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_EMAIL_ACTIVATE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "accountOrProfileActivated"

    .line 309
    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_ACTIVATE_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "accountOrProfileActivated"

    .line 310
    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_ESN_MIGRATION:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "accountOrProfileActivated"

    .line 311
    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v2, "@event accountOrProfileActivated not expected, ignored"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    monitor-exit v1

    .line 353
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 318
    :goto_1
    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->setNetflixId(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->setSecureId(Ljava/lang/String;)V

    .line 321
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->setNetflixIdToNrdpAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_TOKEN_ACTIVATE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "accountOrProfileActivated"

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_EMAIL_ACTIVATE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "accountOrProfileActivated"

    .line 324
    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_FETCH_PROFILE_DATA:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    .line 352
    :cond_2
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 317
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 326
    :cond_4
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_ACTIVATE_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "accountOrProfileActivated"

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 327
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->PROFILE_ACTIVATED:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_2

    .line 328
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_ESN_MIGRATION:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "accountOrProfileActivated"

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->isProfileIdValid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 331
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->PROFILE_ACTIVATED:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_2

    .line 333
    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_FETCH_PROFILE_DATA:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_2

    .line 338
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    sget-object v2, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_ESN_MIGRATION:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    if-ne v0, v2, :cond_8

    if-nez p1, :cond_8

    .line 339
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v2, "ESN migration failed, log user out!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_2

    .line 341
    :cond_8
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->isProfileIdValid()Z

    move-result v0

    if-nez v0, :cond_9

    .line 342
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->WAIT_ACTIVATE_ACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_2

    .line 345
    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    new-instance v2, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->NRD_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->selectProfileResult(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 347
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->fallbackToPrimaryAccount()Z

    move-result v0

    if-nez v0, :cond_2

    .line 348
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public activateAccByEmailPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 208
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@event activateAccByEmailPassword"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    monitor-enter v1

    .line 210
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->WAIT_ACTIVATE_ACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "activateAccByEmailPassword"

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    monitor-exit v1

    .line 216
    :goto_0
    return v0

    .line 213
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mEmail:Ljava/lang/String;

    .line 214
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mPassword:Ljava/lang/String;

    .line 215
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_EMAIL_ACTIVATE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    .line 216
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public activateAccByToken(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;)Z
    .locals 3

    .prologue
    .line 220
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@event activateAccByToken"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    monitor-enter v1

    .line 222
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->WAIT_ACTIVATE_ACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "activateAccByToken"

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    monitor-exit v1

    .line 227
    :goto_0
    return v0

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mToken:Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    .line 226
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_TOKEN_ACTIVATE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    .line 227
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public done(Lcom/netflix/mediaclient/event/CallbackEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 714
    const-string/jumbo v0, "nf_service_useragentstate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "account related callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    instance-of v0, p1, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;

    if-eqz v0, :cond_1

    .line 717
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "Received CreateAccountComplete callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;

    invoke-interface {p1}, Lcom/netflix/mediaclient/event/CallbackEvent;->getData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;-><init>(Lorg/json/JSONObject;)V

    .line 720
    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;->isCreatedSuccess()Z

    move-result v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;->getKey()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->deviceAccountCreated(ZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v0

    .line 722
    const-string/jumbo v1, "nf_service_useragentstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CreateAccount error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string/jumbo v0, ""

    invoke-direct {p0, v4, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->deviceAccountCreated(ZLjava/lang/String;)V

    goto :goto_0

    .line 729
    :cond_1
    instance-of v0, p1, Lcom/netflix/mediaclient/javabridge/ui/android/registration/SelectedAccountCompleteCommand;

    if-eqz v0, :cond_2

    .line 730
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "Received SelectedAccount callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :try_start_1
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/android/registration/SelectedAccountCompleteCommand;

    invoke-interface {p1}, Lcom/netflix/mediaclient/event/CallbackEvent;->getData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/registration/SelectedAccountCompleteCommand;-><init>(Lorg/json/JSONObject;)V

    .line 733
    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/android/registration/SelectedAccountCompleteCommand;->isSelectedSuccess()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->deviceAccountSelected(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 734
    :catch_1
    move-exception v0

    .line 735
    const-string/jumbo v1, "nf_service_useragentstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SelectedAccount error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->deviceAccountSelected(Z)V

    goto :goto_0

    .line 742
    :cond_2
    instance-of v0, p1, Lcom/netflix/mediaclient/javabridge/ui/android/registration/DeactivateCompleteCommand;

    if-eqz v0, :cond_0

    .line 743
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "Received deactivate complete cmd"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->deviceAccountDeactivated(Z)V

    goto :goto_0
.end method

.method public initialize(ZZ)V
    .locals 1

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mNeedLogout:Z

    .line 123
    if-eqz p2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileMap:Lcom/netflix/mediaclient/service/user/UserProfileMap;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserProfileMap;->markAllAccountForEsnMigration()V

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->init()V

    .line 127
    return-void
.end method

.method onAccountErrors(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 3

    .prologue
    .line 412
    const-string/jumbo v0, "nf_service_useragentstate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAccountErrors statusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DELETED_PROFILE:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/StatusCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->fallbackToPrimaryAccount()Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/service/user/UserAgentBroadcastIntents;->signalProfileInvalid(Landroid/content/Context;)V

    goto :goto_0
.end method

.method profileSwitched(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserBoundCookies;)V
    .locals 4

    .prologue
    .line 425
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@event profileSwitched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    monitor-enter v1

    .line 428
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserBoundCookies;->getUserBoundNetflixId()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserBoundCookies;->getUserBoundSecureNetflixId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mToken:Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->selectProfileResult(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 440
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileMap:Lcom/netflix/mediaclient/service/user/UserProfileMap;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/user/UserProfileMap;->getAcccountKeyFromProfileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mRegistration:Lcom/netflix/mediaclient/javabridge/ui/Registration;

    invoke-interface {v2}, Lcom/netflix/mediaclient/javabridge/ui/Registration;->getDeviceAccounts()[Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    move-result-object v2

    .line 443
    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->getAccountWithKey([Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    if-eqz v0, :cond_2

    .line 447
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_SELECT_DEVACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    .line 451
    :goto_0
    monitor-exit v1

    .line 452
    :goto_1
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 431
    const-string/jumbo v0, "nf_service_useragentstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profileSwitched failed with userBoundCookies "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->INTERNAL_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->selectProfileResult(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 433
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->fallbackToPrimaryAccount()Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    .line 436
    :cond_1
    monitor-exit v1

    goto :goto_1

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 449
    :cond_2
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_CREATE_DEVACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method profileSwitchedFailed(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 454
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    monitor-enter v1

    .line 455
    :try_start_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 456
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    const-string/jumbo v2, "nf_service_useragentstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "profileSwitchFailed, status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;

    invoke-interface {v2, p1}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$StateManagerCallback;->selectProfileResult(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 460
    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->USER_NOT_AUTHORIZED:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v2, :cond_2

    .line 463
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->fallbackToPrimaryAccount()Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    .line 483
    :cond_1
    :goto_0
    monitor-exit v1

    .line 484
    return-void

    .line 467
    :cond_2
    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v2, :cond_3

    .line 468
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->WAIT_SELECT_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 471
    :cond_3
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_CHANGE_PROFILE_FROM_PRIMARY:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "profileSwitchedFailed"

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 473
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->fallbackToPrimaryAccount()Z

    move-result v0

    if-nez v0, :cond_1

    .line 474
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    goto :goto_0

    .line 478
    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->fallbackToPrimaryAccount()Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->FATAL_ERROR:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public selectNewProfile(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 232
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@event selectNewProfile"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    monitor-enter v1

    .line 234
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->WAIT_SELECT_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "selectNewProfile"

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->PROFILE_ACTIVATED:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    const-string/jumbo v2, "selectNewProfile"

    .line 235
    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->validateState(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    monitor-exit v1

    .line 248
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->isProfileIdValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    .line 240
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileId:Ljava/lang/String;

    .line 241
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_CHANGE_PROFILE:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    .line 247
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 243
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    .line 244
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mProfileId:Ljava/lang/String;

    .line 245
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_CHANGE_PROFILE_FROM_PRIMARY:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public signoutAcc()V
    .locals 2

    .prologue
    .line 251
    const-string/jumbo v0, "nf_service_useragentstate"

    const-string/jumbo v1, "@event signoutAcc"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    monitor-enter v1

    .line 253
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;->NEED_DEACTIVATE_ACC:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->transitionTo(Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;)V

    .line 254
    monitor-exit v1

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateAccountTokens(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;
    .locals 2

    .prologue
    .line 487
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mState:Lcom/netflix/mediaclient/service/user/UserAgentStateManager$STATES;

    monitor-enter v1

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->setNetflixId(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->setSecureId(Ljava/lang/String;)V

    .line 491
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->setNetflixIdToNrdpAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentStateManager;->mCurrentDeviceAcc:Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    return-object v0

    .line 493
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
