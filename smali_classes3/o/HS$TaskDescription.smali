.class public final Lo/HS$TaskDescription;
.super Lo/FU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/HS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HS$TaskDescription$StateListAnimator;
    }
.end annotation


# static fields
.field public static final a:Lo/HS$TaskDescription$StateListAnimator;

.field static final synthetic e:[Lo/amT;


# instance fields
.field private b:Ljava/lang/Runnable;

.field private final c:Lo/aka;

.field private final j:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/HS$TaskDescription;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "imageView"

    const-string v4, "getImageView()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/HS$TaskDescription;->e:[Lo/amT;

    new-instance v0, Lo/HS$TaskDescription$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/HS$TaskDescription$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/HS$TaskDescription;->a:Lo/HS$TaskDescription$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lo/FU;-><init>()V

    .line 66
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/models/TitleTreatmentModel$Holder$titleDrawable$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/models/TitleTreatmentModel$Holder$titleDrawable$2;-><init>(Lo/HS$TaskDescription;)V

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lo/HS$TaskDescription;->c:Lo/aka;

    .line 80
    sget v0, Lo/GS$Dialog;->n:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/HS$TaskDescription;->j:Lo/ams;

    return-void
.end method

.method public static final synthetic a(Lo/HS$TaskDescription;Ljava/lang/Runnable;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lo/HS$TaskDescription;->b:Ljava/lang/Runnable;

    return-void
.end method

.method private final d()Lo/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lo/HS$TaskDescription;->c:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RelativeLayout;

    return-object v0
.end method

.method public static final synthetic e(Lo/HS$TaskDescription;)Lo/RelativeLayout;
    .locals 0

    .line 57
    invoke-direct {p0}, Lo/HS$TaskDescription;->d()Lo/RelativeLayout;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/HS$TaskDescription;->j:Lo/ams;

    sget-object v1, Lo/HS$TaskDescription;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 85
    invoke-virtual {p0}, Lo/HS$TaskDescription;->a()Lo/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/GridView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {p0}, Lo/HS$TaskDescription;->a()Lo/GridView;

    move-result-object v0

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lo/HS$TaskDescription;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lo/HS$TaskDescription;->g()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 91
    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, p0, Lo/HS$TaskDescription;->b:Ljava/lang/Runnable;

    .line 94
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {v0}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 95
    invoke-virtual {p0}, Lo/HS$TaskDescription;->a()Lo/GridView;

    move-result-object v0

    .line 96
    new-instance v3, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 97
    invoke-virtual {v3, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 98
    invoke-virtual {p1, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 99
    invoke-virtual {p1, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->b(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 100
    sget-object v1, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {p1, v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 95
    invoke-virtual {v0, p1}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 103
    :cond_3
    invoke-virtual {p0}, Lo/HS$TaskDescription;->a()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    new-instance p1, Lo/HS$TaskDescription$TaskDescription;

    invoke-direct {p1, p0, p2}, Lo/HS$TaskDescription$TaskDescription;-><init>(Lo/HS$TaskDescription;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lo/HS$TaskDescription;->b:Ljava/lang/Runnable;

    .line 120
    invoke-virtual {p0}, Lo/HS$TaskDescription;->g()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lo/HS$TaskDescription;->b:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
