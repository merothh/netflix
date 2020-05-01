.class public final Lo/Nv;
.super Lo/MessagePdu;
.source ""


# static fields
.field private static a:Ljava/lang/Long;

.field public static final d:Lo/Nv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lo/Nv;

    invoke-direct {v0}, Lo/Nv;-><init>()V

    sput-object v0, Lo/Nv;->d:Lo/Nv;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "MultiMonthCLHelper"

    .line 16
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 34
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 35
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    sget-object v1, Lo/Nv;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 36
    check-cast v0, Ljava/lang/Long;

    sput-object v0, Lo/Nv;->a:Ljava/lang/Long;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "offerId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 41
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    invoke-direct {v0, p1}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "trackingInfo"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 22
    sget-object v0, Lo/Nv;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    sget-object v1, Lo/Nv;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 25
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 26
    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    .line 27
    sget-object v2, Lcom/netflix/cl/model/AppView;->umsAlert:Lcom/netflix/cl/model/AppView;

    .line 28
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    .line 26
    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    .line 25
    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    sput-object p1, Lo/Nv;->a:Ljava/lang/Long;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    .line 45
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 46
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 47
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    .line 48
    sget-object v2, Lcom/netflix/cl/model/AppView;->umsAlertButton:Lcom/netflix/cl/model/AppView;

    .line 49
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    .line 47
    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 50
    new-instance p1, Lcom/netflix/cl/model/event/session/command/SubmitCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/SubmitCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x1

    .line 46
    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    .line 55
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 56
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 57
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    .line 58
    sget-object v2, Lcom/netflix/cl/model/AppView;->umsAlertButton:Lcom/netflix/cl/model/AppView;

    .line 59
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    .line 57
    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 60
    new-instance p1, Lcom/netflix/cl/model/event/session/command/CloseCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/CloseCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    .line 56
    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    return-void
.end method
