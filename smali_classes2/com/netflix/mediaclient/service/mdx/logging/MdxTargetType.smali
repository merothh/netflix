.class public final enum Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

.field public static final enum b:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

.field private static final synthetic d:[Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    const/4 v1, 0x0

    const-string v2, "Cast"

    const-string v3, "cast"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->a:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    const/4 v2, 0x1

    const-string v3, "Nrdp"

    const-string v4, "nrdp"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->b:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    .line 10
    sget-object v3, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->a:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->b:Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->d:[Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;
    .locals 1

    .line 10
    const-class v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;
    .locals 1

    .line 10
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->d:[Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;

    return-object v0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxTargetType;->e:Ljava/lang/String;

    return-object v0
.end method
