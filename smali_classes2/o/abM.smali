.class public final Lo/abM;
.super Lo/MessagePdu;
.source ""


# static fields
.field private static a:Ljava/lang/Long;

.field public static final b:Lo/abM;

.field private static c:Z

.field private static d:Ljava/lang/Long;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lo/abM;

    invoke-direct {v0}, Lo/abM;-><init>()V

    sput-object v0, Lo/abM;->b:Lo/abM;

    const/4 v0, 0x1

    .line 22
    sput-boolean v0, Lo/abM;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "SurveyCLHelper"

    .line 20
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final c(Lcom/netflix/model/survey/Survey;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 75
    invoke-virtual {p1}, Lcom/netflix/model/survey/Survey;->c()Lcom/netflix/model/survey/SurveyQuestion;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/survey/SurveyQuestion;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "surveyIdentifier"

    invoke-static {v0, p1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lo/akI;->a(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/util/Map;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    const-string v0, "CLv2Utils.createTracking\u2026vey.firstQuestion?.id()))"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final d(I)Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 79
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "surveyResponse"

    invoke-static {v0, p1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lo/akI;->a(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/util/Map;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    const-string v0, "CLv2Utils.createTracking\u2026lectedChoice.toString()))"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final e(Lcom/netflix/model/survey/Survey;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 71
    invoke-virtual {p1}, Lcom/netflix/model/survey/Survey;->c()Lcom/netflix/model/survey/SurveyQuestion;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/survey/SurveyQuestion;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "surveyInfo"

    invoke-static {v0, p1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lo/akI;->a(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/util/Map;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    const-string v0, "CLv2Utils.createTracking\u2026tQuestion?.surveyType()))"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 48
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 49
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->surveyQuestion:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance v2, Lcom/netflix/cl/model/event/session/command/SkipCommand;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/command/SkipCommand;-><init>()V

    check-cast v2, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    const/4 v0, 0x0

    .line 50
    sput-boolean v0, Lo/abM;->e:Z

    .line 51
    sput-boolean v3, Lo/abM;->c:Z

    return-void
.end method

.method public final a(Lcom/netflix/model/survey/Survey;)V
    .locals 4

    const-string v0, "survey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 29
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v2, Lcom/netflix/cl/model/AppView;->survey:Lcom/netflix/cl/model/AppView;

    invoke-direct {p0, p1}, Lo/abM;->e(Lcom/netflix/model/survey/Survey;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lo/abM;->d:Ljava/lang/Long;

    .line 30
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v2, Lcom/netflix/cl/model/AppView;->surveyQuestion:Lcom/netflix/cl/model/AppView;

    invoke-direct {p0, p1}, Lo/abM;->c(Lcom/netflix/model/survey/Survey;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lo/abM;->a:Ljava/lang/Long;

    .line 33
    sget-object v0, Lcom/netflix/cl/model/AppView;->surveyQuestion:Lcom/netflix/cl/model/AppView;

    .line 34
    invoke-direct {p0, p1}, Lo/abM;->c(Lcom/netflix/model/survey/Survey;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-static {v1, v0, p1, v2, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;Z)V

    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 41
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 42
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->surveyQuestion:Lcom/netflix/cl/model/AppView;

    invoke-direct {p0, p1}, Lo/abM;->d(I)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p1, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    const/4 p1, 0x0

    .line 43
    sput-boolean p1, Lo/abM;->c:Z

    .line 44
    sput-boolean v2, Lo/abM;->e:Z

    return-void
.end method

.method public final c()V
    .locals 2

    .line 55
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 57
    sget-boolean v0, Lo/abM;->e:Z

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    sget-object v1, Lo/abM;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 59
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    sget-object v1, Lo/abM;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    goto :goto_0

    .line 61
    :cond_0
    sget-boolean v0, Lo/abM;->c:Z

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    sget-object v1, Lo/abM;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 63
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    sget-object v1, Lo/abM;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 66
    check-cast v0, Ljava/lang/Long;

    sput-object v0, Lo/abM;->a:Ljava/lang/Long;

    .line 67
    sput-object v0, Lo/abM;->d:Ljava/lang/Long;

    return-void
.end method
