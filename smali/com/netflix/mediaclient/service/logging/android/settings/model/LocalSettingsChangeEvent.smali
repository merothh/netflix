.class public Lcom/netflix/mediaclient/service/logging/android/settings/model/LocalSettingsChangeEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
.source "LocalSettingsChangeEvent.java"


# static fields
.field private static final SETTINGS_CATEGORY:Ljava/lang/String; = "settings"

.field private static final SETTINGS_CHANGE_NAME:Ljava/lang/String; = "localSettingChange"


# instance fields
.field private localSettingsLogData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;-><init>()V

    const-string/jumbo v0, "settings"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/android/settings/model/LocalSettingsChangeEvent;->category:Ljava/lang/String;

    const-string/jumbo v0, "localSettingChange"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/android/settings/model/LocalSettingsChangeEvent;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/android/settings/model/LocalSettingsChangeEvent;->localSettingsLogData:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/android/settings/model/LocalSettingsChangeEvent;->setTime(J)V

    return-void
.end method


# virtual methods
.method protected getCustomData()Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/android/settings/model/LocalSettingsChangeEvent;->localSettingsLogData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getData()Lorg/json/JSONObject;
    .locals 1

    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    return-object v0
.end method
