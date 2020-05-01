.class public Lcom/netflix/mediaclient/service/logging/SearchLogging;
.super Ljava/lang/Object;
.source "SearchLogging.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ISearchLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log_search"


# instance fields
.field private focusFocusSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

.field private mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

.field private searchSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->focusFocusSessions:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchSessions:Ljava/util/Map;

    .line 36
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    .line 37
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 38
    return-void
.end method

.method private declared-synchronized stopFocusSession(J)V
    .locals 5

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 190
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->focusFocusSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/search/SearchFocusSession;

    .line 191
    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 193
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/search/SearchFocusSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionEndedEvent;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 195
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->focusFocusSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    :try_start_2
    const-string/jumbo v1, "nf_log_search"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SearchFocusSession stop done."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopSession(J)V
    .locals 5

    .prologue
    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/search/SearchSession;

    .line 117
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 119
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/search/SearchSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionEndedEvent;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 122
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    :try_start_0
    const-string/jumbo v1, "nf_log_search"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Search session stop done."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private validateSearchQueryForPrivacy(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const-string/jumbo v0, "nf_log_search"

    const-string/jumbo v1, "Query is empty, skip privacy check"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    :goto_0
    return-object p1

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    if-nez v0, :cond_2

    .line 165
    const-string/jumbo v0, "nf_log_search"

    const-string/jumbo v1, "User agent is NULL, this should NOT happen, we can not check for privacy violation!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 p1, 0x0

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->isPotentialPrivacyViolationFoundForLogging(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string/jumbo v0, "nf_log_search"

    const-string/jumbo v1, "Security violation found, do NOT log query"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string/jumbo p1, "PRIVACY_VIOLATION"

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized endAllActiveSessions()V
    .locals 4

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->focusFocusSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 264
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->focusFocusSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 265
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 266
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->stopFocusSession(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 269
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 270
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 271
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 272
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->stopSession(J)V

    goto :goto_1

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->focusFocusSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    monitor-exit p0

    return-void
.end method

.method public fireEditEvent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    if-nez v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const-string/jumbo v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->validateSearchQueryForPrivacy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    const-string/jumbo v0, "input_mode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    move-result-object v0

    .line 215
    :goto_1
    new-instance v2, Lcom/netflix/mediaclient/service/logging/search/model/SearchEditEvent;

    invoke-direct {v2, v1, v0}, Lcom/netflix/mediaclient/service/logging/search/model/SearchEditEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;)V

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 218
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    :try_start_0
    const-string/jumbo v0, "nf_log_search"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Search Edit Event fired"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/search/model/SearchEditEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    goto :goto_0

    .line 214
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;->keyboard:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    goto :goto_1
.end method

.method public fireImpressionEvent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 228
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    if-nez v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const-string/jumbo v1, "from"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 233
    const-string/jumbo v1, "to"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 235
    const-string/jumbo v1, "reference"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    const-string/jumbo v4, "view"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 238
    const-string/jumbo v4, "modal_view"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 239
    const-string/jumbo v4, "childIds"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-static {v5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 243
    invoke-static {v5}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v6

    .line 247
    :goto_1
    invoke-static {v7}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 248
    invoke-static {v7}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v5

    .line 251
    :goto_2
    new-instance v0, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;-><init>(Ljava/lang/String;II[Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 252
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 253
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    :try_start_0
    const-string/jumbo v1, "nf_log_search"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Search Impression Event fired"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/search/model/SearchImpressionEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    move-object v5, v0

    goto :goto_2

    :cond_3
    move-object v6, v0

    goto :goto_1
.end method

.method public handleIntent(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 43
    const/4 v0, 0x1

    .line 44
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_SEARCH_SESSION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->startSession(Landroid/content/Intent;)V

    .line 46
    const-string/jumbo v1, "nf_log_search"

    const-string/jumbo v2, "SEARCH_SESSION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return v0

    .line 47
    :cond_0
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_SEARCH_SESSION_END"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->stopSession(Landroid/content/Intent;)V

    .line 49
    const-string/jumbo v1, "nf_log_search"

    const-string/jumbo v2, "SEARCH_SESSION_END"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_FOCUS_SEARCH_SESSION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->startFocusSession(Landroid/content/Intent;)V

    .line 52
    const-string/jumbo v1, "nf_log_search"

    const-string/jumbo v2, "SEARCH_FOCUS_SESSION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :cond_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_FOCUS_SEARCH_SESSION_END"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->stopFocusSession(Landroid/content/Intent;)V

    .line 55
    const-string/jumbo v1, "nf_log_search"

    const-string/jumbo v2, "SEARCH_FOCUS_SESSION_END"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_3
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_FOCUS_SEARCH_EDIT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->fireEditEvent(Landroid/content/Intent;)V

    .line 58
    const-string/jumbo v1, "nf_log_search"

    const-string/jumbo v2, "SEARCH_EDIT"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :cond_4
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_SUS_FOCUS_SEARCH_IMPRESSION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 60
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->fireImpressionEvent(Landroid/content/Intent;)V

    .line 61
    const-string/jumbo v1, "nf_log_search"

    const-string/jumbo v2, "SEARCH_IMPRESSION"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 64
    const-string/jumbo v0, "nf_log_search"

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

    .line 66
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized startFocusSession(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    :cond_1
    :try_start_1
    const-string/jumbo v0, "session_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 139
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 143
    new-instance v2, Lcom/netflix/mediaclient/service/logging/search/SearchFocusSession;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/search/SearchFocusSession;-><init>(J)V

    .line 144
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->focusFocusSessions:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 147
    const-string/jumbo v0, "term"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->validateSearchQueryForPrivacy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/search/SearchFocusSession;->createStartEvent(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/search/model/SearchFocusSessionStartedEvent;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 151
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    :try_start_2
    const-string/jumbo v1, "nf_log_search"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startFocusSession done."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 78
    :cond_1
    :try_start_1
    const-string/jumbo v0, "session_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 79
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 83
    new-instance v2, Lcom/netflix/mediaclient/service/logging/search/SearchSession;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/search/SearchSession;-><init>(J)V

    .line 85
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->searchSessions:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 88
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/search/SearchSession;->createStartEvent()Lcom/netflix/mediaclient/service/logging/search/model/SearchSessionStartedEvent;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/SearchLogging;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 91
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    :try_start_2
    const-string/jumbo v1, "nf_log_search"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Search session start done."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopFocusSession(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "session_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 181
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->stopFocusSession(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSession(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "session_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 103
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/SearchLogging;->stopSession(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
