.class Lo/PipModeChangeItem$ActionBar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InstantAppRequest$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PipModeChangeItem$ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InstantAppRequest$ActionBar<",
        "Lcom/bumptech/glide/load/engine/DecodeJob<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/PipModeChangeItem$ActionBar;


# direct methods
.method constructor <init>(Lo/PipModeChangeItem$ActionBar;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lo/PipModeChangeItem$ActionBar$1;->a:Lo/PipModeChangeItem$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lcom/bumptech/glide/load/engine/DecodeJob;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;"
        }
    .end annotation

    .line 405
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, p0, Lo/PipModeChangeItem$ActionBar$1;->a:Lo/PipModeChangeItem$ActionBar;

    iget-object v1, v1, Lo/PipModeChangeItem$ActionBar;->e:Lcom/bumptech/glide/load/engine/DecodeJob$Activity;

    iget-object v2, p0, Lo/PipModeChangeItem$ActionBar$1;->a:Lo/PipModeChangeItem$ActionBar;

    iget-object v2, v2, Lo/PipModeChangeItem$ActionBar;->c:Lo/CharArrayReader$Activity;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob$Activity;Lo/CharArrayReader$Activity;)V

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 402
    invoke-virtual {p0}, Lo/PipModeChangeItem$ActionBar$1;->b()Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v0

    return-object v0
.end method
