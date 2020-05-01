.class final enum Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NetflixSecurityScheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic b:[Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

.field public static final enum c:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

.field public static final enum e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 66
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    const/4 v1, 0x0

    const-string v2, "MSL"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    const/4 v2, 0x1

    const-string v3, "NTBA"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->b:[Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;
    .locals 1

    .line 66
    const-class v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;
    .locals 1

    .line 66
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->b:[Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget$NetflixSecurityScheme;

    return-object v0
.end method
