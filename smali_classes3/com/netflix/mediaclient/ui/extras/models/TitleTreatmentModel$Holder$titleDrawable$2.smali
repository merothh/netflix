.class public final Lcom/netflix/mediaclient/ui/extras/models/TitleTreatmentModel$Holder$titleDrawable$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HS$TaskDescription;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/RelativeLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/HS$TaskDescription;


# direct methods
.method public constructor <init>(Lo/HS$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/models/TitleTreatmentModel$Holder$titleDrawable$2;->b:Lo/HS$TaskDescription;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Lo/RelativeLayout;
    .locals 3

    .line 67
    new-instance v0, Lo/RelativeLayout;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/models/TitleTreatmentModel$Holder$titleDrawable$2;->b:Lo/HS$TaskDescription;

    invoke-virtual {v1}, Lo/HS$TaskDescription;->a()Lo/GridView;

    move-result-object v1

    invoke-virtual {v1}, Lo/GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "imageView.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Lo/RelativeLayout;->b(Z)V

    .line 69
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/models/TitleTreatmentModel$Holder$titleDrawable$2;->b:Lo/HS$TaskDescription;

    invoke-virtual {v1}, Lo/HS$TaskDescription;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/GS$PendingIntent;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/RelativeLayout;->a(I)V

    .line 72
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/models/TitleTreatmentModel$Holder$titleDrawable$2;->b:Lo/HS$TaskDescription;

    invoke-virtual {v1}, Lo/HS$TaskDescription;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 73
    sget v2, Lo/GS$StateListAnimator;->d:I

    .line 71
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/content/Context;I)I

    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Lo/RelativeLayout;->b(I)V

    .line 76
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/models/TitleTreatmentModel$Holder$titleDrawable$2;->b:Lo/HS$TaskDescription;

    invoke-virtual {v1}, Lo/HS$TaskDescription;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/GS$ActionBar;->g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/RelativeLayout;->e(I)V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/extras/models/TitleTreatmentModel$Holder$titleDrawable$2;->d()Lo/RelativeLayout;

    move-result-object v0

    return-object v0
.end method
