.class public final Lo/Ll;
.super Lo/MenuInflater;
.source ""

# interfaces
.implements Lo/Ly$Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ll$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MenuInflater;",
        "Lo/Ly$Activity<",
        "Lo/AB;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lo/Ll$TaskDescription;

.field static final synthetic d:[Lo/amT;

# The value of this static final field might be set in the static constructor
.field private static final f:Ljava/lang/String; = "DownloadView"


# instance fields
.field private final a:Lo/ams;

.field private final c:Lo/ams;

.field private final e:Lo/ams;

.field private h:Lo/ResourceCursorAdapter;

.field private i:Lo/AB;

.field private j:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Ll;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "boxArtImageView"

    const-string v5, "getBoxArtImageView()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "downloadButton"

    const-string v5, "getDownloadButton()Lcom/netflix/mediaclient/ui/offline/DownloadButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "infoTextView"

    const-string v4, "getInfoTextView()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lo/Ll;->d:[Lo/amT;

    new-instance v0, Lo/Ll$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Ll$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Ll;->b:Lo/Ll$TaskDescription;

    const-string v0, "DownloadView"

    .line 37
    sput-object v0, Lo/Ll;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/Ll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/Ll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lo/MenuInflater;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->aS:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Ll;->a:Lo/ams;

    .line 29
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->fc:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Ll;->e:Lo/ams;

    .line 30
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->hS:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Ll;->c:Lo/ams;

    const/4 p2, 0x1

    .line 41
    invoke-virtual {p0, p2}, Lo/Ll;->setFocusable(Z)V

    .line 42
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->aq:I

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1, p3, v0}, Lo/MenuInflater;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    invoke-direct {p0}, Lo/Ll;->d()Lo/BaseAdapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Lo/BaseAdapter;->setPassActualScaleTypeToParent(Z)V

    .line 97
    const-class p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, p2}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 44
    move-object p2, p0

    check-cast p2, Lo/CY;

    new-instance p3, Lo/ResourceCursorAdapter;

    invoke-direct {p3, p1, p2}, Lo/ResourceCursorAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;)V

    iput-object p3, p0, Lo/Ll;->h:Lo/ResourceCursorAdapter;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 25
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Ll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/Ll;->c:Lo/ams;

    sget-object v1, Lo/Ll;->d:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final b()Lcom/netflix/mediaclient/ui/offline/DownloadButton;
    .locals 3

    iget-object v0, p0, Lo/Ll;->e:Lo/ams;

    sget-object v1, Lo/Ll;->d:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    return-object v0
.end method

.method private final d()Lo/BaseAdapter;
    .locals 3

    iget-object v0, p0, Lo/Ll;->a:Lo/ams;

    sget-object v1, Lo/Ll;->d:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    return-object v0
.end method


# virtual methods
.method public a(Lo/AB;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 54
    invoke-interface {p1}, Lo/AB;->getBoxshotUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(Lo/AB;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V
    .locals 4

    const-string p3, "video"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "trackingInfoHolder"

    invoke-static {p2, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lo/Ll;->i:Lo/AB;

    .line 65
    iput-object p2, p0, Lo/Ll;->j:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 67
    sget-object p3, Lo/amj;->c:Lo/amj;

    invoke-virtual {p0}, Lo/Ll;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->i:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "resources.getString(R.st\u2026.accesibility_play_video)"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Lo/AB;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {p3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p0, p3}, Lo/Ll;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0, p1}, Lo/Ll;->a(Lo/AB;)Ljava/lang/String;

    move-result-object p3

    .line 71
    move-object v1, p3

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    .line 72
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p3

    const-string p4, "image url is empty, DownloadView.update"

    invoke-interface {p3, p4}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-direct {p0}, Lo/Ll;->d()Lo/BaseAdapter;

    move-result-object v1

    new-instance v2, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v2, p3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->d(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p3

    invoke-virtual {v1, p3}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 77
    :goto_0
    iget-object p3, p0, Lo/Ll;->h:Lo/ResourceCursorAdapter;

    invoke-direct {p0}, Lo/Ll;->d()Lo/BaseAdapter;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    move-object v1, p1

    check-cast v1, Lo/AR;

    invoke-virtual {p3, p4, v1, p2}, Lo/ResourceCursorAdapter;->b(Landroid/view/View;Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 79
    invoke-direct {p0}, Lo/Ll;->a()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p0}, Lo/Ll;->getContext()Landroid/content/Context;

    move-result-object p3

    move-object p4, p1

    check-cast p4, Lo/AK;

    invoke-interface {p1}, Lo/AB;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-static {p3, p4, v1, v0}, Lo/aeE;->c(Landroid/content/Context;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0}, Lo/Ll;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 96
    const-class p3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p2, p3}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p2, :cond_3

    .line 81
    invoke-direct {p0}, Lo/Ll;->b()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object p3

    invoke-virtual {p0}, Lo/Ll;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setPlayContext(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 82
    invoke-direct {p0}, Lo/Ll;->b()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object p3

    check-cast p1, Lo/As;

    invoke-virtual {p3, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lo/As;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_3
    return-void
.end method

.method public synthetic c(Ljava/lang/Object;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V
    .locals 0

    .line 25
    check-cast p1, Lo/AB;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/Ll;->a(Lo/AB;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;IZ)V

    return-void
.end method

.method public m()Z
    .locals 1

    .line 92
    invoke-direct {p0}, Lo/Ll;->d()Lo/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/BaseAdapter;->g()Z

    move-result v0

    return v0
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 3

    .line 87
    iget-object v0, p0, Lo/Ll;->j:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->i:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    sget-object v1, Lo/Ll;->f:Ljava/lang/String;

    const/16 v2, -0x1c2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    :goto_0
    return-object v0
.end method
