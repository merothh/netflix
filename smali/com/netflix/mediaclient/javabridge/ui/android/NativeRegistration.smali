.class public final Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;
.super Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;
.source "NativeRegistration.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/Registration;


# static fields
.field public static final CMD_RESULT_EVENT_activateComplete:Ljava/lang/String; = "activateComplete"

.field public static final CMD_RESULT_EVENT_bindComplete:Ljava/lang/String; = "bindComplete"

.field public static final CMD_RESULT_EVENT_createAccountComplete:Ljava/lang/String; = "createdAccount"

.field public static final CMD_RESULT_EVENT_deactivateComplete:Ljava/lang/String; = "deactivate"

.field public static final CMD_RESULT_EVENT_selectAccountComplete:Ljava/lang/String; = "selectedAccount"

.field public static final METHOD_createDeviceAccount:Ljava/lang/String; = "createDeviceAccount"

.field public static final METHOD_deactivate:Ljava/lang/String; = "deactivate"

.field public static final METHOD_deactivateAll:Ljava/lang/String; = "deactivateAll"

.field public static final METHOD_emailActivate:Ljava/lang/String; = "emailActivate"

.field public static final METHOD_esnMigration:Ljava/lang/String; = "esnMigration"

.field public static final METHOD_getDeviceTokens:Ljava/lang/String; = "getDeviceTokens"

.field public static final METHOD_massDeactivationCheck:Ljava/lang/String; = "massDeactivationCheck"

.field public static final METHOD_ping:Ljava/lang/String; = "ping"

.field public static final METHOD_selectDeviceAccount:Ljava/lang/String; = "selectDeviceAccount"

.field public static final METHOD_setActivationTokens:Ljava/lang/String; = "setActivationTokens"

.field public static final METHOD_setUILanguages:Ljava/lang/String; = "setUILanguages"

.field public static final METHOD_tokenActivate:Ljava/lang/String; = "tokenActivate"

.field public static final METHOD_unselectDeviceAccount:Ljava/lang/String; = "unselectDeviceAccount"

.field private static final TAG:Ljava/lang/String; = "nf_reg"


# instance fields
.field private accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;",
            ">;"
        }
    .end annotation
.end field

.field private activationTokens:Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

.field private currentDeviceAccount:Ljava/lang/String;

.field private registered:Z


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->accounts:Ljava/util/List;

    return-void
.end method

