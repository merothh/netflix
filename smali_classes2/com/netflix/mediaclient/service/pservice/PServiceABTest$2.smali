.class public final Lcom/netflix/mediaclient/service/pservice/PServiceABTest$2;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 30
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->b:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->c:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->e:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->a:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->d:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->h:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
