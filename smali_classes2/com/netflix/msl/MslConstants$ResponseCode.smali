.class public final enum Lcom/netflix/msl/MslConstants$ResponseCode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/MslConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/msl/MslConstants$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum b:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum c:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum d:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum e:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum f:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum g:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum h:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum i:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum j:Lcom/netflix/msl/MslConstants$ResponseCode;

.field private static final synthetic m:[Lcom/netflix/msl/MslConstants$ResponseCode;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 184
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "FAIL"

    invoke-direct {v0, v3, v1, v2}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 186
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const/4 v3, 0x2

    const-string v4, "TRANSIENT_FAILURE"

    invoke-direct {v0, v4, v2, v3}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->d:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 188
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const/4 v4, 0x3

    const-string v5, "ENTITY_REAUTH"

    invoke-direct {v0, v5, v3, v4}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->c:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 190
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const/4 v5, 0x4

    const-string v6, "USER_REAUTH"

    invoke-direct {v0, v6, v4, v5}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->a:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 192
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const/4 v6, 0x5

    const-string v7, "KEYX_REQUIRED"

    invoke-direct {v0, v7, v5, v6}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->b:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 194
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const/4 v7, 0x6

    const-string v8, "ENTITYDATA_REAUTH"

    invoke-direct {v0, v8, v6, v7}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->i:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 196
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const/4 v8, 0x7

    const-string v9, "USERDATA_REAUTH"

    invoke-direct {v0, v9, v7, v8}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 198
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v9, 0x8

    const-string v10, "EXPIRED"

    invoke-direct {v0, v10, v8, v9}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->h:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 200
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v10, 0x9

    const-string v11, "REPLAYED"

    invoke-direct {v0, v11, v9, v10}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->g:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 202
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const/16 v11, 0xa

    const-string v12, "SSOTOKEN_REJECTED"

    invoke-direct {v0, v12, v10, v11}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->f:Lcom/netflix/msl/MslConstants$ResponseCode;

    new-array v0, v11, [Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 182
    sget-object v11, Lcom/netflix/msl/MslConstants$ResponseCode;->e:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v11, v0, v1

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->d:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->c:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->a:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->b:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->i:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->h:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->g:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->f:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v1, v0, v10

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->m:[Lcom/netflix/msl/MslConstants$ResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 224
    iput p3, p0, Lcom/netflix/msl/MslConstants$ResponseCode;->o:I

    return-void
.end method

.method public static c(I)Lcom/netflix/msl/MslConstants$ResponseCode;
    .locals 5

    .line 211
    invoke-static {}, Lcom/netflix/msl/MslConstants$ResponseCode;->values()[Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 212
    invoke-virtual {v3}, Lcom/netflix/msl/MslConstants$ResponseCode;->d()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown response code value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$ResponseCode;
    .locals 1

    .line 182
    const-class v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/msl/MslConstants$ResponseCode;

    return-object p0
.end method

.method public static values()[Lcom/netflix/msl/MslConstants$ResponseCode;
    .locals 1

    .line 182
    sget-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->m:[Lcom/netflix/msl/MslConstants$ResponseCode;

    invoke-virtual {v0}, [Lcom/netflix/msl/MslConstants$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/MslConstants$ResponseCode;

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/netflix/msl/MslConstants$ResponseCode;->o:I

    return v0
.end method
