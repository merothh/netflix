.class public final enum Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;
.super Ljava/lang/Enum;
.source "Falkor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

.field public static final enum PEOPLE:Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

.field public static final enum QUERY_SUGGESTION:Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    const-string/jumbo v1, "PEOPLE"

    const-string/jumbo v2, "people"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;->PEOPLE:Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    const-string/jumbo v1, "QUERY_SUGGESTION"

    const-string/jumbo v2, "suggestions"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;->QUERY_SUGGESTION:Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;->PEOPLE:Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;->QUERY_SUGGESTION:Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;->$VALUES:[Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;->$VALUES:[Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;

    return-object v0
.end method
