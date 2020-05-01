.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/interface_/Evidence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EvidenceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

.field public static final enum e:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

.field private static final synthetic f:[Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

.field public static final enum i:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

.field public static final enum j:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    const/4 v2, 0x0

    const-string v3, "TAG_ONLY"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->c:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    const/4 v2, 0x1

    const-string v3, "TAG_AND_SIM"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->e:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    const/4 v2, 0x2

    const-string v3, "CONTINUE_WATCHING"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->d:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    const/4 v2, 0x3

    const-string v3, "WATCH_AGAIN"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->a:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    const/4 v2, 0x4

    const-string v3, "JUST_ARRIVED_REMINDER"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->b:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    const/4 v2, 0x5

    const-string v3, "MY_LIST"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->j:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    const/4 v2, 0x6

    const-string v3, "WATCH_FAVORITE"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->i:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->f:[Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->f:[Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    return-object v0
.end method
