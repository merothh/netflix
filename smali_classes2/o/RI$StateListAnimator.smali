.class public final Lo/RI$StateListAnimator;
.super Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RI;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic d:Lo/RI;


# direct methods
.method constructor <init>(Lo/RI;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lo/RI$StateListAnimator;->d:Lo/RI;

    iput-object p2, p0, Lo/RI$StateListAnimator;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 44
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 46
    iget-object v0, p0, Lo/RI$StateListAnimator;->d:Lo/RI;

    invoke-virtual {v0}, Lo/RI;->ad_()Z

    .line 47
    iget-object v0, p0, Lo/RI$StateListAnimator;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    .line 48
    iget-object v0, p0, Lo/RI$StateListAnimator;->d:Lo/RI;

    invoke-virtual {v0}, Lo/RI;->I()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_0
    return-void
.end method
