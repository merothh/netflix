.class public Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity;
.super Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsActivity;
.source "BarkerPreReleaseDetailsActivity.java"


# instance fields
.field mylistReceiver:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity$MyListReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsActivity;-><init>()V

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity$MyListReceiver;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity$MyListReceiver;-><init>(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity;->mylistReceiver:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity$MyListReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity;->showSnackBar()V

    return-void
.end method

.method private showSnackBar()V
    .locals 3

    .prologue
    .line 57
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0802bd

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 60
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    .line 61
    const v2, 0x7f0f0127

    invoke-virtual {v0, v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 64
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 65
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 66
    return-void
.end method


# virtual methods
.method protected createPrimaryFrag()Landroid/app/Fragment;
    .locals 4

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "extra_is_movie"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->create(Ljava/lang/String;Z)Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity;->mylistReceiver:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity$MyListReceiver;

    const-string/jumbo v1, "com.netflix.mediaclient.mylist.intent.action.ADD"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerMovieDetailsActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method
