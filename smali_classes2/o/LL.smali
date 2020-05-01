.class public final Lo/LL;
.super Lo/MessagePdu;
.source ""


# static fields
.field private static b:Ljava/lang/Long;

.field public static final d:Lo/LL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lo/LL;

    invoke-direct {v0}, Lo/LL;-><init>()V

    sput-object v0, Lo/LL;->d:Lo/LL;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "QuickDrawCLHelper"

    .line 17
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 48
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 49
    sget-object v0, Lo/LL;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    sget-object v1, Lo/LL;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 52
    check-cast v0, Ljava/lang/Long;

    sput-object v0, Lo/LL;->b:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public final a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 4

    .line 91
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 92
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 93
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->playButton:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 94
    new-instance p1, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    invoke-direct {p1, v3}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x1

    .line 92
    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 62
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 63
    new-instance v0, Lcom/netflix/cl/model/event/session/command/CancelCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/CancelCommand;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    return-void
.end method

.method public final b(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 3

    .line 83
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 84
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 85
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->movieDetailsOverlay:Lcom/netflix/cl/model/AppView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 86
    new-instance p1, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x1

    .line 84
    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 57
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 58
    new-instance v0, Lcom/netflix/cl/model/event/session/command/BackCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/BackCommand;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    return-void
.end method

.method public final c(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 5

    .line 24
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 25
    sget-object v0, Lo/LL;->b:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    sget-object v2, Lo/LL;->b:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 27
    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    sput-object v0, Lo/LL;->b:Ljava/lang/Long;

    .line 30
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 31
    new-instance v2, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v3, Lcom/netflix/cl/model/AppView;->movieDetailsOverlay:Lcom/netflix/cl/model/AppView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    invoke-direct {v2, v3, v4}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    .line 30
    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lo/LL;->b:Ljava/lang/Long;

    if-nez p1, :cond_2

    .line 35
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "(trackingInfoHolder=null) no presented event for quick draw dp"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 41
    sget-object v2, Lcom/netflix/cl/model/AppView;->movieDetailsOverlay:Lcom/netflix/cl/model/AppView;

    .line 42
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    .line 39
    invoke-static {v0, v2, p1, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;)V

    :goto_1
    return-void
.end method

.method public final d(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 3

    .line 67
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 68
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 69
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->cachedEpisodes:Lcom/netflix/cl/model/AppView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 70
    new-instance p1, Lcom/netflix/cl/model/event/session/command/AddCachedVideoCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/AddCachedVideoCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x1

    .line 68
    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    return-void
.end method

.method public final e(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 3

    .line 75
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 76
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 77
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->moreInfoButton:Lcom/netflix/cl/model/AppView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 78
    new-instance p1, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x1

    .line 76
    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    return-void
.end method
