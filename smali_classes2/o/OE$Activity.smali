.class public final Lo/OE$Activity;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# static fields
.field static final synthetic e:[Lo/amT;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lo/ams;

.field private c:Lcom/netflix/cl/model/TrackingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/OE$Activity;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "gridImage"

    const-string v4, "getGridImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/OE$Activity;->e:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    .line 28
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hl:I

    invoke-static {p0, v0}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/OE$Activity;->b:Lo/ams;

    .line 34
    invoke-direct {p0}, Lo/OE$Activity;->e()Lo/BaseAdapter;

    move-result-object v0

    new-instance v1, Lo/OE$Activity$4;

    invoke-direct {v1, p0, p1}, Lo/OE$Activity$4;-><init>(Lo/OE$Activity;Landroid/view/View;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic b(Lo/OE$Activity;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/OE$Activity;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c(Lo/OE$Activity;Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lo/OE$Activity;->d(Lcom/netflix/cl/model/TrackingInfo;)V

    return-void
.end method

.method public static final synthetic d(Lo/OE$Activity;)Lcom/netflix/cl/model/TrackingInfo;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/OE$Activity;->c:Lcom/netflix/cl/model/TrackingInfo;

    return-object p0
.end method

.method private final d(Lcom/netflix/cl/model/TrackingInfo;)V
    .locals 3

    .line 46
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 47
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    .line 48
    sget-object v2, Lcom/netflix/cl/model/AppView;->notificationLandingItem:Lcom/netflix/cl/model/AppView;

    .line 47
    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 50
    new-instance p1, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/ViewDetailsCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    const/4 v2, 0x1

    .line 46
    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    return-void
.end method

.method private final e()Lo/BaseAdapter;
    .locals 3

    iget-object v0, p0, Lo/OE$Activity;->b:Lo/ams;

    sget-object v1, Lo/OE$Activity;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    return-object v0
.end method


# virtual methods
.method public final b(Lo/OE;Ljava/lang/String;Ljava/lang/Integer;FII)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boxart"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lo/OE$Activity;->itemView:Landroid/view/View;

    if-eqz p3, :cond_0

    .line 65
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    int-to-float p6, p6

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float p6, p6, v0

    sub-float/2addr p3, p6

    int-to-float p5, p5

    mul-float p5, p5, v0

    sub-float/2addr p3, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p3, p5

    float-to-int p3, p3

    int-to-float p5, p3

    div-float/2addr p5, p4

    float-to-int p4, p5

    .line 68
    invoke-direct {p0}, Lo/OE$Activity;->e()Lo/BaseAdapter;

    move-result-object p5

    invoke-virtual {p5}, Lo/BaseAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    iput p3, p5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 69
    invoke-direct {p0}, Lo/OE$Activity;->e()Lo/BaseAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lo/BaseAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    :cond_0
    invoke-direct {p0}, Lo/OE$Activity;->e()Lo/BaseAdapter;

    move-result-object p3

    new-instance p4, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {p4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {p4, p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    sget-object p4, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {p2, p4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    invoke-virtual {p3, p2}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 73
    invoke-virtual {p1}, Lo/OE;->c()Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;->action()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/OE$Activity;->a:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lo/OE;->c()Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationActionTrackingInfo;

    move-result-object p1

    check-cast p1, Lo/zR;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lo/zR;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    iput-object p1, p0, Lo/OE$Activity;->c:Lcom/netflix/cl/model/TrackingInfo;

    return-void
.end method