.method private handleEvent(Lorg/json/JSONObject;)I
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v0, "data"

    invoke-virtual {p0, p1, v0, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "name"

    invoke-virtual {p0, p1, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    const-string/jumbo v2, "idx"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "nf_reg"

    const-string/jumbo v3, "handleEvent data !null"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "deactivate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/netflix/mediaclient/javabridge/ui/android/registration/DeactivateCompleteCommand;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/registration/DeactivateCompleteCommand;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->handleCallback(Lcom/netflix/mediaclient/event/CallbackEvent;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v2, "createdAccount"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/registration/CreateAccountCompleteCommand;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->handleCallback(Lcom/netflix/mediaclient/event/CallbackEvent;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "selectedAccount"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/netflix/mediaclient/javabridge/ui/android/registration/SelectedAccountCompleteCommand;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/registration/SelectedAccountCompleteCommand;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->handleCallback(Lcom/netflix/mediaclient/event/CallbackEvent;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->handleEventByName(Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "nf_reg"

    const-string/jumbo v1, "Nobody to handle!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleEventByName(Lorg/json/JSONObject;)I
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x1

    const-string/jumbo v1, "data"

    invoke-virtual {p0, p1, v1, v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {p0, p1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "bind"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "activate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->handleNccpEvent(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    if-ne v0, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string/jumbo v3, "nf_reg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received a event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "bind"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Lcom/netflix/mediaclient/event/nrdp/BindEvent;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/event/nrdp/BindEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v2, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "activateComplete"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "activate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    new-instance v0, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/event/nrdp/registration/ActivateEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v2, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    move-result v0

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "deactivated"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v0, Lcom/netflix/mediaclient/event/nrdp/registration/DeactivatedEvent;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/event/nrdp/registration/DeactivatedEvent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v2, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    move-result v0

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_reg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Nobody to handle by name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handlePropertyUpdate(Lorg/json/JSONObject;)I
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "properties"

    invoke-virtual {p0, p1, v1, v8}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "nf_reg"

    const-string/jumbo v2, "handlePropertyUpdate:: properties does not exist"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v2, "registered"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "registered"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->registered:Z

    :cond_1
    const-string/jumbo v2, "currentDeviceAccount"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "currentDeviceAccount"

    invoke-virtual {p0, v1, v2, v8}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->currentDeviceAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->currentDeviceAccount:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "registered"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "registered"

    invoke-virtual {p0, v1, v2, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->registered:Z

    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->accounts:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v3, "deviceAccounts"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->accounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const-string/jumbo v3, "deviceAccounts"

    invoke-virtual {p0, v1, v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    new-instance v4, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;-><init>(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "nf_reg"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Account "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->accounts:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "appResetRequired"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "nf_reg"

    const-string/jumbo v1, "handlePropertyUpdate:: appResetRequired"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "appResetRequired"

    invoke-virtual {p0, v0, v8}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->handleListener(Ljava/lang/String;Lcom/netflix/mediaclient/event/UIEvent;)I

    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public createDeviceAccount(Lcom/netflix/mediaclient/javabridge/ui/Callback;)V
    .locals 3

    const-string/jumbo v0, "registration"

    const-string/jumbo v1, "createDeviceAccount"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->invokeMethodWithCallback(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netflix/mediaclient/javabridge/ui/Callback;)V

    return-void
.end method

.method public deactivate(Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;Lcom/netflix/mediaclient/javabridge/ui/Callback;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->getAccountKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Dak is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getStorage()Lcom/netflix/mediaclient/javabridge/ui/Storage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->getAccountKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/Storage;->clear(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "key"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->getAccountKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "registration"

    const-string/jumbo v2, "deactivate"

    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->invokeMethodWithCallback(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netflix/mediaclient/javabridge/ui/Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_reg"

    const-string/jumbo v2, "Deactivate device account failed because of "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deactivateAll(Lcom/netflix/mediaclient/javabridge/ui/Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getDevice()Lcom/netflix/mediaclient/javabridge/ui/Device;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/Device;->factoryReset(Lcom/netflix/mediaclient/javabridge/ui/Callback;)V

    return-void
.end method

.method public emailActivate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->currentDeviceAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "email"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "passwd"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v1

    const-string/jumbo v2, "registration"

    const-string/jumbo v3, "emailActivate"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_reg"

    const-string/jumbo v2, "emailActivate failed with "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "nf_reg"

    const-string/jumbo v1, "Failed with token activate. Current device account is NOT set!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public esnMigration()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "registration"

    const-string/jumbo v2, "esnMigration"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getActivationTokens()Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->activationTokens:Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    return-object v0
.end method

.method public getCurrentDeviceAccount()Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->currentDeviceAccount:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "nf_reg"

    const-string/jumbo v2, "Device account is NOT selected!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->accounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->getAccountKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nf_reg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Selected device account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "nf_reg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Account is not found for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public getDeviceAccounts()[Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->accounts:Ljava/util/List;

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->accounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    return-object v0
.end method

.method public getDeviceTokens()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "registration"

    const-string/jumbo v2, "getDeviceTokens"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "registration"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "nrdp.registration"

    return-object v0
.end method

.method public getUILanguages()[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->getCurrentDeviceAccount()Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->getLanguages()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->getLanguages()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->getDevice()Lcom/netflix/mediaclient/javabridge/ui/Device;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Device;->getUILanguages()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleNccpEvent(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_reg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NCCP event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "origin"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "origin"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "complete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_reg"

    const-string/jumbo v1, "NCCP event with origin equal complete. Ignore."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v0, "nf_reg"

    const-string/jumbo v1, "NCCP event: handle by implementation"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->registered:Z

    return v0
.end method

.method public massDeactivationCheck()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "registration"

    const-string/jumbo v2, "massDeactivationCheck"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ping()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "registration"

    const-string/jumbo v2, "ping"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processUpdate(Lorg/json/JSONObject;)I
    .locals 4

    :try_start_0
    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_reg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processUpdate: handle type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "PropertyUpdate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_reg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processUpdate: handle prop update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->handlePropertyUpdate(Lorg/json/JSONObject;)I

    move-result v0

    :goto_0
    return v0

    :cond_2
    const-string/jumbo v0, "nf_reg"

    const-string/jumbo v1, "processUpdate: handle event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->handleEvent(Lorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_reg"

    const-string/jumbo v2, "Failed with JSON"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public selectDeviceAccount(Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;Lcom/netflix/mediaclient/javabridge/ui/Callback;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->getAccountKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Dak is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "key"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->getAccountKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "registration"

    const-string/jumbo v2, "selectDeviceAccount"

    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->invokeMethodWithCallback(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netflix/mediaclient/javabridge/ui/Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "nf_reg"

    const-string/jumbo v2, "Create device account failed because of "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActivationTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;)V
    .locals 4

    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->activationTokens:Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    if-nez p1, :cond_0

    const-string/jumbo v0, "nf_reg"

    const-string/jumbo v1, "setActivationTokens:: tokens are null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "registration"

    const-string/jumbo v2, "setActivationTokens"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUILanguages([Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->getCurrentDeviceAccount()Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf_reg"

    const-string/jumbo v1, "Current account is NULL! UI languages can not be set!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/DeviceAccount;->setLanguages([Ljava/lang/String;)V

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->joinArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v1

    const-string/jumbo v2, "registration"

    const-string/jumbo v3, "setUILanguages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{languages:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public tokenActivate(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->currentDeviceAccount:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "registration"

    const-string/jumbo v2, "tokenActivate"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_reg"

    const-string/jumbo v1, "Failed with token activate. Current device account is NOT set!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unselectDeviceAccount(Lcom/netflix/mediaclient/javabridge/ui/Callback;)V
    .locals 3

    const-string/jumbo v0, "registration"

    const-string/jumbo v1, "unselectDeviceAccount"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeRegistration;->invokeMethodWithCallback(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netflix/mediaclient/javabridge/ui/Callback;)V

    return-void
.end method
