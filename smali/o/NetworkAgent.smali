.class public Lo/NetworkAgent;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field private final d:Lcom/google/common/collect/IndexedImmutableSet;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/IndexedImmutableSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/NetworkAgent;->d:Lcom/google/common/collect/IndexedImmutableSet;

    return-void
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/NetworkAgent;->d:Lcom/google/common/collect/IndexedImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/IndexedImmutableSet;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
