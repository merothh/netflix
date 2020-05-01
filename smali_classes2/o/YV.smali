.class public final Lo/YV;
.super Lo/MessagePdu;
.source ""


# static fields
.field public static final b:Lo/YV;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lo/YV;

    invoke-direct {v0}, Lo/YV;-><init>()V

    sput-object v0, Lo/YV;->b:Lo/YV;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "ProfileLogging"

    .line 23
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/Integer;)Lcom/netflix/cl/model/MaturityLevel;
    .locals 2

    if-nez p1, :cond_0

    .line 138
    sget-object p1, Lcom/netflix/cl/model/MaturityLevel;->adults:Lcom/netflix/cl/model/MaturityLevel;

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    sget-object p1, Lcom/netflix/cl/model/MaturityLevel;->littleKids:Lcom/netflix/cl/model/MaturityLevel;

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x46

    if-gt v0, v1, :cond_2

    sget-object p1, Lcom/netflix/cl/model/MaturityLevel;->olderKids:Lcom/netflix/cl/model/MaturityLevel;

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x60

    if-gt p1, v0, :cond_3

    sget-object p1, Lcom/netflix/cl/model/MaturityLevel;->teens:Lcom/netflix/cl/model/MaturityLevel;

    goto :goto_0

    .line 144
    :cond_3
    sget-object p1, Lcom/netflix/cl/model/MaturityLevel;->adults:Lcom/netflix/cl/model/MaturityLevel;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/android/app/Status;ZLcom/netflix/cl/model/ProfileSettings;Ljava/lang/String;)V
    .locals 1

    const-string v0, "res"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileSettings"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    .line 79
    new-instance p2, Lcom/netflix/cl/model/event/session/action/DeleteProfile;

    invoke-direct {p2, p4}, Lcom/netflix/cl/model/event/session/action/DeleteProfile;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/netflix/cl/model/event/session/action/Action;

    invoke-virtual {p0, p2, p1}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Input profile was null on delete action. This should NOT happen!"

    .line 82
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    .line 85
    new-instance p2, Lcom/netflix/cl/model/event/session/action/AddProfile;

    invoke-direct {p2, p3}, Lcom/netflix/cl/model/event/session/action/AddProfile;-><init>(Lcom/netflix/cl/model/ProfileSettings;)V

    check-cast p2, Lcom/netflix/cl/model/event/session/action/Action;

    invoke-virtual {p0, p2, p1}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 87
    :cond_2
    new-instance p2, Lcom/netflix/cl/model/event/session/action/EditProfile;

    invoke-direct {p2, p4, p3}, Lcom/netflix/cl/model/event/session/action/EditProfile;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/ProfileSettings;)V

    check-cast p2, Lcom/netflix/cl/model/event/session/action/Action;

    invoke-virtual {p0, p2, p1}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_3
    if-nez p4, :cond_4

    .line 91
    new-instance p2, Lcom/netflix/cl/model/event/session/action/AddProfile;

    invoke-direct {p2, p3}, Lcom/netflix/cl/model/event/session/action/AddProfile;-><init>(Lcom/netflix/cl/model/ProfileSettings;)V

    check-cast p2, Lcom/netflix/cl/model/event/session/action/Action;

    invoke-virtual {p0, p2, p1}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 92
    new-instance p2, Lcom/netflix/cl/model/event/session/action/DeleteProfile;

    invoke-direct {p2, p4}, Lcom/netflix/cl/model/event/session/action/DeleteProfile;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/netflix/cl/model/event/session/action/Action;

    invoke-virtual {p0, p2, p1}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 93
    :cond_5
    new-instance p2, Lcom/netflix/cl/model/event/session/action/EditProfile;

    invoke-direct {p2, p4, p3}, Lcom/netflix/cl/model/event/session/action/EditProfile;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/ProfileSettings;)V

    check-cast p2, Lcom/netflix/cl/model/event/session/action/Action;

    invoke-virtual {p0, p2, p1}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public final d(Lo/Am;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;ZILo/BC;)Lcom/netflix/cl/model/ProfileSettings;
    .locals 7

    .line 111
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p0, p4}, Lo/YV;->a(Ljava/lang/Integer;)Lcom/netflix/cl/model/MaturityLevel;

    move-result-object v3

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    .line 114
    invoke-interface {p5}, Lo/BC;->getLanguagesInCsv()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v4, p1

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_4

    .line 118
    invoke-virtual {p1}, Lo/Am;->X()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    .line 116
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lo/BC;

    if-eqz v4, :cond_2

    .line 117
    invoke-interface {v4}, Lo/BC;->isPrimaryProfile()Z

    move-result v4

    if-ne v4, p4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    goto :goto_2

    :cond_3
    move-object v2, v1

    .line 116
    :goto_2
    check-cast v2, Lo/BC;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lo/BC;->getLanguagesInCsv()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object v4, v1

    :goto_3
    if-eqz p5, :cond_5

    .line 122
    invoke-interface {p5}, Lo/BC;->isAutoPlayEnabled()Z

    move-result p1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_4
    if-eqz p5, :cond_6

    .line 128
    invoke-interface {p5}, Lo/BC;->disableVideoMerchAutoPlay()Z

    move-result v0

    .line 133
    :cond_6
    new-instance p5, Lcom/netflix/cl/model/ProfileSettings;

    xor-int/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getName()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    goto :goto_5

    :cond_7
    move-object v2, v1

    :goto_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p5

    move-object v1, p4

    invoke-direct/range {v0 .. v6}, Lcom/netflix/cl/model/ProfileSettings;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Lcom/netflix/cl/model/MaturityLevel;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object p5
