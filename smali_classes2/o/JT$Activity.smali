.class public final Lo/JT$Activity;
.super Lo/KL$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/JT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field private final b:Lo/Ll;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/Ll;Lo/PatternMatcher;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configProvider"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    move-object v0, p2

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, v0, p3}, Lo/KL$StateListAnimator;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;)V

    iput-object p2, p0, Lo/JT$Activity;->b:Lo/Ll;

    return-void
.end method


# virtual methods
.method public c(Lo/Ky;Lo/Av;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1

    const-string v0, "lomoContext"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceTrackingInfoHolder"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-super/range {p0 .. p5}, Lo/KL$StateListAnimator;->c(Lo/Ky;Lo/Av;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 108
    iget-object p1, p0, Lo/JT$Activity;->b:Lo/Ll;

    if-eqz p2, :cond_0

    .line 109
    check-cast p2, Lo/AB;

    .line 110
    invoke-virtual {p0}, Lo/JT$Activity;->k()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p5

    .line 108
    invoke-virtual {p1, p2, p5, p3, p4}, Lo/Ll;->a(Lo/AB;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V

    return-void

    .line 109
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.servicemgr.interface_.DownloadVideo"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lo/JT$Activity;->b:Lo/Ll;

    invoke-virtual {v0}, Lo/Ll;->m()Z

    move-result v0

    return v0
.end method
