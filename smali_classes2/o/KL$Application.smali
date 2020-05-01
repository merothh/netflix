.class Lo/KL$Application;
.super Lo/KL$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final b:Lo/ResourceCursorTreeAdapter;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lo/ResourceCursorTreeAdapter;Lo/PatternMatcher;)V
    .locals 0

    .line 238
    invoke-direct {p0, p1, p2, p3}, Lo/KL$StateListAnimator;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;)V

    .line 239
    iput-object p2, p0, Lo/KL$Application;->b:Lo/ResourceCursorTreeAdapter;

    .line 240
    iget-object p1, p0, Lo/KL$Application;->b:Lo/ResourceCursorTreeAdapter;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Lo/ResourceCursorTreeAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method public c(Lo/Av;Lo/Ky;)Lorg/json/JSONObject;
    .locals 0

    .line 264
    invoke-super {p0, p1, p2}, Lo/KL$StateListAnimator;->c(Lo/Av;Lo/Ky;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public c(Lo/Ky;Lo/Av;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    .line 245
    invoke-super/range {p0 .. p5}, Lo/KL$StateListAnimator;->c(Lo/Ky;Lo/Av;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 246
    check-cast p2, Lo/AR;

    .line 247
    iget-object p1, p0, Lo/KL$Application;->b:Lo/ResourceCursorTreeAdapter;

    invoke-virtual {p0}, Lo/KL$Application;->k()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p3

    invoke-virtual {p0}, Lo/KL$Application;->getAdapterPosition()I

    move-result p5

    invoke-virtual {p1, p2, p3, p5, p4}, Lo/ResourceCursorTreeAdapter;->a(Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 252
    invoke-super {p0}, Lo/KL$StateListAnimator;->e()V

    .line 253
    iget-object v0, p0, Lo/KL$Application;->b:Lo/ResourceCursorTreeAdapter;

    invoke-virtual {v0}, Lo/ResourceCursorTreeAdapter;->i()V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lo/KL$Application;->a:Ljava/lang/String;

    return-void
.end method

.method public g()Z
    .locals 1

    .line 258
    iget-object v0, p0, Lo/KL$Application;->b:Lo/ResourceCursorTreeAdapter;

    invoke-virtual {v0}, Lo/ResourceCursorTreeAdapter;->m()Z

    move-result v0

    return v0
.end method
