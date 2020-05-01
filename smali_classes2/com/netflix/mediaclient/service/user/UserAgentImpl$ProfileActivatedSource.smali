.class final enum Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ProfileActivatedSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

.field public static final enum b:Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

.field public static final enum d:Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

.field public static final enum e:Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 2953
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    const/4 v1, 0x0

    const-string v2, "login"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;->e:Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    .line 2954
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    const/4 v2, 0x1

    const-string v3, "switchProfile"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    .line 2955
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    const/4 v3, 0x2

    const-string v4, "restoreProfile"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    .line 2952
    sget-object v4, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;->e:Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;->a:[Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2952
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;
    .locals 1

    .line 2952
    const-class v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;
    .locals 1

    .line 2952
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;->a:[Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    return-object v0
.end method
