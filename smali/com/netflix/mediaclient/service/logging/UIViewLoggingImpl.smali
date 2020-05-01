.class public final Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;
.super Ljava/lang/Object;
.source "UIViewLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/UIViewLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log"


# instance fields
.field private mAgeVerifyImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

.field private mCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

.field private mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

.field private mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

.field private mIkoNotificationImpressionSessions:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;",
            ">;"
        }
    .end annotation
.end field

.field private mImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

.field private mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

.field private mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

.field private mNotificationImpressionSessions:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mNotificationImpressionSessions:Ljava/util/Stack;

    .line 60
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mIkoNotificationImpressionSessions:Ljava/util/Stack;

    .line 65
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    .line 66
    return-void
.end method

.method private handleIkoNotificationImpressionEnd(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 375
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mIkoNotificationImpressionSessions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 379
    :cond_0
    const-string/jumbo v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 381
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "IkoNotificationImpressionEnd impression session ended"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mIkoNotificationImpressionSessions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    .line 384
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->createEndedEvent(ZLcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;

    move-result-object v1

    .line 385
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 386
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 387
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "IkoNotificationImpressionEnd impression session end event posting..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 389
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "IkoNotificationImpressionEnd impression session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleIkoNotificationImpressionStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 358
    const/4 v1, 0x0

    .line 360
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "model"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "IkoNotificationImpressionStart impression session starting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string/jumbo v1, "guid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    new-instance v2, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->ikoNotification:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 369
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mIkoNotificationImpressionSessions:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 371
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t construct JSON model from the following String: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "model"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private handleLeftPanelCommandEnded(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 267
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "LeftPanelCommandSession command session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;

    move-result-object v0

    .line 269
    if-nez v0, :cond_1

    .line 270
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "LeftPanelCommandSession command session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 274
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 275
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LeftPanelCommandSession command session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    .line 278
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "LeftPanelCommandSession command session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleLeftPanelCommandStart(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    if-eqz v0, :cond_0

    .line 249
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "LeftPanelCommandSession command session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "LeftPanelCommandSession command session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string/jumbo v0, "inputValue"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    move-result-object v4

    .line 256
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->viewMenu:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    move-object v3, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 258
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "LeftPanelCommandSession command session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleLeftPanelImpressionEnd(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 308
    :cond_0
    const-string/jumbo v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 310
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LeftPanelImpressionEnd impression session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    invoke-virtual {v1, v0, v3}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->createEndedEvent(ZLcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 313
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 314
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LeftPanelImpressionEnd impression session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 316
    iput-object v3, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    .line 317
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "LeftPanelImpressionEnd impression session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleLeftPanelImpressionStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    if-eqz v0, :cond_0

    .line 284
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "LeftPanelImpressionStart impression session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_0
    return-void

    .line 288
    :cond_0
    const/4 v1, 0x0

    .line 290
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "model"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_1
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LeftPanelImpressionStart impression session starting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string/jumbo v1, "guid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    new-instance v2, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->menuPanel:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mLeftPanelImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t construct JSON model from the following String: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "model"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private handleNotificationImpressionEnd(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mNotificationImpressionSessions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 343
    :cond_0
    const-string/jumbo v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 345
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "NotificationImpressionEnd impression session ended"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mNotificationImpressionSessions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    .line 348
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->createEndedEvent(ZLcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;

    move-result-object v1

    .line 349
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 350
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 351
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "NotificationImpressionEnd impression session end event posting..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 353
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "NotificationImpressionEnd impression session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleNotificationImpressionStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 324
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "model"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "NotificationImpressionStart impression session starting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string/jumbo v1, "guid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    new-instance v2, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->notification:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 333
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mNotificationImpressionSessions:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 335
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t construct JSON model from the following String: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "model"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private handleUIViewCommandEnded(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->endCommandSession()V

    .line 244
    return-void
.end method

.method private handleUIViewCommandStart(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 198
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 201
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    move-result-object v1

    .line 203
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    .line 209
    :goto_1
    const-string/jumbo v3, "inputMethod"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 212
    invoke-static {v3}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    move-result-object v3

    .line 216
    :goto_2
    const-string/jumbo v4, "dataContext"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 219
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/DataContext;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 225
    :goto_3
    const-string/jumbo v5, "url"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 229
    const-string/jumbo v6, "model"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    const-string/jumbo v7, "model"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    move-object v0, p0

    .line 239
    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->startCommandSession(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 240
    return-void

    .line 220
    :catch_0
    move-exception v5

    .line 221
    const-string/jumbo v5, "nf_log"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to create dataContext: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v4, v0

    goto :goto_3

    .line 232
    :catch_1
    move-exception v6

    .line 233
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 234
    const-string/jumbo v6, "nf_log"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Couldn\'t construct JSON model from the following String: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "model"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v6, v0

    goto :goto_4

    :cond_2
    move-object v3, v0

    goto :goto_2

    :cond_3
    move-object v2, v0

    goto/16 :goto_1

    :cond_4
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private handleUIViewImpression(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 186
    const-string/jumbo v0, "trackId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 187
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    const/4 v0, 0x0

    .line 189
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    move-result-object v0

    .line 193
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->createImpressionEvent(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;I)V

    .line 194
    return-void
.end method

.method private handleUIViewImpressionEnd(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 171
    const-string/jumbo v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 172
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    const/4 v0, 0x0

    .line 177
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 181
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->endImpressionSession(ZLcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 182
    return-void

    .line 178
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private handleUIViewImpressionStart(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 160
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    const/4 v0, 0x0

    .line 162
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 165
    :cond_0
    const-string/jumbo v1, "guid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->startImpressionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 394
    if-nez p1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 399
    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setModalView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0
.end method


# virtual methods
.method public createImpressionEvent(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;I)V
    .locals 3

    .prologue
    .line 404
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionEvent;-><init>(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;I)V

    .line 405
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 406
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 407
    return-void
.end method

.method public endAllActiveSessions()V
    .locals 2

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->endCommandSession()V

    .line 446
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->endImpressionSession(ZLcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 447
    return-void
.end method

.method public endCommandSession()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView command session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;

    move-result-object v0

    .line 93
    if-nez v0, :cond_1

    .line 94
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView command session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 98
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 99
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "uiView command session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    .line 102
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView command session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized endImpressionSession(ZLcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 3

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 441
    :goto_0
    monitor-exit p0

    return-void

    .line 433
    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView impression session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->createEndedEvent(ZLcom/netflix/mediaclient/service/logging/client/model/Error;)Lcom/netflix/mediaclient/service/logging/uiview/model/ImpressionSessionEndedEvent;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 436
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 437
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "uiView impression session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    .line 440
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView impression session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleIntent(Landroid/content/Intent;Z)Z
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 108
    const/4 v0, 0x1

    .line 109
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_CMD_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "COMMAND_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleUIViewCommandStart(Landroid/content/Intent;)V

    .line 155
    :goto_0
    return v0

    .line 112
    :cond_0
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_CMD_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "COMMAND_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleUIViewCommandEnded(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    :cond_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_CMD_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LEFT_PANEL_VIEW_COMMAND_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleLeftPanelCommandStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :cond_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_CMD_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LEFT_PANEL_VIEW_COMMAND_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleLeftPanelCommandEnded(Landroid/content/Intent;)V

    goto :goto_0

    .line 121
    :cond_3
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_IMPRESSION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 122
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LEFT_PANEL_VIEW_IMPRESSION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleLeftPanelImpressionStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 124
    :cond_4
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_LEFT_PANEL_VIEW_IMPRESSION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 125
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LEFT_PANEL_VIEW_IMPRESSION_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleLeftPanelImpressionEnd(Landroid/content/Intent;)V

    goto :goto_0

    .line 127
    :cond_5
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_NOTIFICATION_IMPRESSION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 128
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "NOTIFICATION_IMPRESSION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleNotificationImpressionStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 130
    :cond_6
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_NOTIFICATION_IMPRESSION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 131
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "NOTIFICATION_IMPRESSION_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleNotificationImpressionEnd(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 133
    :cond_7
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_NOTIFICATION_IMPRESSION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 134
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "IKO_NOTIFICATION_IMPRESSION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleIkoNotificationImpressionStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 136
    :cond_8
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_IKO_NOTIFICATION_IMPRESSION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 137
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "IKO_NOTIFICATION_IMPRESSION_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleIkoNotificationImpressionEnd(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 139
    :cond_9
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_IMPRESSION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 140
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "IMPRESSION"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleUIViewImpression(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 142
    :cond_a
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_IMPRESSION_SESSION_STARTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 143
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "IMPRESSION_SESSION_STARTED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleUIViewImpressionStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 145
    :cond_b
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIVIEW_IMPRESSION_SESSION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 146
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "IMPRESSION_SESSION_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->handleUIViewImpressionEnd(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 149
    :cond_c
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 150
    const-string/jumbo v0, "nf_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "We do not support action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized startCommandSession(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    if-eqz v0, :cond_0

    .line 71
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView command session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView command session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    sget-object v5, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;->touch:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;Lorg/json/JSONObject;)V

    .line 77
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 78
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mCommandSession:Lcom/netflix/mediaclient/service/logging/uiview/CommandSession;

    .line 79
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    .line 80
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mUrl:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView command session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startImpressionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    if-eqz v0, :cond_0

    .line 412
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView impression session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :goto_0
    monitor-exit p0

    return-void

    .line 416
    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView impression session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 419
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UIViewLoggingImpl;->mImpressionSession:Lcom/netflix/mediaclient/service/logging/uiview/ImpressionSession;

    .line 420
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "uiView impression session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
