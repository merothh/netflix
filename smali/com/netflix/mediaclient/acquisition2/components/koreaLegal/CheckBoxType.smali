.class public final enum Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

.field public static final enum b:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

.field public static final enum c:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

.field public static final enum d:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

.field public static final enum e:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    const/4 v2, 0x0

    const-string v3, "TOU"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;->e:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    const/4 v2, 0x1

    const-string v3, "ABROAD"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;->b:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    const/4 v2, 0x2

    const-string v3, "OFFERS"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;->c:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    const/4 v2, 0x3

    const-string v3, "THIRD_PARTY"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;->d:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;->a:[Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;->a:[Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    return-object v0
.end method
