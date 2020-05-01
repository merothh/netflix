.class Lio/realm/internal/Context$ReferencesPool;
.super Ljava/lang/Object;
.source "Context.java"


# instance fields
.field freeIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field pool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/realm/internal/NativeObjectReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/Context$ReferencesPool;->pool:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/Context$ReferencesPool;->freeIndexList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/internal/Context$1;)V
    .locals 0

    invoke-direct {p0}, Lio/realm/internal/Context$ReferencesPool;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lio/realm/internal/NativeObjectReference;)V
    .locals 2

    iget-object v0, p0, Lio/realm/internal/Context$ReferencesPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Lio/realm/internal/NativeObjectReference;->refIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lio/realm/internal/Context$ReferencesPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/realm/internal/Context$ReferencesPool;->pool:Ljava/util/ArrayList;

    iget-object v1, p1, Lio/realm/internal/NativeObjectReference;->refIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method getFreeIndex()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lio/realm/internal/Context$ReferencesPool;->freeIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/realm/internal/Context$ReferencesPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lio/realm/internal/Context$ReferencesPool;->freeIndexList:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method
