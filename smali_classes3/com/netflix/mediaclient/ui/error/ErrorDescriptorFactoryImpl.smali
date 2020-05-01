.class public final enum Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/hT;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;",
        ">;",
        "Lo/hT;"
    }
.end annotation


# static fields
.field private static final synthetic c:[Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;

.field public static final enum d:Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;->d:Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;

    .line 32
    sget-object v2, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;->d:Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;->c:[Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic b(Landroid/content/Context;)V
    .locals 0

    .line 146
    invoke-static {p0}, Lo/adk;->h(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;->d(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;->c(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    return-void
.end method

.method private static synthetic c(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 1

    const/4 v0, 0x1

    .line 148
    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->e(Z)V

    return-void
.end method

.method private static synthetic d(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/Runnable;)V
    .locals 1

    .line 147
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lo/bO;->c(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic e(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;
    .locals 1

    .line 32
    const-class v0, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;
    .locals 1

    .line 32
    sget-object v0, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;->c:[Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)Lo/hR;
    .locals 0

    .line 37
    invoke-static {p1, p2}, Lo/UC;->b(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)Lo/UC;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/user/UserAgent;)Lo/hR;
    .locals 8

    const-string v0, "AppBootErrorManager"

    const-string v1, "Blacklisted device for mobile only plan, not supported"

    .line 117
    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->lg:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {}, Lo/gx;->d()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->d:Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    goto :goto_0

    :cond_0
    sget-object v1, Lo/nd;->b:Lo/nd;

    invoke-virtual {v1}, Lo/nd;->e()Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    move-result-object v1

    .line 125
    :goto_0
    sget-object v2, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl$2;->a:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    move-object v3, v0

    goto :goto_2

    .line 142
    :pswitch_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ls:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 139
    :pswitch_1
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->lp:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 136
    :pswitch_2
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ln:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 133
    :pswitch_3
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->lh:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 130
    :pswitch_4
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->lm:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 127
    :pswitch_5
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ll:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 146
    :goto_2
    new-instance v0, Lo/Gb;

    invoke-direct {v0, p1}, Lo/Gb;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance v5, Lo/Gg;

    invoke-direct {v5, p1, p2, p3, v0}, Lo/Gg;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/Runnable;)V

    .line 148
    new-instance v7, Lo/Gk;

    invoke-direct {v7, p3}, Lo/Gk;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    .line 150
    new-instance p2, Lo/CalendarViewLegacyDelegate$Activity;

    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->lo:I

    .line 152
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->jE:I

    .line 153
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, ""

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lo/CalendarViewLegacyDelegate$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 155
    new-instance p1, Lo/Gl;

    invoke-direct {p1, p2}, Lo/Gl;-><init>(Lo/hK;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)Lo/hR;
    .locals 2

    .line 159
    new-instance v0, Lo/Gh;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lo/Gh;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Z)V

    return-object v0
.end method

.method public c(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Runnable;I)Lo/hR;
    .locals 1

    .line 42
    new-instance v0, Lo/Gy;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/Gy;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Runnable;I)V

    return-object v0
.end method

.method public c(Landroid/content/Context;Lcom/netflix/mediaclient/android/app/Status;Z)Lo/hR;
    .locals 1

    .line 47
    new-instance v0, Lo/Gj;

    invoke-direct {v0, p1, p2, p3}, Lo/Gj;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/android/app/Status;Z)V

    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/Runnable;)Lo/hR;
    .locals 8

    .line 86
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->fk:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->fj:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    new-instance v5, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl$4;

    invoke-direct {v5, p0, p1}, Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl$4;-><init>(Lcom/netflix/mediaclient/ui/error/ErrorDescriptorFactoryImpl;Landroid/content/Context;)V

    .line 97
    new-instance v0, Lo/CalendarViewLegacyDelegate$Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jw:I

    .line 101
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    .line 103
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lo/CalendarViewLegacyDelegate$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 106
    new-instance p1, Lo/Gv;

    invoke-direct {p1, v0}, Lo/Gv;-><init>(Lo/hK;)V

    return-object p1
.end method

.method public c(Landroid/content/Context;Lo/zE;Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/android/org/json/JSONObject;)Lo/hR;
    .locals 8

    const-string v0, "actionid"

    .line 52
    invoke-virtual {p4, v0}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "AppBootErrorManager"

    if-nez v1, :cond_0

    const-string p1, "Error found, but not actionid. Not expected!"

    .line 53
    invoke-static {v3, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 57
    :cond_0
    invoke-virtual {p4, v0}, Lcom/netflix/android/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "usertextgroup"

    .line 59
    invoke-virtual {p4, v1}, Lcom/netflix/android/org/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object p4

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez p4, :cond_1

    new-array p4, v1, [Ljava/lang/Object;

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p4, v4

    const-string v5, "Action ID %d, but missing error text, use default..."

    invoke-static {v3, v5, p4}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    const-string v5, "bcp47"

    .line 63
    invoke-virtual {p4, v5}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "text"

    .line 64
    invoke-virtual {p4, v6}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object p4, v6, v1

    const/4 p4, 0x2

    aput-object v5, v6, p4

    const-string p4, "Action ID %d found message \'%s\' for language %s"

    invoke-static {v3, p4, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    new-array p4, v1, [Ljava/lang/Object;

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p4, v4

    const-string v1, "ActionID %d "

    invoke-static {v3, v1, p4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/16 p4, 0xd

    if-eq v0, p4, :cond_2

    const-string p1, "default, Not supported actionid"

    .line 77
    invoke-static {v3, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 73
    :cond_2
    invoke-static {p1, p2, p3, v2}, Lo/Ga;->b(Landroid/content/Context;Lo/zE;Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;)Lo/Ga;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method public e(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)Lo/hR;
    .locals 0

    .line 111
    new-instance p1, Lo/Gw;

    invoke-direct {p1, p2}, Lo/Gw;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    return-object p1
.end method
