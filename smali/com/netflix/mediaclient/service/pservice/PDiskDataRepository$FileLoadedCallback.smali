.class abstract Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$FileLoadedCallback;
.super Ljava/lang/Object;
.source "PDiskDataRepository.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/data/DataRepository$LoadedCallback;


# instance fields
.field private final callback:Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;

.field private final repository:Lcom/netflix/mediaclient/util/data/DataRepository;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/util/data/DataRepository;Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$FileLoadedCallback;->callback:Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;

    .line 117
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$FileLoadedCallback;->repository:Lcom/netflix/mediaclient/util/data/DataRepository;

    .line 118
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$FileLoadedCallback;->callback:Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;

    return-object v0
.end method

.method public getRepository()Lcom/netflix/mediaclient/util/data/DataRepository;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$FileLoadedCallback;->repository:Lcom/netflix/mediaclient/util/data/DataRepository;

    return-object v0
.end method
