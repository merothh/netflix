.class public final Lo/aau;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private c:Ljava/lang/Long;

.field private e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b()V
    .locals 2

    .line 30
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-string v1, "SearchAutofillSuggestionResults"

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/String;)Z

    return-void
.end method

.method private final e(Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 2

    .line 26
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/SearchAutofillSuggestionResults;

    invoke-direct {v1, p1}, Lcom/netflix/cl/model/context/SearchAutofillSuggestionResults;-><init>(Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/context/CLContext;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 87
    sget-object p2, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 88
    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    .line 89
    sget-object v1, Lcom/netflix/cl/model/AppView;->searchAutofillSuggestionItem:Lcom/netflix/cl/model/AppView;

    .line 90
    iget-object v2, p0, Lo/aau;->e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Ljava/lang/String;I)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 88
    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 92
    new-instance p1, Lcom/netflix/cl/model/event/session/command/SubmitCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/SubmitCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 p3, 0x0

    .line 87
    invoke-virtual {p2, v0, p1, p3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    return-void
.end method

.method public final b(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Ljava/lang/String;)V
    .locals 3

    .line 34
    iput-object p1, p0, Lo/aau;->e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 36
    iget-object v0, p0, Lo/aau;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    iput-object p2, p0, Lo/aau;->a:Ljava/lang/String;

    .line 41
    :cond_0
    iget-object v0, p0, Lo/aau;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/aau;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 42
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/aau;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 43
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/aau;->c:Ljava/lang/Long;

    .line 44
    invoke-direct {p0}, Lo/aau;->b()V

    .line 47
    :cond_1
    iget-object v0, p0, Lo/aau;->c:Ljava/lang/Long;

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 49
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/aau;->e(Lcom/netflix/cl/model/TrackingInfo;)V

    .line 51
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 52
    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    .line 53
    sget-object v2, Lcom/netflix/cl/model/AppView;->searchAutofillSuggestionResults:Lcom/netflix/cl/model/AppView;

    .line 54
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    .line 52
    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    .line 51
    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/aau;->c:Ljava/lang/Long;

    .line 58
    :cond_2
    iput-object p2, p0, Lo/aau;->a:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 4

    .line 63
    iget-object v0, p0, Lo/aau;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/aau;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 65
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/aau;->c:Ljava/lang/Long;

    .line 68
    :cond_0
    iget-object v0, p0, Lo/aau;->e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/aau;->e(Lcom/netflix/cl/model/TrackingInfo;)V

    .line 71
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 72
    new-instance v2, Lcom/netflix/cl/model/event/session/Presentation;

    .line 73
    sget-object v3, Lcom/netflix/cl/model/AppView;->searchAutofillSuggestionResults:Lcom/netflix/cl/model/AppView;

    .line 74
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    .line 72
    invoke-direct {v2, v3, v0}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    .line 71
    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/aau;->c:Ljava/lang/Long;

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2

    .line 81
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lo/aau;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 82
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/aau;->c:Ljava/lang/Long;

    .line 83
    invoke-direct {p0}, Lo/aau;->b()V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 98
    sget-object p2, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 99
    new-instance v0, Lcom/netflix/cl/model/event/session/Focus;

    .line 100
    sget-object v1, Lcom/netflix/cl/model/AppView;->searchAutofillButton:Lcom/netflix/cl/model/AppView;

    .line 101
    iget-object v2, p0, Lo/aau;->e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Ljava/lang/String;I)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 99
    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 103
    new-instance p1, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 p3, 0x0

    .line 98
    invoke-virtual {p2, v0, p1, p3}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    return-void
.end method
