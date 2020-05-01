.class public final Lo/RB$ActionBar;
.super Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RB;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/RB;

.field final synthetic e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/RB;)V
    .locals 0

    iput-object p1, p0, Lo/RB$ActionBar;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lo/RB$ActionBar;->d:Lo/RB;

    .line 131
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 133
    iget-object v0, p0, Lo/RB$ActionBar;->d:Lo/RB;

    invoke-virtual {v0}, Lo/RB;->ad_()Z

    .line 134
    iget-object v0, p0, Lo/RB$ActionBar;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->invalidateOptionsMenu()V

    .line 135
    iget-object v0, p0, Lo/RB$ActionBar;->d:Lo/RB;

    invoke-virtual {v0}, Lo/RB;->I()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_0
    return-void
.end method
