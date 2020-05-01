.class public Lo/SizeAreaComparator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field final b:Ljava/util/Queue;

.field private c:I

.field public final d:I

.field private final e:Z


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 62
    :goto_0
    invoke-static {v2}, Lo/StringParceledListSlice;->c(Z)V

    if-ltz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 63
    :goto_1
    invoke-static {v2}, Lo/StringParceledListSlice;->c(Z)V

    if-ltz p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 64
    :goto_2
    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V

    .line 66
    iput p1, p0, Lo/SizeAreaComparator;->a:I

    .line 67
    iput p2, p0, Lo/SizeAreaComparator;->d:I

    .line 68
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lo/SizeAreaComparator;->b:Ljava/util/Queue;

    .line 69
    iput p3, p0, Lo/SizeAreaComparator;->c:I

    .line 71
    iput-boolean p4, p0, Lo/SizeAreaComparator;->e:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    invoke-virtual {p0}, Lo/SizeAreaComparator;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget v1, p0, Lo/SizeAreaComparator;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/SizeAreaComparator;->c:I

    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 1

    .line 118
    iget v0, p0, Lo/SizeAreaComparator;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/SizeAreaComparator;->c:I

    return-void
.end method

.method b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lo/SizeAreaComparator;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()I
    .locals 1

    .line 83
    iget-object v0, p0, Lo/SizeAreaComparator;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 126
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-boolean v0, p0, Lo/SizeAreaComparator;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 129
    iget v0, p0, Lo/SizeAreaComparator;->c:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lo/StringParceledListSlice;->c(Z)V

    .line 130
    iget v0, p0, Lo/SizeAreaComparator;->c:I

    sub-int/2addr v0, v2

    iput v0, p0, Lo/SizeAreaComparator;->c:I

    .line 131
    invoke-virtual {p0, p1}, Lo/SizeAreaComparator;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    :cond_1
    iget v0, p0, Lo/SizeAreaComparator;->c:I

    if-lez v0, :cond_2

    sub-int/2addr v0, v2

    .line 135
    iput v0, p0, Lo/SizeAreaComparator;->c:I

    .line 136
    invoke-virtual {p0, p1}, Lo/SizeAreaComparator;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "BUCKET"

    const-string v1, "Tried to release value %s from an empty bucket!"

    .line 138
    invoke-static {p1, v1, v0}, Lo/DexMetadataHelper;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lo/SizeAreaComparator;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 2

    .line 79
    iget v0, p0, Lo/SizeAreaComparator;->c:I

    invoke-virtual {p0}, Lo/SizeAreaComparator;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lo/SizeAreaComparator;->d:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 2

    .line 153
    iget v0, p0, Lo/SizeAreaComparator;->c:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/StringParceledListSlice;->c(Z)V

    .line 154
    iget v0, p0, Lo/SizeAreaComparator;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lo/SizeAreaComparator;->c:I

    return-void
.end method

.method public j()I
    .locals 1

    .line 158
    iget v0, p0, Lo/SizeAreaComparator;->c:I

    return v0
.end method
