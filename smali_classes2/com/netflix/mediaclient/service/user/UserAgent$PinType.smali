.class public final enum Lcom/netflix/mediaclient/service/user/UserAgent$PinType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/user/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PinType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/user/UserAgent$PinType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/user/UserAgent$PinType;

.field private static final synthetic d:[Lcom/netflix/mediaclient/service/user/UserAgent$PinType;

.field public static final enum e:Lcom/netflix/mediaclient/service/user/UserAgent$PinType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$PinType;

    const/4 v1, 0x0

    const-string v2, "MATURITY_PIN"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/user/UserAgent$PinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgent$PinType;->a:Lcom/netflix/mediaclient/service/user/UserAgent$PinType;

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgent$PinType;

    const/4 v2, 0x1

    const-string v3, "PREVIEW_CONTENT_PIN"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/user/UserAgent$PinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgent$PinType;->e:Lcom/netflix/mediaclient/service/user/UserAgent$PinType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/user/UserAgent$PinType;

    .line 36
    sget-object v3, Lcom/netflix/mediaclient/service/user/UserAgent$PinType;->a:Lcom/netflix/mediaclient/service/user/UserAgent$PinType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/user/UserAgent$PinType;->e:Lcom/netflix/mediaclient/service/user/UserAgent$PinType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/user/UserAgent$PinType;->d:[Lcom/netflix/mediaclient/service/user/UserAgent$PinType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/user/UserAgent$PinType;
    .locals 1

    .line 36
    const-class v0, Lcom/netflix/mediaclient/service/user/UserAgent$PinType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/user/UserAgent$PinType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/user/UserAgent$PinType;
    .locals 1

    .line 36
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgent$PinType;->d:[Lcom/netflix/mediaclient/service/user/UserAgent$PinType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/user/UserAgent$PinType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/user/UserAgent$PinType;

    return-object v0
.end method
