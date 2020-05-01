.class public Lo/wi$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/wi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation


# instance fields
.field private transient b:[J

.field private bitrates:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bitrates"
    .end annotation
.end field

.field private dltype:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dltype"
    .end annotation
.end field

.field private seltrace:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seltrace"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I[I)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/wi$Application;->seltrace:Ljava/util/ArrayList;

    .line 111
    iput p1, p0, Lo/wi$Application;->dltype:I

    .line 112
    iput-object p2, p0, Lo/wi$Application;->bitrates:[I

    return-void
.end method

.method static synthetic c(Lo/wi$Application;)[I
    .locals 0

    .line 98
    iget-object p0, p0, Lo/wi$Application;->bitrates:[I

    return-object p0
.end method

.method static synthetic d(Lo/wi$Application;)I
    .locals 0

    .line 98
    iget p0, p0, Lo/wi$Application;->dltype:I

    return p0
.end method


# virtual methods
.method public b(JIJJJIIIII)V
    .locals 23

    move-object/from16 v0, p0

    const/16 v1, 0xb

    new-array v2, v1, [J

    move/from16 v3, p3

    int-to-long v3, v3

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    const/4 v6, 0x1

    aput-wide p1, v2, v6

    const/4 v7, 0x2

    aput-wide p4, v2, v7

    const/4 v8, 0x3

    aput-wide p6, v2, v8

    const/4 v9, 0x4

    aput-wide p8, v2, v9

    move/from16 v10, p11

    int-to-long v10, v10

    const/4 v12, 0x5

    aput-wide v10, v2, v12

    move/from16 v13, p10

    int-to-long v13, v13

    const/4 v15, 0x6

    aput-wide v13, v2, v15

    move/from16 v15, p12

    move-wide/from16 v16, v13

    int-to-long v12, v15

    const/4 v14, 0x7

    aput-wide v12, v2, v14

    move/from16 v15, p13

    int-to-long v14, v15

    const/16 v18, 0x8

    aput-wide v14, v2, v18

    const/16 v19, 0x9

    aput-wide p4, v2, v19

    move/from16 v9, p14

    int-to-long v8, v9

    const/16 v20, 0xa

    aput-wide v8, v2, v20

    .line 119
    iget-object v7, v0, Lo/wi$Application;->b:[J

    if-nez v7, :cond_0

    .line 120
    iget-object v1, v0, Lo/wi$Application;->seltrace:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_0
    iget-object v6, v0, Lo/wi$Application;->seltrace:Ljava/util/ArrayList;

    new-array v1, v1, [J

    aget-wide v21, v7, v5

    sub-long v3, v3, v21

    aput-wide v3, v1, v5

    const/4 v3, 0x1

    aget-wide v4, v7, v3

    sub-long v4, p1, v4

    aput-wide v4, v1, v3

    const/4 v3, 0x2

    aget-wide v4, v7, v3

    sub-long v4, p4, v4

    aput-wide v4, v1, v3

    const/4 v3, 0x3

    aget-wide v4, v7, v3

    sub-long v4, p6, v4

    aput-wide v4, v1, v3

    const/4 v3, 0x4

    aget-wide v4, v7, v3

    sub-long v4, p8, v4

    aput-wide v4, v1, v3

    const/4 v3, 0x5

    aget-wide v4, v7, v3

    sub-long/2addr v10, v4

    aput-wide v10, v1, v3

    const/4 v3, 0x6

    aget-wide v4, v7, v3

    sub-long v4, v16, v4

    aput-wide v4, v1, v3

    const/4 v3, 0x7

    aget-wide v4, v7, v3

    sub-long/2addr v12, v4

    aput-wide v12, v1, v3

    aget-wide v3, v7, v18

    sub-long/2addr v14, v3

    aput-wide v14, v1, v18

    aget-wide v3, v7, v19

    sub-long v3, p4, v3

    aput-wide v3, v1, v19

    aget-wide v3, v7, v20

    sub-long/2addr v8, v3

    aput-wide v8, v1, v20

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :goto_0
    iput-object v2, v0, Lo/wi$Application;->b:[J

    return-void
.end method

.method public e()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lo/wi$Application;->seltrace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method
