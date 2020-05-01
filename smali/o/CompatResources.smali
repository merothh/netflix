.class public Lo/CompatResources;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final d:Lo/RuntimePermissionPresentationInfo;

.field private final e:I


# direct methods
.method public constructor <init>(Lo/RuntimePermissionPresentationInfo;)V
    .locals 1

    const/16 v0, 0x4000

    .line 30
    invoke-direct {p0, p1, v0}, Lo/CompatResources;-><init>(Lo/RuntimePermissionPresentationInfo;I)V

    return-void
.end method

.method public constructor <init>(Lo/RuntimePermissionPresentationInfo;I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    invoke-static {v0}, Lo/StringParceledListSlice;->a(Z)V

    .line 36
    iput p2, p0, Lo/CompatResources;->e:I

    .line 37
    iput-object p1, p0, Lo/CompatResources;->d:Lo/RuntimePermissionPresentationInfo;

    return-void
.end method


# virtual methods
.method public b(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6

    .line 49
    iget-object v0, p0, Lo/CompatResources;->d:Lo/RuntimePermissionPresentationInfo;

    iget v1, p0, Lo/CompatResources;->e:I

    invoke-interface {v0, v1}, Lo/RuntimePermissionPresentationInfo;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-wide/16 v1, 0x0

    .line 53
    :goto_0
    :try_start_0
    iget v3, p0, Lo/CompatResources;->e:I

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 61
    iget-object p1, p0, Lo/CompatResources;->d:Lo/RuntimePermissionPresentationInfo;

    invoke-interface {p1, v0}, Lo/RuntimePermissionPresentationInfo;->b(Ljava/lang/Object;)V

    return-wide v1

    .line 57
    :cond_0
    :try_start_1
    invoke-virtual {p2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 61
    iget-object p2, p0, Lo/CompatResources;->d:Lo/RuntimePermissionPresentationInfo;

    invoke-interface {p2, v0}, Lo/RuntimePermissionPresentationInfo;->b(Ljava/lang/Object;)V

    throw p1
.end method
