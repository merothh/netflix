.class final Lcom/netflix/mediaclient/service/pservice/PServiceABTest$1;
.super Ljava/util/HashMap;
.source "PServiceABTest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->NON_MEMBER:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
