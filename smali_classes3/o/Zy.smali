.class public Lo/Zy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Zy$Activity;,
        Lo/Zy$ActionBar;,
        Lo/Zy$TaskDescription;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 2

    .line 364
    sget-object v0, Lcom/netflix/cl/model/AppView;->boxArt:Lcom/netflix/cl/model/AppView;

    .line 366
    sget-object v1, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    if-ne p0, v1, :cond_0

    .line 367
    sget-object v0, Lcom/netflix/cl/model/AppView;->suggestionItem:Lcom/netflix/cl/model/AppView;

    :cond_0
    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 370
    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    invoke-static {p0, v0, p1, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;)V

    return-void
.end method

.method public static b(Lcom/netflix/cl/model/AppView;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    new-instance v0, Lo/Zy$Activity;

    invoke-direct {v0, p1}, Lo/Zy$Activity;-><init>(Ljava/lang/String;)V

    .line 248
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    invoke-direct {v1, p0, v0}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {p1, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 230
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/SearchPreQueryResults;

    new-instance v2, Lo/Zy$ActionBar;

    invoke-direct {v2, p0, p1}, Lo/Zy$ActionBar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/SearchPreQueryResults;-><init>(Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    return-void
.end method

.method public static b(Ljava/lang/String;Z)V
    .locals 1

    .line 50
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    invoke-direct {v0, p0}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p0

    .line 51
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, p0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 53
    sget-object p0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-string p1, "VoiceInput"

    invoke-virtual {p0, p1}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/String;)Z

    return-void
.end method

.method public static c()V
    .locals 2

    .line 42
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/command/SearchCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/SearchCommand;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    :cond_0
    return-void
.end method

.method public static d(Lcom/netflix/cl/model/AppView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 7

    .line 158
    sget-object v0, Lo/Zy$4;->d:[I

    invoke-virtual {p0}, Lcom/netflix/cl/model/AppView;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 168
    new-instance p0, Lcom/netflix/cl/model/context/SearchTitleResults;

    new-instance v6, Lo/Zy$TaskDescription;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lo/Zy$TaskDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v6}, Lcom/netflix/cl/model/context/SearchTitleResults;-><init>(Lcom/netflix/cl/model/TrackingInfo;)V

    goto :goto_0

    .line 164
    :cond_0
    new-instance p0, Lcom/netflix/cl/model/context/SearchSuggestionTitleResults;

    new-instance v6, Lo/Zy$TaskDescription;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lo/Zy$TaskDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v6}, Lcom/netflix/cl/model/context/SearchSuggestionTitleResults;-><init>(Lcom/netflix/cl/model/TrackingInfo;)V

    goto :goto_0

    .line 160
    :cond_1
    new-instance p0, Lcom/netflix/cl/model/context/SearchSuggestionResults;

    new-instance v6, Lo/Zy$TaskDescription;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lo/Zy$TaskDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v6}, Lcom/netflix/cl/model/context/SearchSuggestionResults;-><init>(Lcom/netflix/cl/model/TrackingInfo;)V

    .line 172
    :goto_0
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, p0}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    .line 234
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/SearchPreQueryResults_19052;

    new-instance v2, Lo/Zy$ActionBar;

    invoke-direct {v2, p0, p1}, Lo/Zy$ActionBar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/context/SearchPreQueryResults_19052;-><init>(Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static d(Lcom/netflix/cl/model/AppView;)V
    .locals 3

    .line 176
    sget-object v0, Lo/Zy$4;->d:[I

    invoke-virtual {p0}, Lcom/netflix/cl/model/AppView;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 186
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid AppView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_0
    sget-object p0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v0, Lcom/netflix/cl/model/context/SearchTitleResults;

    invoke-virtual {p0, v0}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    goto :goto_0

    .line 178
    :cond_1
    sget-object p0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v0, Lcom/netflix/cl/model/context/SearchSuggestionResults;

    invoke-virtual {p0, v0}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    :goto_0
    return-void
.end method

.method public static e(Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Ljava/lang/Long;
    .locals 2

    .line 252
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->c()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    .line 253
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    invoke-direct {v1, p0, p1}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static e()V
    .locals 2

    .line 238
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v1, Lcom/netflix/cl/model/context/SearchPreQueryResults;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    return-void
.end method
