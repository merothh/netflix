.class public final Lo/au$Application;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "RecyclerViewScrollPerformance"

    .line 22
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lo/au$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
    .locals 4

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->a:J

    .line 27
    new-instance v1, Lo/au;

    new-instance v2, Lcom/netflix/mediaclient/performance/impl/capture/recyclerview/RecyclerViewScrollPerformance$Companion$reportScrollFps$1;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/performance/impl/capture/recyclerview/RecyclerViewScrollPerformance$Companion$reportScrollFps$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;)V

    check-cast v2, Lo/alB;

    .line 30
    new-instance v3, Lcom/netflix/mediaclient/performance/impl/capture/recyclerview/RecyclerViewScrollPerformance$Companion$reportScrollFps$2;

    invoke-direct {v3, v0, p2}, Lcom/netflix/mediaclient/performance/impl/capture/recyclerview/RecyclerViewScrollPerformance$Companion$reportScrollFps$2;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Ljava/lang/String;)V

    check-cast v3, Lo/alS;

    .line 27
    invoke-direct {v1, p1, v2, v3}, Lo/au;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lo/alB;Lo/alS;)V

    return-void
.end method
