.class public final Lo/RA$ActionBar;
.super Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RA;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic d:Lo/RA;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/RA;)V
    .locals 0

    iput-object p1, p0, Lo/RA$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lo/RA$ActionBar;->d:Lo/RA;

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 42
    iget-object v0, p0, Lo/RA$ActionBar;->d:Lo/RA;

    invoke-virtual {v0}, Lo/RA;->ad_()Z

    .line 43
    iget-object v0, p0, Lo/RA$ActionBar;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    .line 44
    iget-object v0, p0, Lo/RA$ActionBar;->d:Lo/RA;

    invoke-virtual {v0}, Lo/RA;->I()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_0
    return-void
.end method