.end method

.method public final d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const-string v0, "action"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    move-object v1, p1

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    if-nez p2, :cond_0

    .line 61
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/action/Action;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    goto :goto_0

    .line 63
    :cond_0
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {p1}, Lcom/netflix/cl/model/event/session/action/Action;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/netflix/cl/model/ProfileSettings;)V
    .locals 2

    const-string v0, "profileSettings"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 35
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/action/AddProfile;

    invoke-direct {v0, p2}, Lcom/netflix/cl/model/event/session/action/AddProfile;-><init>(Lcom/netflix/cl/model/ProfileSettings;)V

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 37
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/action/EditProfile;

    invoke-direct {v1, p1, p2}, Lcom/netflix/cl/model/event/session/action/EditProfile;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/ProfileSettings;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 40
    :goto_0
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "profileId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/action/DeleteProfile;

    invoke-direct {v1, p1}, Lcom/netflix/cl/model/event/session/action/DeleteProfile;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 100
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-string v0, "DeleteProfile"

    invoke-virtual {p1, v0}, Lcom/netflix/cl/ExtLogger;->cancelExclusiveAction(Ljava/lang/String;)Z

    return-void
.end method

.method public final e(Ljava/lang/String;Lcom/netflix/cl/model/ProfileSettings;)V
    .locals 1

    const-string v0, "profileSettings"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 47
    new-instance p1, Lcom/netflix/cl/model/event/session/action/AddProfile;

    invoke-direct {p1, p2}, Lcom/netflix/cl/model/event/session/action/AddProfile;-><init>(Lcom/netflix/cl/model/ProfileSettings;)V

    check-cast p1, Lcom/netflix/cl/model/event/session/action/Action;

    .line 48
    sget-object p2, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p2, Lcom/netflix/mediaclient/android/app/Status;

    .line 46
    invoke-virtual {p0, p1, p2}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Lcom/netflix/cl/model/event/session/action/EditProfile;

    invoke-direct {v0, p1, p2}, Lcom/netflix/cl/model/event/session/action/EditProfile;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/ProfileSettings;)V

    check-cast v0, Lcom/netflix/cl/model/event/session/action/Action;

    .line 53
    sget-object p1, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    .line 51
    invoke-virtual {p0, v0, p1}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method
