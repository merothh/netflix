.class public final enum Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;
.super Ljava/lang/Enum;
.source "ConnectivityUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

.field public static final enum NetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

.field public static final enum mobile:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

.field public static final enum wifi:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

.field public static final enum wired:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    const-string/jumbo v1, "wifi"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->wifi:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    .line 74
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    const-string/jumbo v1, "mobile"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->mobile:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    .line 75
    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    const-string/jumbo v1, "NetType"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->NetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    new-instance v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    const-string/jumbo v1, "wired"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->wired:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    sget-object v1, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->wifi:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->mobile:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->NetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->wired:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->$VALUES:[Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->$VALUES:[Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    return-object v0
.end method