.class public Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiview/model/BaseUIViewSessionEndedEvent;
.source "CommandEndedEvent.java"


# static fields
.field private static final DEF_VALUE_CONFIDENCE:Ljava/lang/Integer;

.field private static final DEF_VALUE_IS_HOT_BOTTON:Ljava/lang/String; = "false"

.field public static final KEY_CONFIDENCE:Ljava/lang/String; = "confidence"

.field public static final KEY_INPUT_METHOD:Ljava/lang/String; = "inputMethod"

.field public static final KEY_INPUT_VALUE:Ljava/lang/String; = "inputValue"

.field public static final KEY_IS_HOT_BUTTON:Ljava/lang/String; = "isHotKey"

.field public static final KEY_MODEL:Ljava/lang/String; = "model"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final UIVIEW_SESSION_NAME:Ljava/lang/String; = "command"


# instance fields
.field private mCommandName:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

.field private mInputMethod:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

.field private mInputValue:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

.field private mModel:Lorg/json/JSONObject;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->DEF_VALUE_CONFIDENCE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    const-string/jumbo v0, "command"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiview/model/BaseUIViewSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 33
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->mCommandName:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 34
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->mUrl:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/uiview/model/BaseUIViewSessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->mCommandName:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    if-eqz v1, :cond_1

    .line 54
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->mCommandName:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    const-string/jumbo v1, "inputMethod"

    sget-object v2, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->url:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo v1, "inputValue"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    :goto_0
    const-string/jumbo v1, "isHotKey"

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string/jumbo v1, "confidence"

    sget-object v2, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->DEF_VALUE_CONFIDENCE:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->mModel:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 75
    const-string/jumbo v1, "model"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->mModel:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    :cond_1
    return-object v0

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->mInputMethod:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    if-nez v1, :cond_3

    .line 61
    sget-object v1, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->gesture:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->mInputMethod:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    .line 63
    :cond_3
    const-string/jumbo v1, "inputMethod"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->mInputMethod:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->mInputValue:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    if-nez v1, :cond_4

    .line 66
    sget-object v1, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;->touch:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->mInputValue:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    .line 68
    :cond_4
    const-string/jumbo v1, "inputValue"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->mInputValue:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public setInputMethod(Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->mInputMethod:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    .line 83
    return-void
.end method

.method public setInputValue(Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->mInputValue:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    .line 87
    return-void
.end method

.method public setModel(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent;->mModel:Lorg/json/JSONObject;

    .line 39
    return-void
.end method
