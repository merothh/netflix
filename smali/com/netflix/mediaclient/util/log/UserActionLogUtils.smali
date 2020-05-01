.class public final Lcom/netflix/mediaclient/util/log/UserActionLogUtils;
.super Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;
.source "UserActionLogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;-><init>()V

    return-void
.end method

.method public static reportAddProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V
    .locals 4

    .prologue
    .line 615
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_PROFILE_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 624
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const-string/jumbo v0, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    if-eqz p3, :cond_2

    .line 629
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :cond_2
    :goto_1
    if-eqz p4, :cond_5

    .line 635
    const-string/jumbo v0, "profile_is_kids"

    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->isKids()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 636
    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 637
    const-string/jumbo v0, "profile_id"

    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    :cond_3
    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 640
    const-string/jumbo v0, "profile_name"

    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    :cond_4
    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->getAge()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 643
    const-string/jumbo v0, "profile_age"

    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->getAge()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    :cond_5
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 630
    :catch_0
    move-exception v0

    .line 631
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportAddProfileActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 586
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    const-string/jumbo v0, "View can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_PROFILE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    const-string/jumbo v1, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    if-eqz p1, :cond_2

    .line 598
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportAddToQueueActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 171
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_TO_PLAYLIST_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    if-eqz p2, :cond_2

    .line 184
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    .line 190
    const-string/jumbo v0, "title_rank"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    :cond_3
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportAddToQueueActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 151
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string/jumbo v0, "View can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_TO_PLAYLIST_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string/jumbo v1, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    if-eqz p1, :cond_2

    .line 163
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportChangeValueActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 305
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_CHANGE_VALUE_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    if-eqz p2, :cond_2

    .line 318
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_2
    :goto_1
    invoke-static {p3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    const-string/jumbo v0, "new_value"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    :cond_3
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportChangeValueActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 285
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    const-string/jumbo v0, "View can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_CHANGE_VALUE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string/jumbo v1, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    if-eqz p1, :cond_2

    .line 297
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportDeleteProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 4

    .prologue
    .line 737
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_DELETE_PROFILE_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 746
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    const-string/jumbo v0, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    if-eqz p3, :cond_2

    .line 752
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 753
    :catch_0
    move-exception v0

    .line 754
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportDeleteProfileActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 716
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    const-string/jumbo v0, "View can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 724
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_DELETE_PROFILE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 725
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    const-string/jumbo v1, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    const-string/jumbo v1, "profile_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    if-eqz p1, :cond_2

    .line 729
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportDeserializeLolomoEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V
    .locals 5

    .prologue
    .line 1138
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1146
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_DESERIALIZE_LOLOMO_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1147
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    const-string/jumbo v0, "lolomoTtl"

    invoke-virtual {v1, v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1150
    if-eqz p2, :cond_2

    .line 1152
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportDeserializeLolomoStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 1113
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    :goto_0
    return-void

    .line 1117
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_DESERIALIZE_LOLOMO_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1118
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1119
    if-eqz p2, :cond_1

    .line 1120
    const-string/jumbo v1, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    :cond_1
    if-eqz p1, :cond_2

    .line 1123
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1126
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportEditProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V
    .locals 4

    .prologue
    .line 680
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_EDIT_PROFILE_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const-string/jumbo v0, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    if-eqz p3, :cond_2

    .line 694
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :cond_2
    :goto_1
    if-eqz p4, :cond_5

    .line 700
    const-string/jumbo v0, "profile_is_kids"

    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->isKids()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 701
    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 702
    const-string/jumbo v0, "profile_id"

    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    :cond_3
    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 705
    const-string/jumbo v0, "profile_name"

    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    :cond_4
    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->getAge()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 708
    const-string/jumbo v0, "profile_age"

    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->getAge()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 711
    :cond_5
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportEditProfileActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 651
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    const-string/jumbo v0, "View can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_EDIT_PROFILE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 660
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    const-string/jumbo v1, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    if-eqz p1, :cond_2

    .line 663
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportEndPostPlay(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/Error;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 4

    .prologue
    .line 1012
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Report postplay ends!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    const-string/jumbo v0, "Destination can not be null"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1026
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_POSTPLAY_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1027
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    const-string/jumbo v0, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1031
    if-eqz p3, :cond_2

    .line 1033
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    :cond_2
    :goto_1
    const-string/jumbo v0, "wasAutoPlayCountdownInterrupted"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1040
    const-string/jumbo v0, "didUserContinueWatching"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1041
    if-eqz p6, :cond_3

    .line 1042
    const-string/jumbo v0, "chosenVideoId"

    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1044
    :cond_3
    if-eqz p7, :cond_4

    .line 1045
    const-string/jumbo v0, "chosenIndex"

    invoke-virtual {v1, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1048
    :cond_4
    const-string/jumbo v0, "trackId"

    invoke-virtual {v1, v0, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1050
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportLoginActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 4

    .prologue
    .line 76
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_LOGIN_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    if-eqz p2, :cond_2

    .line 89
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportLoginActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 43
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string/jumbo v0, "View can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_LOGIN_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string/jumbo v1, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    if-eqz p1, :cond_2

    .line 55
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportNavigationActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 4

    .prologue
    .line 507
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    if-eqz p1, :cond_0

    .line 520
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_NAVIGATION_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const-string/jumbo v0, "view"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string/jumbo v0, "reason"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    if-eqz p3, :cond_2

    .line 527
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportNavigationActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 479
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    if-eqz p2, :cond_0

    .line 488
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_NAVIGATION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string/jumbo v1, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    if-eqz p1, :cond_2

    .line 492
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportNewLolomoActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 868
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_NEW_LOLOMO_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 877
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    if-eqz p2, :cond_2

    .line 881
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    :cond_2
    :goto_1
    invoke-static {p3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 888
    const-string/jumbo v0, "renoCause"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    :cond_3
    invoke-static {p4}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 892
    const-string/jumbo v0, "renoMessageGuid"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    :cond_4
    if-eqz p5, :cond_5

    .line 896
    const-string/jumbo v0, "renoCreationTimestamp"

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 899
    :cond_5
    invoke-static {p6}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 900
    const-string/jumbo v0, "mercuryMessageGuid"

    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 903
    :cond_6
    invoke-static {p7}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 904
    const-string/jumbo v0, "mercuryEventGuid"

    invoke-virtual {v1, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    :cond_7
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 882
    :catch_0
    move-exception v0

    .line 883
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportNewLolomoActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 848
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    :goto_0
    return-void

    .line 852
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_NEW_LOLOMO_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 853
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 854
    if-eqz p2, :cond_1

    .line 855
    const-string/jumbo v1, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    :cond_1
    if-eqz p1, :cond_2

    .line 858
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportPlayActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/PlayerType;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V
    .locals 4

    .prologue
    .line 119
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_START_PLAY_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    if-eqz p2, :cond_2

    .line 132
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    .line 138
    const-string/jumbo v0, "rank"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    :cond_3
    if-eqz p4, :cond_4

    .line 141
    const-string/jumbo v0, "playerType"

    invoke-virtual {p4}, Lcom/netflix/mediaclient/media/PlayerType;->getValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    :cond_4
    if-eqz p5, :cond_5

    .line 144
    const-string/jumbo v0, "playLocation"

    invoke-virtual {p5}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    :cond_5
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportPlayActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 99
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string/jumbo v0, "View can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_START_PLAY_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string/jumbo v1, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    if-eqz p1, :cond_2

    .line 111
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportPreAppWidgetActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 4

    .prologue
    .line 936
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.PREAPP_WIDGET_ACTION_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 945
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    if-eqz p2, :cond_2

    .line 949
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 950
    :catch_0
    move-exception v0

    .line 951
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportPreAppWidgetActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;)V
    .locals 3

    .prologue
    .line 913
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    const-string/jumbo v0, "widgetLogData can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 921
    const-string/jumbo v0, "widgetLogActionData can not be null!"

    invoke-static {p3, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 925
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PREAPP_WIDGET_ACTION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 926
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    const-string/jumbo v1, "logData"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    const-string/jumbo v1, "widgetActionData"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportPrefetchLolomoJobEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 4

    .prologue
    .line 1085
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1093
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_PREFETCH_LOLOMO_JOB_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1095
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    if-eqz p2, :cond_2

    .line 1098
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 1099
    :catch_0
    move-exception v0

    .line 1100
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportPrefetchLolomoJobStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 1060
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    :goto_0
    return-void

    .line 1064
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_PREFETCH_LOLOMO_JOB_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1065
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    if-eqz p2, :cond_1

    .line 1067
    const-string/jumbo v1, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    :cond_1
    if-eqz p1, :cond_2

    .line 1070
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1073
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportRateActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 394
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_RATE_TITLE_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    if-eqz p2, :cond_2

    .line 407
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    .line 413
    const-string/jumbo v0, "rank"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    :cond_3
    if-eqz p4, :cond_4

    .line 416
    const-string/jumbo v0, "rating"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    :cond_4
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportRateActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 374
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const-string/jumbo v0, "View can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_RATE_TITLE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string/jumbo v1, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    if-eqz p1, :cond_2

    .line 386
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportRemoveFromQueueActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 4

    .prologue
    .line 351
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_REMOVE_FROM_PLAYLIST_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    if-eqz p2, :cond_2

    .line 364
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportRemoveFromQueueActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 331
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    const-string/jumbo v0, "View can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_REMOVE_FROM_PLAYLIST_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string/jumbo v1, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    if-eqz p1, :cond_2

    .line 343
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportSearchActionEnded(JLandroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 4

    .prologue
    .line 447
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p3, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_SEARCH_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const-string/jumbo v0, "reason"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string/jumbo v0, "id"

    invoke-virtual {v1, v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 459
    if-eqz p4, :cond_2

    .line 461
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p4}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :cond_2
    :goto_1
    invoke-static {p2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportSearchActionStarted(JLandroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 424
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    const-string/jumbo v0, "View can not be null!"

    invoke-static {p4, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_SEARCH_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string/jumbo v1, "view"

    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 436
    if-eqz p3, :cond_2

    .line 437
    const-string/jumbo v1, "cmd"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    :cond_2
    if-eqz p5, :cond_3

    .line 440
    const-string/jumbo v1, "term"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    :cond_3
    invoke-static {p2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportSelectProfileActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 4

    .prologue
    .line 562
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_SELECT_PROFILE_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const-string/jumbo v0, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    if-eqz p3, :cond_2

    .line 576
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportSelectProfileActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;)V
    .locals 3

    .prologue
    .line 538
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    const-string/jumbo v0, "View can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_SELECT_PROFILE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    const-string/jumbo v1, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    if-eqz p1, :cond_2

    .line 550
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    :cond_2
    const-string/jumbo v1, "profile_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    if-eqz p4, :cond_3

    .line 554
    const-string/jumbo v1, "remember_profile"

    invoke-virtual {p4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    :cond_3
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportSerializeLolomoEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V
    .locals 5

    .prologue
    .line 1193
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1201
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_SERIALIZE_LOLOMO_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1202
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1203
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    const-string/jumbo v0, "lolomoFetchedTime"

    invoke-virtual {v1, v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1205
    if-eqz p2, :cond_2

    .line 1207
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportSerializeLolomoStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 1167
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    :goto_0
    return-void

    .line 1171
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_SERIALIZE_LOLOMO_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1172
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1173
    if-eqz p2, :cond_1

    .line 1174
    const-string/jumbo v1, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    :cond_1
    if-eqz p1, :cond_2

    .line 1177
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1180
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportShareSheetActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 4

    .prologue
    .line 782
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 791
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    if-eqz p2, :cond_2

    .line 795
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 796
    :catch_0
    move-exception v0

    .line 797
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportShareSheetActionStarted(Ljava/lang/String;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 762
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    :goto_0
    return-void

    .line 766
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    if-eqz p3, :cond_1

    .line 769
    const-string/jumbo v1, "view"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    :cond_1
    if-eqz p2, :cond_2

    .line 772
    const-string/jumbo v1, "cmd"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    :cond_2
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportShareSheetOpenActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V
    .locals 4

    .prologue
    .line 825
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_OPEN_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 834
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    if-eqz p2, :cond_2

    .line 838
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 839
    :catch_0
    move-exception v0

    .line 840
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportShareSheetOpenActionStarted(Ljava/lang/String;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 805
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    :goto_0
    return-void

    .line 809
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_OPEN_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 810
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    if-eqz p3, :cond_1

    .line 812
    const-string/jumbo v1, "view"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    :cond_1
    if-eqz p2, :cond_2

    .line 815
    const-string/jumbo v1, "cmd"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    :cond_2
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportStartPostPlay(Landroid/content/Context;ZILcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;)V
    .locals 3

    .prologue
    .line 967
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Report postplay starts!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    const-string/jumbo v0, "postPlayExperience can not be null"

    invoke-static {p3, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 977
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_POSTPLAY_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 978
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    const-string/jumbo v1, "isAutoPlayCountdownEnabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 981
    const-string/jumbo v1, "lengthOfAutoPlayCountdown"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 982
    if-eqz p3, :cond_2

    .line 983
    const-string/jumbo v1, "postPlayExperience"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportSurveyEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 216
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    if-eqz p2, :cond_2

    .line 229
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_2
    :goto_1
    const-string/jumbo v0, "surveyType"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportSurveyQuestionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 259
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string/jumbo v0, "Reason can not be null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_QUESTION_ENDED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string/jumbo v0, "reason"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    if-eqz p2, :cond_2

    .line 272
    :try_start_0
    const-string/jumbo v0, "error"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_2
    :goto_1
    const-string/jumbo v0, "question"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string/jumbo v0, "response"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to get JSON string from UIError"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static reportSurveyQuestionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 239
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    const-string/jumbo v0, "View can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_QUESTION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string/jumbo v1, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    if-eqz p1, :cond_2

    .line 251
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportSurveyStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 196
    const-string/jumbo v0, "Context can not be null!"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const-string/jumbo v0, "View can not be null!"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string/jumbo v1, "view"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    if-eqz p1, :cond_2

    .line 208
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    :cond_2
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method
