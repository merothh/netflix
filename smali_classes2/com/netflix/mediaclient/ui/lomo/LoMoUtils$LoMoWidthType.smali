.class public final enum Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoMoWidthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

.field private static final synthetic c:[Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

.field public static final enum d:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    const/4 v1, 0x0

    const-string v2, "STANDARD"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->d:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    const/4 v2, 0x1

    const-string v3, "KIDS_CHARACTER_ROW"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->b:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    .line 18
    sget-object v3, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->d:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->b:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->c:[Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;
    .locals 1

    .line 18
    const-class v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;
    .locals 1

    .line 18
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->c:[Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    return-object v0
.end method
