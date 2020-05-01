.class Lo/Ke$TaskDescription;
.super Lo/ParcelFormatException$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field private final b:Lo/Jg;

.field private i:Lo/WebHistoryItem;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lo/Jg;Lo/PatternMatcher;I)V
    .locals 2

    .line 77
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lo/ParcelFormatException$Activity;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lo/PatternMatcher;I)V

    .line 78
    iget-object p3, p0, Lo/Ke$TaskDescription;->itemView:Landroid/view/View;

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lo/Ke$TaskDescription;->a:Landroid/widget/FrameLayout;

    .line 79
    iput-object p2, p0, Lo/Ke$TaskDescription;->b:Lo/Jg;

    .line 80
    new-instance p2, Lo/WebHistoryItem;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/WebHistoryItem;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/Ke$TaskDescription;->i:Lo/WebHistoryItem;

    .line 81
    iget-object p1, p0, Lo/Ke$TaskDescription;->a:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lo/Ke$TaskDescription;->b:Lo/Jg;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object p1, p0, Lo/Ke$TaskDescription;->a:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lo/Ke$TaskDescription;->i:Lo/WebHistoryItem;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x2

    invoke-direct {p3, p4, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object p1, p0, Lo/Ke$TaskDescription;->i:Lo/WebHistoryItem;

    invoke-virtual {p1}, Lo/WebHistoryItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x11

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method


# virtual methods
.method a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Ky;Lo/AU;IZ)V
    .locals 1

    .line 87
    iget-object p2, p0, Lo/Ke$TaskDescription;->i:Lo/WebHistoryItem;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lo/WebHistoryItem;->setVisibility(I)V

    .line 88
    iget-object p2, p0, Lo/Ke$TaskDescription;->b:Lo/Jg;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lo/Jg;->setVisibility(I)V

    .line 89
    invoke-interface {p3}, Lo/AU;->b()Lcom/netflix/model/leafs/VideoInfo$KidsSummary;

    move-result-object p2

    invoke-interface {p2}, Lcom/netflix/model/leafs/VideoInfo$KidsSummary;->getId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 90
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    const-string v0, "SPY-17693: Missing id from kidsSummary"

    invoke-interface {p2, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object p2, p0, Lo/Ke$TaskDescription;->b:Lo/Jg;

    .line 95
    invoke-interface {p3}, Lo/AU;->b()Lcom/netflix/model/leafs/VideoInfo$KidsSummary;

    move-result-object v0

    invoke-virtual {p1, v0, p4}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lo/AR;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    .line 93
    invoke-virtual {p2, p3, p1, p4, p5}, Lo/Jg;->d(Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 102
    iget-object v0, p0, Lo/Ke$TaskDescription;->b:Lo/Jg;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/Jg;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lo/Ke$TaskDescription;->i:Lo/WebHistoryItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/WebHistoryItem;->setVisibility(I)V

    return-void
.end method
