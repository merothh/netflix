.class public final Lo/RD$ActionBar;
.super Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RD;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic b:Lo/RD;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/RD;)V
    .locals 0

    iput-object p1, p0, Lo/RD$ActionBar;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lo/RD$ActionBar;->b:Lo/RD;

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 20
    iget-object v0, p0, Lo/RD$ActionBar;->b:Lo/RD;

    invoke-virtual {v0}, Lo/RD;->ad_()Z

    .line 21
    iget-object v0, p0, Lo/RD$ActionBar;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    .line 22
    iget-object v0, p0, Lo/RD$ActionBar;->b:Lo/RD;

    invoke-virtual {v0}, Lo/RD;->I()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_0
    return-void
.end method
