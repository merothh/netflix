.class public final Lo/Yi;
.super Lo/MessagePdu;
.source ""


# static fields
.field private static a:Lcom/netflix/cl/model/event/session/action/StartPlay;

.field private static c:Lcom/netflix/cl/model/event/session/action/Play;

.field private static d:Ljava/lang/Long;

.field public static final e:Lo/Yi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lo/Yi;

    invoke-direct {v0}, Lo/Yi;-><init>()V

    sput-object v0, Lo/Yi;->e:Lo/Yi;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "PreviewsCLHelper"

    .line 50
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final c(ILcom/netflix/cl/model/GestureInputKind;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x5

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    .line 177
    sget-object v0, Lcom/netflix/cl/model/GestureInputDirection;->down:Lcom/netflix/cl/model/GestureInputDirection;

    goto :goto_0

    .line 176
    :cond_0
    sget-object v0, Lcom/netflix/cl/model/GestureInputDirection;->right:Lcom/netflix/cl/model/GestureInputDirection;

    goto :goto_0

    .line 175
    :cond_1
    sget-object v0, Lcom/netflix/cl/model/GestureInputDirection;->left:Lcom/netflix/cl/model/GestureInputDirection;

    .line 180
    :goto_0
    sget-object v2, Lcom/netflix/cl/model/GestureInputKind;->tap:Lcom/netflix/cl/model/GestureInputKind;

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne p2, v2, :cond_3

    .line 181
    new-instance v0, Lcom/netflix/cl/model/context/GestureInput;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, p2, v2}, Lcom/netflix/cl/model/context/GestureInput;-><init>(Lcom/netflix/cl/model/GestureInputKind;Ljava/lang/Float;)V

    .line 182
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast v0, Lcom/netflix/cl/model/context/CLContext;

    invoke-virtual {p2, v0}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v2

    if-ne p1, v1, :cond_2

    .line 185
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance p2, Lcom/netflix/cl/model/event/session/command/ForwardCommand;

    invoke-direct {p2}, Lcom/netflix/cl/model/event/session/command/ForwardCommand;-><init>()V

    check-cast p2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 186
    invoke-direct {p0}, Lo/Yi;->e()V

    .line 187
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    goto :goto_1

    .line 189
    :cond_2
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance p2, Lcom/netflix/cl/model/event/session/command/BackCommand;

    invoke-direct {p2}, Lcom/netflix/cl/model/event/session/command/BackCommand;-><init>()V

    check-cast p2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 190
    invoke-direct {p0}, Lo/Yi;->e()V

    .line 191
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 193
    :goto_1
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    goto :goto_3

    .line 195
    :cond_3
    sget-object v2, Lcom/netflix/cl/model/GestureInputKind;->swipe:Lcom/netflix/cl/model/GestureInputKind;

    if-ne p2, v2, :cond_5

    .line 197
    new-instance v2, Lcom/netflix/cl/model/context/DirectedGestureInput;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v2, v0, p2, v3}, Lcom/netflix/cl/model/context/DirectedGestureInput;-><init>(Lcom/netflix/cl/model/GestureInputDirection;Lcom/netflix/cl/model/GestureInputKind;Ljava/lang/Float;)V

    .line 198
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast v2, Lcom/netflix/cl/model/context/CLContext;

    invoke-virtual {p2, v2}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v2

    if-ne p1, v1, :cond_4

    .line 201
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance p2, Lcom/netflix/cl/model/event/session/command/BackCommand;

    invoke-direct {p2}, Lcom/netflix/cl/model/event/session/command/BackCommand;-><init>()V

    check-cast p2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 202
    invoke-direct {p0}, Lo/Yi;->e()V

    .line 203
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    goto :goto_2

    .line 205
    :cond_4
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance p2, Lcom/netflix/cl/model/event/session/command/ForwardCommand;

    invoke-direct {p2}, Lcom/netflix/cl/model/event/session/command/ForwardCommand;-><init>()V

    check-cast p2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 206
    invoke-direct {p0}, Lo/Yi;->e()V

    .line 207
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p2, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 209
    :goto_2
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    :cond_5
    :goto_3
    return-void
.end method

