.class final enum Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;
.super Ljava/lang/Enum;
.source "OfflineFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;

.field public static final enum All:Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;

    const-string/jumbo v1, "All"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;->All:Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;->All:Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;->$VALUES:[Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;->$VALUES:[Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/offline/OfflineFragment$Payload;

    return-object v0
.end method
