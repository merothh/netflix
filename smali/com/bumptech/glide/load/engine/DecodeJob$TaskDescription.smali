.class final Lcom/bumptech/glide/load/engine/DecodeJob$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ObjectPoolItem$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ObjectPoolItem$Activity<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private final b:Lcom/bumptech/glide/load/DataSource;

.field final synthetic d:Lcom/bumptech/glide/load/engine/DecodeJob;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/DataSource;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$TaskDescription;->d:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$TaskDescription;->b:Lcom/bumptech/glide/load/DataSource;

    return-void
.end method


# virtual methods
.method public e(Lo/Slice;)Lo/Slice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "TZ;>;)",
            "Lo/Slice<",
            "TZ;>;"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$TaskDescription;->d:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$TaskDescription;->b:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/DataSource;Lo/Slice;)Lo/Slice;

    move-result-object p1

    return-object p1
.end method
