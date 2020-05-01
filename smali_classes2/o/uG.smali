.class public Lo/uG;
.super Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

.field private d:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/lang/String;)V
    .locals 11

    const/4 v7, 0x0

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    .line 22
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/util/List;Ljava/lang/String;J)V

    move-object/from16 v1, p5

    .line 23
    iput-object v1, v0, Lo/uG;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/uG;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lo/uG;->c:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 55
    iput-object v0, p0, Lo/uG;->d:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    return-void
.end method

.method public e(JJ)V
    .locals 7

    .line 37
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    iget-object v1, p0, Lo/uG;->a:Ljava/lang/String;

    move-object v0, v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    iput-object v6, p0, Lo/uG;->c:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    return-void
.end method

.method e(Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lo/uG;->d:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    return-void
.end method

.method public getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/uG;->d:Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    return-object v0
.end method

.method public getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/uG;->c:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    return-object v0
.end method