.method static synthetic d(Lo/Yi;Lcom/netflix/cl/model/event/session/command/Command;Lcom/netflix/cl/model/AppView;Lo/Yn;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 235
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lo/Yi;->e(Lcom/netflix/cl/model/event/session/command/Command;Lcom/netflix/cl/model/AppView;Lo/Yn;Z)V

    return-void
.end method

.method private final e()V
    .locals 5

    .line 149
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    sget-object v1, Lo/Yi;->c:Lcom/netflix/cl/model/event/session/action/Play;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/cl/model/event/session/action/Play;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 150
    check-cast v2, Lcom/netflix/cl/model/event/session/action/Play;

    sput-object v2, Lo/Yi;->c:Lcom/netflix/cl/model/event/session/action/Play;

    return-void
.end method

.method private final e(Lcom/netflix/cl/model/event/session/command/Command;Lcom/netflix/cl/model/AppView;Lo/Yn;Z)V
    .locals 5

    .line 236
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    invoke-virtual {p3}, Lo/Yn;->e()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p3

    invoke-direct {v1, p2, p3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p2

    .line 237
    new-instance p3, Lcom/netflix/cl/model/context/GestureInput;

    sget-object v0, Lcom/netflix/cl/model/GestureInputKind;->tap:Lcom/netflix/cl/model/GestureInputKind;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lcom/netflix/cl/model/context/GestureInput;-><init>(Lcom/netflix/cl/model/GestureInputKind;Ljava/lang/Float;)V

    .line 238
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast p3, Lcom/netflix/cl/model/context/CLContext;

    invoke-virtual {v0, p3}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v0

    .line 239
    sget-object p3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast p1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p3, p1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 241
    move-object p3, p0

    check-cast p3, Lo/MessagePdu;

    .line 242
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p3

    const-string p4, "NetflixApplication.getInstance()"

    invoke-static {p3, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/netflix/mediaclient/NetflixApplication;->M()Lo/afH;

    move-result-object p3

    invoke-virtual {p3}, Lo/afH;->b()V

    .line 245
    :cond_0
    sget-object p3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    sget-object p4, Lo/Yi;->c:Lcom/netflix/cl/model/event/session/action/Play;

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/netflix/cl/model/event/session/action/Play;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    goto :goto_0

    :cond_1
    move-object p4, v2

    :goto_0
    invoke-virtual {p3, p4}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    .line 246
    sget-object p3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p3, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 247
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    .line 248
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 249
    check-cast v2, Lcom/netflix/cl/model/event/session/action/Play;

    sput-object v2, Lo/Yi;->c:Lcom/netflix/cl/model/event/session/action/Play;

    return-void
.end method

.method private final h(Lo/Yn;)V
    .locals 3

    .line 293
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 294
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->previews:Lcom/netflix/cl/model/AppView;

    invoke-virtual {p1}, Lo/Yn;->e()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p1, Lcom/netflix/cl/model/event/session/command/ViewPreviewsCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/ViewPreviewsCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    return-void
.end method

.method private final i(Lo/Yn;)V
    .locals 3

    .line 285
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 286
    new-instance v0, Lcom/netflix/cl/model/context/ios/GrayedPreview;

    invoke-direct {v0}, Lcom/netflix/cl/model/context/ios/GrayedPreview;-><init>()V

    .line 287
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    move-object v2, v0

    check-cast v2, Lcom/netflix/cl/model/context/CLContext;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 288
    invoke-direct {p0, p1}, Lo/Yi;->h(Lo/Yn;)V

    .line 289
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0}, Lcom/netflix/cl/model/context/ios/GrayedPreview;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 90
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 91
    sget-object v0, Lo/Yi;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "unended slideshowPresentationSessionId"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    sget-object v1, Lo/Yi;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 95
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v2, Lcom/netflix/cl/model/AppView;->previews:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lo/Yi;->e(Lo/Yn;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lo/Yi;->d:Ljava/lang/Long;

    return-void
.end method

.method public final a(Lo/Yn;)V
    .locals 8

    const-string v0, "feedItemModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 262
    new-instance v0, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    move-object v2, v0

    check-cast v2, Lcom/netflix/cl/model/event/session/command/Command;

    sget-object v3, Lcom/netflix/cl/model/AppView;->previews:Lcom/netflix/cl/model/AppView;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lo/Yi;->d(Lo/Yi;Lcom/netflix/cl/model/event/session/command/Command;Lcom/netflix/cl/model/AppView;Lo/Yn;ZILjava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 141
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 142
    sget-object v0, Lo/Yi;->a:Lcom/netflix/cl/model/event/session/action/StartPlay;

    if-eqz v0, :cond_0

    .line 143
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/SessionCanceled;

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    invoke-direct {v2, v0}, Lcom/netflix/cl/model/event/session/SessionCanceled;-><init>(Lcom/netflix/cl/model/event/session/Session;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    :cond_0
    const/4 v0, 0x0

    .line 145
    check-cast v0, Lcom/netflix/cl/model/event/session/action/StartPlay;

    sput-object v0, Lo/Yi;->a:Lcom/netflix/cl/model/event/session/action/StartPlay;

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 214
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 215
    sget-object v0, Lcom/netflix/cl/model/GestureInputKind;->swipe:Lcom/netflix/cl/model/GestureInputKind;

    invoke-direct {p0, p1, v0}, Lo/Yi;->c(ILcom/netflix/cl/model/GestureInputKind;)V

    return-void
.end method

.method public final b(Lo/Yn;)V
    .locals 4

    const-string v0, "feedItemModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 108
    invoke-virtual {p1}, Lo/Yn;->e()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 109
    sget-object v1, Lcom/netflix/cl/model/AppView;->previews:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;)V

    .line 110
    sget-object v0, Lo/Yi;->a:Lcom/netflix/cl/model/event/session/action/StartPlay;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/SessionCanceled;

    sget-object v3, Lo/Yi;->a:Lcom/netflix/cl/model/event/session/action/StartPlay;

    check-cast v3, Lcom/netflix/cl/model/event/session/Session;

    invoke-direct {v1, v3}, Lcom/netflix/cl/model/event/session/SessionCanceled;-><init>(Lcom/netflix/cl/model/event/session/Session;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 113
    check-cast v2, Lcom/netflix/cl/model/event/session/action/StartPlay;

    sput-object v2, Lo/Yi;->a:Lcom/netflix/cl/model/event/session/action/StartPlay;

    .line 115
    :cond_0
    new-instance v0, Lcom/netflix/cl/model/event/session/action/StartPlay;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/netflix/cl/model/event/session/action/StartPlay;-><init>(Ljava/lang/Long;Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 116
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    move-object v1, v0

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p1, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 115
    sput-object v0, Lo/Yi;->a:Lcom/netflix/cl/model/event/session/action/StartPlay;

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    .line 154
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 155
    sget-object v0, Lo/Yi;->c:Lcom/netflix/cl/model/event/session/action/Play;

    if-eqz v0, :cond_0

    .line 156
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/SessionEnded;

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    invoke-direct {v2, v0}, Lcom/netflix/cl/model/event/session/SessionEnded;-><init>(Lcom/netflix/cl/model/event/session/Session;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    :cond_0
    const/4 v0, 0x0

    .line 158
    check-cast v0, Lcom/netflix/cl/model/event/session/action/Play;

    sput-object v0, Lo/Yi;->c:Lcom/netflix/cl/model/event/session/action/Play;

    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 219
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 220
    sget-object v0, Lcom/netflix/cl/model/GestureInputKind;->tap:Lcom/netflix/cl/model/GestureInputKind;

    invoke-direct {p0, p1, v0}, Lo/Yi;->c(ILcom/netflix/cl/model/GestureInputKind;)V

    return-void
.end method

.method public final c(Lo/Yn;)V
    .locals 3

    const-string v0, "feedItemModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 255
    new-instance v0, Lcom/netflix/cl/model/event/session/command/CloseCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/CloseCommand;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    sget-object v1, Lcom/netflix/cl/model/AppView;->closeButton:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lo/Yi;->e(Lcom/netflix/cl/model/event/session/command/Command;Lcom/netflix/cl/model/AppView;Lo/Yn;Z)V

    return-void
.end method

.method public final c(Lo/Yn;Z)V
    .locals 1

    const-string v0, "feedItemModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 278
    invoke-direct {p0, p1}, Lo/Yi;->i(Lo/Yn;)V

    goto :goto_0

    .line 280
    :cond_0
    invoke-direct {p0, p1}, Lo/Yi;->h(Lo/Yn;)V

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lo/Yi;->b()V

    .line 100
    invoke-direct {p0}, Lo/Yi;->e()V

    .line 101
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 102
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    sget-object v1, Lo/Yi;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 103
    check-cast v0, Ljava/lang/Long;

    sput-object v0, Lo/Yi;->d:Ljava/lang/Long;

    return-void
.end method

.method public final d(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 5

    const-string v0, "error"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 163
    sget-object v0, Lo/Yi;->a:Lcom/netflix/cl/model/event/session/action/StartPlay;

    if-eqz v0, :cond_0

    .line 164
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/action/ActionFailed;

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    new-instance v3, Lcom/netflix/cl/model/Error;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/netflix/cl/model/event/session/action/ActionFailed;-><init>(Lcom/netflix/cl/model/event/session/Session;Lcom/netflix/cl/model/Error;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 166
    :cond_0
    sget-object v0, Lo/Yi;->c:Lcom/netflix/cl/model/event/session/action/Play;

    if-eqz v0, :cond_1

    .line 167
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/action/ActionFailed;

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    new-instance v3, Lcom/netflix/cl/model/Error;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/netflix/cl/model/event/session/action/ActionFailed;-><init>(Lcom/netflix/cl/model/event/session/Session;Lcom/netflix/cl/model/Error;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    :cond_1
    const/4 p1, 0x0

    .line 169
    move-object v0, p1

    check-cast v0, Lcom/netflix/cl/model/event/session/action/StartPlay;

    sput-object v0, Lo/Yi;->a:Lcom/netflix/cl/model/event/session/action/StartPlay;

    .line 170
    check-cast p1, Lcom/netflix/cl/model/event/session/action/Play;

    sput-object p1, Lo/Yi;->c:Lcom/netflix/cl/model/event/session/action/Play;

    return-void
.end method

.method public final d(Lo/Yn;)V
    .locals 3

    const-string v0, "feedItemModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 122
    invoke-virtual {p1}, Lo/Yn;->e()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 124
    sget-object v1, Lo/Yi;->a:Lcom/netflix/cl/model/event/session/action/StartPlay;

    if-nez v1, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Lo/Yi;->b(Lo/Yn;)V

    .line 131
    :cond_0
    new-instance p1, Lcom/netflix/cl/model/event/session/action/Play;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/netflix/cl/model/event/session/action/Play;-><init>(Ljava/lang/Long;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 132
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    move-object v1, p1

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 131
    sput-object p1, Lo/Yi;->c:Lcom/netflix/cl/model/event/session/action/Play;

    .line 134
    sget-object p1, Lo/Yi;->a:Lcom/netflix/cl/model/event/session/action/StartPlay;

    if-eqz p1, :cond_1

    .line 135
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/SessionEnded;

    check-cast p1, Lcom/netflix/cl/model/event/session/Session;

    invoke-direct {v1, p1}, Lcom/netflix/cl/model/event/session/SessionEnded;-><init>(Lcom/netflix/cl/model/event/session/Session;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    :cond_1
    const/4 p1, 0x0

    .line 137
    check-cast p1, Lcom/netflix/cl/model/event/session/action/StartPlay;

    sput-object p1, Lo/Yi;->a:Lcom/netflix/cl/model/event/session/action/StartPlay;

    :cond_2
    return-void
.end method

.method public final e(Lo/Yn;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 1

    .line 65
    new-instance v0, Lo/Yi$Activity;

    invoke-direct {v0, p1}, Lo/Yi$Activity;-><init>(Lo/Yn;)V

    check-cast v0, Lcom/netflix/cl/model/TrackingInfo;

    return-object v0
.end method

.method public final e(I)V
    .locals 4

    .line 224
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 226
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/GestureInput;

    sget-object v2, Lcom/netflix/cl/model/GestureInputKind;->tap:Lcom/netflix/cl/model/GestureInputKind;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/context/GestureInput;-><init>(Lcom/netflix/cl/model/GestureInputKind;Ljava/lang/Float;)V

    check-cast v1, Lcom/netflix/cl/model/context/CLContext;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v0

    if-nez p1, :cond_0

    .line 228
    new-instance p1, Lcom/netflix/cl/model/event/session/command/PauseCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/PauseCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    goto :goto_0

    .line 230
    :cond_0
    new-instance p1, Lcom/netflix/cl/model/event/session/command/UnpauseCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/UnpauseCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 232
    :goto_0
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    return-void
.end method

.method public final f(Lo/Yn;)V
    .locals 3

    const-string v0, "feedItemModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 273
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    sget-object v1, Lcom/netflix/cl/model/AppView;->moreInfoButton:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lo/Yi;->e(Lcom/netflix/cl/model/event/session/command/Command;Lcom/netflix/cl/model/AppView;Lo/Yn;Z)V

    return-void
.end method

.method public final g(Lo/Yn;)V
    .locals 3

    const-string v0, "feedItemModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 268
    new-instance v0, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    check-cast v0, Lcom/netflix/cl/model/event/session/command/Command;

    sget-object v1, Lcom/netflix/cl/model/AppView;->playButton:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lo/Yi;->e(Lcom/netflix/cl/model/event/session/command/Command;Lcom/netflix/cl/model/AppView;Lo/Yn;Z)V

    return-void
.end method
