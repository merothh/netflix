.class public final enum Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;
.super Ljava/lang/Enum;
.source "CustomerServiceLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field public static final enum appMenu:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field public static final enum errorDialog:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field public static final enum login:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field public static final enum nonMemberLanding:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field public static final enum notification:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field public static final enum profileGate:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

.field public static final enum returnTo:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    const-string/jumbo v1, "nonMemberLanding"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->nonMemberLanding:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 130
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    const-string/jumbo v1, "login"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->login:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 131
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    const-string/jumbo v1, "appMenu"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->appMenu:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 132
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    const-string/jumbo v1, "returnTo"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->returnTo:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 133
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    const-string/jumbo v1, "notification"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->notification:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 134
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    const-string/jumbo v1, "errorDialog"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->errorDialog:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 135
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    const-string/jumbo v1, "profileGate"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->profileGate:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    .line 128
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->nonMemberLanding:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->login:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->appMenu:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->returnTo:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->notification:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->errorDialog:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->profileGate:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;
    .locals 1

    .prologue
    .line 128
    const-class v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    return-object v0
.end method
