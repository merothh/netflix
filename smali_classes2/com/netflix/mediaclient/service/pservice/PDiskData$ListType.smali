.class public final enum Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/pservice/PDiskData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field public static final enum b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field public static final enum c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field public static final enum d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field public static final enum e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field public static final enum f:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field public static final enum g:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field public static final enum h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field public static final enum i:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field private static final synthetic k:[Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 151
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const/4 v1, 0x0

    const-string v2, "BILLBOARD"

    const-string v3, "Spotlight"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 152
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const/4 v2, 0x1

    const-string v3, "CW"

    const-string v4, "ContinueWatching"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 153
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const/4 v3, 0x2

    const-string v4, "IQ"

    const-string v5, "MyList"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 154
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const/4 v4, 0x3

    const-string v5, "STANDARD_FIRST"

    const-string v6, "arFirst"

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 155
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const/4 v5, 0x4

    const-string v6, "STANDARD_SECOND"

    const-string v7, "arSecond"

    invoke-direct {v0, v6, v5, v7}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 156
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const/4 v6, 0x5

    const-string v7, "NON_MEMBER"

    const-string v8, "nonMember"

    invoke-direct {v0, v7, v6, v8}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 157
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const/4 v7, 0x6

    const-string v8, "LOMO_INFO"

    const-string v9, "lomoInfo"

    invoke-direct {v0, v8, v7, v9}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->f:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 158
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const/4 v8, 0x7

    const-string v9, "SPECIALS"

    const-string v10, "specials"

    invoke-direct {v0, v9, v8, v10}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->g:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 159
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const/16 v9, 0x8

    const-string v10, "UNKNOWN"

    const-string v11, ""

    invoke-direct {v0, v10, v9, v11}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->i:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 150
    sget-object v10, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v10, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->f:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->g:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->i:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->k:[Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 164
    iput-object p3, p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->j:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
    .locals 1

    .line 150
    const-class v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
    .locals 1

    .line 150
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->k:[Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->j:Ljava/lang/String;

    return-object v0
.end method
