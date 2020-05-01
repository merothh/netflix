.class public final enum Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/player/PostPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "PostPlayDataFetchStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

.field private static final synthetic d:[Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

.field public static final enum e:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1326
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    const/4 v1, 0x0

    const-string v2, "notStarted"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->e:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    .line 1327
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    const/4 v2, 0x1

    const-string v3, "started"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->b:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    .line 1325
    sget-object v3, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->e:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->b:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->d:[Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1325
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;
    .locals 1

    .line 1325
    const-class v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;
    .locals 1

    .line 1325
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->d:[Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    return-object v0
.end method
