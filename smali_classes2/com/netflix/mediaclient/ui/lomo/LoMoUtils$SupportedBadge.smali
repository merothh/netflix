.class public final enum Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportedBadge"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

.field public static final enum b:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

.field private static final synthetic d:[Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 68
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    const/4 v1, 0x0

    const-string v2, "NEW"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;->a:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    .line 69
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    const/4 v2, 0x1

    const-string v3, "NEW_EPISODE"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;->b:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    .line 67
    sget-object v3, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;->a:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;->b:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;->d:[Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;
    .locals 1

    .line 67
    const-class v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;
    .locals 1

    .line 67
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;->d:[Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    return-object v0
.end method
