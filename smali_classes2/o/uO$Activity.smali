.class final Lo/uO$Activity;
.super Lcom/google/android/exoplayer2/Timeline;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/uO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Activity"
.end annotation


# instance fields
.field private final b:Lcom/google/android/exoplayer2/Timeline;

.field private final c:Lo/uF;


# direct methods
.method public constructor <init>(Lo/uF;)V
    .locals 0

    .line 410
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 411
    iput-object p1, p0, Lo/uO$Activity;->c:Lo/uF;

    const/4 p1, 0x0

    .line 412
    iput-object p1, p0, Lo/uO$Activity;->b:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method

.method private constructor <init>(Lo/uF;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 415
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 416
    iput-object p1, p0, Lo/uO$Activity;->c:Lo/uF;

    .line 417
    iput-object p2, p0, Lo/uO$Activity;->b:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/Timeline;)Lo/uO$Activity;
    .locals 2

    .line 421
    new-instance v0, Lo/uO$Activity;

    iget-object v1, p0, Lo/uO$Activity;->c:Lo/uF;

    invoke-direct {v0, v1, p1}, Lo/uO$Activity;-><init>(Lo/uF;Lcom/google/android/exoplayer2/Timeline;)V

    return-object v0
.end method

.method public d()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .line 425
    iget-object v0, p0, Lo/uO$Activity;->b:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 1

    .line 471
    iget-object v0, p0, Lo/uO$Activity;->b:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/uO$Activity;->c:Lo/uF;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lo/uO$Activity;->c:Lo/uF;

    .line 472
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 9

    .line 456
    iget-object v0, p0, Lo/uO$Activity;->b:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 457
    iget-object v0, p0, Lo/uO$Activity;->c:Lo/uF;

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-eqz p3, :cond_1

    iget-object p1, p0, Lo/uO$Activity;->c:Lo/uF;

    :cond_1
    move-object v3, p1

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    return-object p1

    .line 464
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 465
    iget-object p1, p0, Lo/uO$Activity;->c:Lo/uF;

    iput-object p1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    return-object p2
.end method

.method public getPeriodCount()I
    .locals 1

    .line 451
    iget-object v0, p0, Lo/uO$Activity;->b:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    .line 436
    iget-object v1, v0, Lo/uO$Activity;->b:Lcom/google/android/exoplayer2/Timeline;

    if-nez v1, :cond_0

    .line 438
    iget-object v2, v0, Lo/uO$Activity;->c:Lo/uF;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v1, p2

    move-wide/from16 v15, v16

    invoke-virtual/range {v1 .. v16}, Lcom/google/android/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    .line 441
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    if-eqz p3, :cond_1

    .line 443
    iget-object v1, v0, Lo/uO$Activity;->c:Lo/uF;

    move-object/from16 v2, p2

    iput-object v1, v2, Lcom/google/android/exoplayer2/Timeline$Window;->id:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v2, p2

    :goto_1
    return-object v2
.end method

.method public getWindowCount()I
    .locals 1

    .line 430
    iget-object v0, p0, Lo/uO$Activity;->b:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    :goto_0
    return v0
.end method
