.class public Lcom/netflix/mediaclient/service/mdx/TargetManager;
.super Ljava/lang/Object;
.source "TargetManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/EventListener;
.implements Lcom/netflix/mediaclient/service/mdx/CommandInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_mdx"


# instance fields
.field private final mController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

.field private final mEsn:Ljava/lang/String;

.field private final mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

.field private final mRecentMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mTaregtLaunchingOrLaunched:Z

.field private mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;)V
    .locals 4

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mRecentMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTaregtLaunchingOrLaunched:Z

    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    .line 57
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    .line 58
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mEsn:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mRecentMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 60
    return-void
.end method

.method private logMementoErrors(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->inMementoTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    const-string/jumbo v0, "Memento_%d MDX error %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo p1, "NO ERROR CODE"

    :cond_0
    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->inMemento2Test(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const-string/jumbo v0, "Memento2_%d MDX error %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getMemento2(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo p1, "NO ERROR CODE"

    :cond_3
    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getTargetCapabilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->parseTargetCapabilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimeOfMostRecentIncomingMessage()J
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mRecentMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveSession()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->hasActiveSession()Z

    move-result v0

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentSessionEnded()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->isCurrentSessionEnded()Z

    move-result v0

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTargetHaveContext(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->isThisTargetUuid(Ljava/lang/String;)Z

    move-result v0

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTargetLaunchingOrLaunched(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTaregtLaunchingOrLaunched:Z

    return v0
.end method

.method public pinCancelled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PinCancelled;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PinCancelled;-><init>()V

    .line 389
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PinCancelled;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PinCancelled;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 391
    :cond_0
    return-void
.end method

.method public pinConfirmed(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PinConfirmed;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PinConfirmed;-><init>()V

    .line 382
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PinConfirmed;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PinConfirmed;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 384
    :cond_0
    return-void
.end method

.method public playerAutoAdvance(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 344
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetAutoAdvance;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->getTargetPlaybackSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetAutoAdvance;-><init>(Ljava/lang/String;I)V

    .line 345
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetAutoAdvance;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetAutoAdvance;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 347
    :cond_0
    return-void
.end method

.method public playerChangeMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerChangeMetaData;

    invoke-direct {v0, p2, p3, p4}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerChangeMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerChangeMetaData;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerChangeMetaData;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 370
    :cond_0
    return-void
.end method

.method public playerDialogReponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 359
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/DialogResponse;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/service/mdx/message/controller/DialogResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/DialogResponse;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/DialogResponse;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 362
    :cond_0
    return-void
.end method

.method public playerGetAudioSubtitle(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 374
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/GetAudioSubtitles;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/GetAudioSubtitles;-><init>()V

    .line 375
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/GetAudioSubtitles;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/GetAudioSubtitles;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 377
    :cond_0
    return-void
.end method

.method public playerGetCapability(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerGetCapabilities;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerGetCapabilities;-><init>()V

    .line 285
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerGetCapabilities;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerGetCapabilities;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 287
    :cond_0
    return-void
.end method

.method public playerGetCurrentState(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerGetCurrentState;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerGetCurrentState;-><init>()V

    .line 292
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerGetCurrentState;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerGetCurrentState;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 293
    :cond_0
    return-void
.end method

.method public playerPause(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPause;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->getTargetPlaybackSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPause;-><init>(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPause;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPause;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 312
    :cond_0
    return-void
.end method

.method public playerPlay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6

    .prologue
    .line 303
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mEsn:Ljava/lang/String;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p2

    move v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerPlay;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 306
    :cond_0
    return-void
.end method

.method public playerResume(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerResume;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->getTargetPlaybackSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerResume;-><init>(Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerResume;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerResume;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 319
    :cond_0
    return-void
.end method

.method public playerSeek(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetCurrentTime;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->getTargetPlaybackSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetCurrentTime;-><init>(Ljava/lang/String;I)V

    .line 338
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetCurrentTime;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetCurrentTime;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 340
    :cond_0
    return-void
.end method

.method public playerSetAudioSubtitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/SetAudioSubtitles;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/service/mdx/message/controller/SetAudioSubtitles;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/SetAudioSubtitles;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/SetAudioSubtitles;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 355
    :cond_0
    return-void
.end method

.method public playerSetVolume(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetVolume;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->getTargetPlaybackSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetVolume;-><init>(Ljava/lang/String;I)V

    .line 298
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetVolume;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSetVolume;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 299
    :cond_0
    return-void
.end method

.method public playerSkip(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSkip;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->getTargetPlaybackSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSkip;-><init>(Ljava/lang/String;I)V

    .line 331
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSkip;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerSkip;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 333
    :cond_0
    return-void
.end method

.method public playerStop(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerStop;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->getTargetPlaybackSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerStop;-><init>(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerStop;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerStop;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 326
    :cond_0
    return-void
.end method

.method public playerStopPostplay(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 395
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/controller/PostplayStop;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->getTargetPlaybackSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/mdx/message/controller/PostplayStop;-><init>(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PostplayStop;->messageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PostplayStop;->messageObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sendCommand(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 398
    :cond_0
    return-void
.end method

.method public received(Lcom/netflix/mediaclient/event/UIEvent;)V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-nez v0, :cond_1

    .line 69
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetManager: no active target for event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mRecentMessageTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 75
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;

    if-eqz v0, :cond_4

    .line 76
    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;

    .line 77
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->getRemoteDevice()Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->isThisTargetUuid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->getPairingContext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "0"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    :cond_2
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetManager: pairingSucceed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->getPairingContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->pairingSucceed(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_3
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetManager: pairingFail"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->logMementoErrors(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingResponseEvent;->getErrorDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->pairingFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_4
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/RegPairResponseEvent;

    if-eqz v0, :cond_7

    .line 91
    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/RegPairResponseEvent;

    .line 92
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/RegPairResponseEvent;->getRemoteDevice()Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->isThisTargetUuid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/RegPairResponseEvent;->getPairingContext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/RegPairResponseEvent;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "0"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/RegPairResponseEvent;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 96
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/RegPairResponseEvent;->getPairingContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->pairingSucceed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_6
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/RegPairResponseEvent;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->logMementoErrors(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/RegPairResponseEvent;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/RegPairResponseEvent;->getErrorDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->pairingFail(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_7
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingDeletedEvent;

    if-eqz v0, :cond_8

    .line 104
    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingDeletedEvent;

    .line 105
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/pair/PairingDeletedEvent;->getPairingContext()Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->isThisTargetPairingContext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->pairingDeleted()V

    goto/16 :goto_0

    .line 109
    :cond_8
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/StartSessionResponseEvent;

    if-eqz v0, :cond_9

    .line 110
    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/StartSessionResponseEvent;

    .line 111
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/StartSessionResponseEvent;->getPairingContext()Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->isThisTargetPairingContext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/StartSessionResponseEvent;->getSid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sessionStarted(I)V

    goto/16 :goto_0

    .line 115
    :cond_9
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageDeliveredEvent;

    if-eqz v0, :cond_a

    .line 116
    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageDeliveredEvent;

    .line 117
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageDeliveredEvent;->getPairingContext()Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->isThisTargetPairingContext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageDeliveredEvent;->getTransactionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->messageDelivered(I)V

    goto/16 :goto_0

    .line 121
    :cond_a
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;

    if-eqz v0, :cond_b

    .line 122
    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;

    .line 123
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->getPairingContext()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->isThisTargetPairingContext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->getSid()I

    move-result v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessageEvent;->getMsgObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->messageReceived(ILjava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 127
    :cond_b
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;

    if-eqz v0, :cond_c

    move-object v0, p1

    .line 128
    check-cast v0, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;

    .line 129
    invoke-virtual {v0}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->getPairingContext()Ljava/lang/String;

    move-result-object v1

    .line 131
    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/mdx/TargetManager;->logMementoErrors(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->isThisTargetPairingContext(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->getTransactionId()I

    move-result v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/MessagingErrorEvent;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->messageError(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    :cond_c
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/SessionEndedEvent;

    if-eqz v0, :cond_d

    .line 137
    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/mdx/session/SessionEndedEvent;

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/mdx/session/SessionEndedEvent;->getSid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->isThisSession(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->sessionEnd()V

    goto/16 :goto_0

    .line 142
    :cond_d
    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public targetFound(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;)V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetContext;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/netflix/mediaclient/service/mdx/TargetContext;-><init>(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    .line 211
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    iget-object v1, p1, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->isThisTargetUuid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    iget-object v1, p1, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->isThisTargetUuid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    :cond_1
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetManager: targetFound same target"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->updateTargetProperty(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;)V

    .line 206
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 208
    :cond_2
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetManager: targetFound different target"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public targetGone(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->destroy()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    .line 221
    :cond_0
    return-void
.end method

.method public targetLaunched(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 159
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTaregtLaunchingOrLaunched:Z

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-nez v0, :cond_0

    .line 161
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "no active target for targetLaunched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->launchResult(Z)V

    goto :goto_0
.end method

.method public targetSelected(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 174
    if-nez p1, :cond_0

    .line 175
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetManager: targetSelected is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    iget-object v1, p1, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->isThisTargetUuid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    iget-object v1, p1, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->isThisTargetUuid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    :cond_1
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetManager: targetSelected same target"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTaregtLaunchingOrLaunched:Z

    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/TargetContext;->destroy()V

    .line 191
    :cond_3
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetContext;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mController:Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/netflix/mediaclient/service/mdx/TargetContext;-><init>(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/MdxController;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManager;->mTarget:Lcom/netflix/mediaclient/service/mdx/TargetContext;

    goto :goto_0

    .line 184
    :cond_4
    const-string/jumbo v0, "nf_mdx"

    const-string/jumbo v1, "TargetManager: targetSelected new target"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
