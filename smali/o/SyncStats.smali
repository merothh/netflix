.class public abstract Lo/SyncStats;
.super Lo/SyncInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lo/SyncInfo<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 81
    invoke-direct {p0, v0, v0}, Lo/SyncStats;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lo/SyncInfo;-><init>()V

    .line 94
    iput p1, p0, Lo/SyncStats;->c:I

    .line 95
    iput p2, p0, Lo/SyncStats;->b:I

    return-void
.end method


# virtual methods
.method public c(Lo/SyncStatusInfo;)V
    .locals 0

    return-void
.end method

.method public final e(Lo/SyncStatusInfo;)V
    .locals 2

    .line 105
    iget v0, p0, Lo/SyncStats;->c:I

    iget v1, p0, Lo/SyncStats;->b:I

    invoke-static {v0, v1}, Lo/FallbackCategoryProvider;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget v0, p0, Lo/SyncStats;->c:I

    iget v1, p0, Lo/SyncStats;->b:I

    invoke-interface {p1, v0, v1}, Lo/SyncStatusInfo;->c(II)V

    return-void

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/SyncStats;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/SyncStats;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", either provide dimensions in the constructor or call override()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
