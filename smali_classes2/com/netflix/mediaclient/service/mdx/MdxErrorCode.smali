.class public final enum Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

.field public static final enum b:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

.field public static final enum c:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

.field public static final enum d:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

.field public static final enum e:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

.field private static final synthetic j:[Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    const/4 v1, 0x0

    const-string v2, "MdxInitFailed"

    const/16 v3, 0xfa5

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->c:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    const/4 v2, 0x1

    const-string v3, "ConnectFailed"

    const/16 v4, 0xfaa

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->b:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    const/4 v3, 0x2

    const-string v4, "ReconnectFailed"

    const/16 v5, 0xfab

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->e:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    const/4 v4, 0x3

    const-string v5, "DisconnectFailed"

    const/16 v6, 0xfac

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->d:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    const/4 v5, 0x4

    const-string v6, "Cancelled"

    const/16 v7, 0xfad

    invoke-direct {v0, v6, v5, v7}, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->a:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    .line 10
    sget-object v6, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->c:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    aput-object v6, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->b:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->e:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->d:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->a:Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->j:[Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;
    .locals 1

    .line 10
    const-class v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;
    .locals 1

    .line 10
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->j:[Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 26
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorCode;->h:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
