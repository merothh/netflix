.class public Lo/CursorWindowAllocationException;
.super Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
        "Lo/CursorWindowAllocationException;",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "Lo/CompatibilityInfo<",
        "Lo/LegacyRequestMapper;",
        ">;",
        "Lo/LegacyRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/DatabaseUtils;

.field private final b:Lo/DngCreator;

.field private c:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lo/LegacyCameraDevice;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lo/IBulkCursor;

.field private e:Lo/MatrixCursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/DatabaseUtils;Lo/DngCreator;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/DatabaseUtils;",
            "Lo/DngCreator;",
            "Ljava/util/Set<",
            "Lo/SQLiteBindOrColumnIndexOutOfRangeException;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p4}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    .line 59
    iput-object p3, p0, Lo/CursorWindowAllocationException;->b:Lo/DngCreator;

    .line 60
    iput-object p2, p0, Lo/CursorWindowAllocationException;->a:Lo/DatabaseUtils;

    return-void
.end method

.method public static c(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .locals 3

    .line 183
    sget-object v0, Lo/CursorWindowAllocationException$1;->d:[I

    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 189
    sget-object p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->b:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object p0

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "is not supported. "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1
    sget-object p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->a:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object p0

    .line 185
    :cond_2
    sget-object p0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->d:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object p0
.end method

.method private k()Lo/MacAuthenticatedInputStream;
    .locals 3

    .line 142
    invoke-virtual {p0}, Lo/CursorWindowAllocationException;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 143
    iget-object v1, p0, Lo/CursorWindowAllocationException;->b:Lo/DngCreator;

    invoke-virtual {v1}, Lo/DngCreator;->a()Lo/SensorEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lo/GeofenceHardwareCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {p0}, Lo/CursorWindowAllocationException;->a()Ljava/lang/Object;

    move-result-object v2

    .line 147
    invoke-interface {v1, v0, v2}, Lo/SensorEventListener;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lo/CursorWindowAllocationException;->a()Ljava/lang/Object;

    move-result-object v2

    .line 151
    invoke-interface {v1, v0, v2}, Lo/SensorEventListener;->e(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public c(Lo/MatrixCursor;)Lo/CursorWindowAllocationException;
    .locals 0

    .line 107
    iput-object p1, p0, Lo/CursorWindowAllocationException;->e:Lo/MatrixCursor;

    .line 108
    invoke-virtual {p0}, Lo/CursorWindowAllocationException;->n()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lo/CursorWindowAllocationException;

    return-object p1
.end method

.method protected c(Lo/DdmHandleExit;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lo/XmlResourceParser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DdmHandleExit;",
            "Ljava/lang/String;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;",
            ")",
            "Lo/XmlResourceParser<",
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;>;"
        }
    .end annotation

    .line 166
    iget-object p2, p0, Lo/CursorWindowAllocationException;->b:Lo/DngCreator;

    .line 169
    invoke-static {p5}, Lo/CursorWindowAllocationException;->c(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object p5

    .line 170
    invoke-virtual {p0, p1}, Lo/CursorWindowAllocationException;->d(Lo/DdmHandleExit;)Lo/PerfMeasurement;

    move-result-object p1

    .line 166
    invoke-virtual {p2, p3, p4, p5, p1}, Lo/DngCreator;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lo/PerfMeasurement;)Lo/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Landroid/net/Uri;)Lo/DdmHandleHello;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lo/CursorWindowAllocationException;->e(Landroid/net/Uri;)Lo/CursorWindowAllocationException;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lo/DdmHandleExit;)Lo/PerfMeasurement;
    .locals 1

    .line 175
    instance-of v0, p1, Lo/CursorJoiner;

    if-eqz v0, :cond_0

    .line 176
    check-cast p1, Lo/CursorJoiner;

    invoke-virtual {p1}, Lo/CursorJoiner;->d()Lo/PerfMeasurement;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic d()Lo/SQLiteConnection;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lo/CursorWindowAllocationException;->e()Lo/CursorJoiner;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lo/DdmHandleExit;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lo/XmlResourceParser;
    .locals 6

    .line 39
    move-object v3, p3

    check-cast v3, Lcom/facebook/imagepipeline/request/ImageRequest;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lo/CursorWindowAllocationException;->c(Lo/DdmHandleExit;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder$CacheLevel;)Lo/XmlResourceParser;

    move-result-object p1

    return-object p1
.end method

.method protected e()Lo/CursorJoiner;
    .locals 8

    .line 113
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PipelineDraweeControllerBuilder#obtainController"

    .line 114
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 117
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lo/CursorWindowAllocationException;->g()Lo/DdmHandleExit;

    move-result-object v0

    .line 119
    invoke-static {}, Lo/CursorWindowAllocationException;->o()Ljava/lang/String;

    move-result-object v3

    .line 120
    instance-of v1, v0, Lo/CursorJoiner;

    if-eqz v1, :cond_1

    .line 121
    check-cast v0, Lo/CursorJoiner;

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lo/CursorWindowAllocationException;->a:Lo/DatabaseUtils;

    invoke-virtual {v0}, Lo/DatabaseUtils;->c()Lo/CursorJoiner;

    move-result-object v0

    .line 126
    :goto_0
    invoke-virtual {p0, v0, v3}, Lo/CursorWindowAllocationException;->c(Lo/DdmHandleExit;Ljava/lang/String;)Lo/UserInfo;

    move-result-object v2

    .line 128
    invoke-direct {p0}, Lo/CursorWindowAllocationException;->k()Lo/MacAuthenticatedInputStream;

    move-result-object v4

    .line 129
    invoke-virtual {p0}, Lo/CursorWindowAllocationException;->a()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lo/CursorWindowAllocationException;->c:Lcom/facebook/common/internal/ImmutableList;

    iget-object v7, p0, Lo/CursorWindowAllocationException;->d:Lo/IBulkCursor;

    move-object v1, v0

    .line 125
    invoke-virtual/range {v1 .. v7}, Lo/CursorJoiner;->b(Lo/UserInfo;Ljava/lang/String;Lo/MacAuthenticatedInputStream;Ljava/lang/Object;Lcom/facebook/common/internal/ImmutableList;Lo/IBulkCursor;)V

    .line 132
    iget-object v1, p0, Lo/CursorWindowAllocationException;->e:Lo/MatrixCursor;

    invoke-virtual {v0, v1}, Lo/CursorJoiner;->a(Lo/MatrixCursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    .line 135
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_3
    throw v0
.end method

.method public e(Landroid/net/Uri;)Lo/CursorWindowAllocationException;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->b(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lo/CursorWindowAllocationException;

    return-object p1

    .line 68
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 69
    invoke-static {}, Lo/CameraDevice;->e()Lo/CameraDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b(Lo/CameraDevice;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->t()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 71
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->b(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lo/CursorWindowAllocationException;

    return-object p1
.end method
