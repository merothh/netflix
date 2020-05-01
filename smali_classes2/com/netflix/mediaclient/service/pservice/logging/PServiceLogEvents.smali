.class public final Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ENABLE_VERBOSE_LOGGING:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "nf_preapp_logevents"


# instance fields
.field private widgetLogEvents:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "widgetLogEvents"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->ENABLE_VERBOSE_LOGGING:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->widgetLogEvents:Ljava/util/List;

    return-void
.end method

.method public static createFromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;
    .locals 2

    .line 42
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->newInstance()Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;

    move-result-object p0

    return-object p0

    .line 46
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->ENABLE_VERBOSE_LOGGING:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    const-class v1, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;

    return-object p0
.end method

.method public static newInstance()Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;
    .locals 1

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addWidgetEvent(Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->widgetLogEvents:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "nf_preapp_logevents"

    const-string v1, "widgetLogEvents is null"

    .line 56
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->widgetLogEvents:Ljava/util/List;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->widgetLogEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getWidgetEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->widgetLogEvents:Ljava/util/List;

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 2

    .line 26
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 27
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogEvents;->ENABLE_VERBOSE_LOGGING:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    return-object v0
.end method
